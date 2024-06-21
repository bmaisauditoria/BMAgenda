unit frmRelContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Grids, DBGrids;

type
  TfrmRelConta = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    rdgOrdem: TRadioGroup;
    Label3: TLabel;
    chkCliente: TCheckBox;
    cmpCliente: TDBLookupComboBox;
    cmpCodCliente: TDBText;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbClienteClienteID: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    rdgServico: TRadioGroup;
    rdgConta: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    Function DiaSemana(idata:TDate):string;
    procedure rdgOrdemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelConta: TfrmRelConta;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas;

{$R *.DFM}

Function TfrmRelConta.DiaSemana(idata:TDate):string;
var dia:string;
var a:integer;
begin
    a:=DayOfWeek(idata);
    case a of
    1:dia:='';
    2:dia:='Seg';
    3:dia:='Ter';
    4:dia:='Qua';
    5:dia:='Qui';
    6:dia:='Sex';
    7:dia:='';
    end;
    result:=dia;
end;


procedure TfrmRelConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
end;

procedure TfrmRelConta.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;
end;

procedure TfrmRelConta.BitBtn2Click(Sender: TObject);
var iMes,iAno,iCliente,iDia,isemana,iHospital:integer;
var iLInhaC,iLinhaO,iClienteId,iLinhaS,iLinhaT,iTitulo:string;
var Ini,Fim:TDate;
var d,m,a:word;
begin
    iCliente:=dbClienteCliente.Value;
    Ini:=dtpIni.date;
    Fim:=dtpFim.date;

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and Agenda.Cliente=:Cli ';

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by Agenda.ClienteID,Agenda.Hospital,Agenda.Data';
    1:iLinhaO:='order by Agenda.Hospital,Agenda.Data';
    end;

    case rdgServico.ItemIndex of
    0:iLinhaS:='and (Agenda.Servico='+QuotedStr('P')+') ';
    1:iLinhaS:='and (Agenda.Servico='+QuotedStr('PS')+') ';
    2:iLinhaS:='';
    end;

    case rdgServico.ItemIndex of
    0:iTitulo:='Servico [P] - ';
    1:iTitulo:='Servico [PS] - ';
    2:iTitulo:='Todos Servicos - ';
    end;

    case rdgConta.ItemIndex of
    0:iLinhaT:='and (Agenda.DataConta is null) ';
    1:iLinhaT:='and (Agenda.DataConta is not null) ';
    2:iLinhaT:='';
    end;

    case rdgConta.ItemIndex of
    0:iTitulo:=iTitulo+'Contas Abertas ';
    1:iTitulo:=iTitulo+'Contas Fechadas ';
    2:iTitulo:=iTitulo+'Contas Abertas e Fechadas ';
    end;

     with dmRelatorio do
     begin
         qryConta.SQL.Clear;
         qryConta.SQL.Text:='Select Agenda.ClienteID, Agenda.Data, Agenda.Hospital, '+
                            '       Hospital.Nome, Hospital.Regiao, sum(Agenda.QtdContas) as QtdContas '+
                            'from Agenda INNER JOIN Hospital '+
                            '  ON Agenda.Hospital = Hospital.Hospital '+
                            'where (Agenda.FechaConta=1) and '+
                            '      (Data>=:Ini and Data<=:Fim)  '+
                             iLinhaC+iLinhaS+iLinhaT+
                            'group by Agenda.ClienteID,Agenda.Data,Agenda.Hospital,Hospital.Nome, Hospital.Regiao '+
                            iLinhaO;

         qryConta.ParamByName('Ini').asdate:=Ini;
         qryConta.ParamByName('Fim').asdate:=Fim;

         if not chkCliente.Checked then
            qryConta.ParamByName('Cli').Value:=iCliente;

         qryConta.Open;
         if qryConta.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryConta.Close;
            abort;
         end;

case rdgOrdem.ItemIndex of
0:begin //por Cliente/Hospital
        relConta.Close;
        relConta.SQL.Text:='Delete from relAgendaContas';
        relConta.Execute;
        relConta.SQL.Text:='Select * from relAgendaContas order by ClienteID,Regiao,Hospital';
        relConta.Open;

         qryConta.First;
         while not qryConta.Eof do
         begin
            iClienteID:=qryContaClienteID.value;
            while (not qryConta.eof) and (qryContaClienteId.value=iClienteID) do
            begin
                iHospital:=qryContaHospital.value;
                relConta.Insert;
                relContaClienteID.value:=qryContaClienteID.Value;
                relContaHospital.value:=qryContaNome.Value;
                relContaRegiao.value:=qryContaRegiaoTexto.Value;
                while (not qryConta.eof) and (qryContaClienteId.value=iClienteID) and
                      (qryContaHospital.value=iHospital) do
                begin
                    iDia:=DayOfTheMonth(qryContaData.value);
                    DecodeDate(qryContaData.value,a,m,d);
                    iSemana:=WeekOfTheMonth(qryContaData.value);
                    case iDia of
                    1:relContaD1.value:=relContaD1.value+qryContaQtdContas.value;
                    2:relContaD2.value:=relContaD2.value+qryContaQtdContas.value;
                    3:relContaD3.value:=relContaD3.value+qryContaQtdContas.value;
                    4:relContaD4.value:=relContaD4.value+qryContaQtdContas.value;
                    5:relContaD5.value:=relContaD5.value+qryContaQtdContas.value;
                    6:relContaD6.value:=relContaD6.value+qryContaQtdContas.value;
                    7:relContaD7.value:=relContaD7.value+qryContaQtdContas.value;
                    8:relContaD8.value:=relContaD8.value+qryContaQtdContas.value;
                    9:relContaD9.value:=relContaD9.value+qryContaQtdContas.value;
                    10:relContaD10.value:=relContaD10.value+qryContaQtdContas.value;
                    11:relContaD11.value:=relContaD11.value+qryContaQtdContas.value;
                    12:relContaD12.value:=relContaD12.value+qryContaQtdContas.value;
                    13:relContaD13.value:=relContaD13.value+qryContaQtdContas.value;
                    14:relContaD14.value:=relContaD14.value+qryContaQtdContas.value;
                    15:relContaD15.value:=relContaD15.value+qryContaQtdContas.value;
                    16:relContaD16.value:=relContaD16.value+qryContaQtdContas.value;
                    17:relContaD17.value:=relContaD17.value+qryContaQtdContas.value;
                    18:relContaD18.value:=relContaD18.value+qryContaQtdContas.value;
                    19:relContaD19.value:=relContaD19.value+qryContaQtdContas.value;
                    20:relContaD20.value:=relContaD20.value+qryContaQtdContas.value;
                    21:relContaD21.value:=relContaD21.value+qryContaQtdContas.value;
                    22:relContaD22.value:=relContaD22.value+qryContaQtdContas.value;
                    23:relContaD23.value:=relContaD23.value+qryContaQtdContas.value;
                    24:relContaD24.value:=relContaD24.value+qryContaQtdContas.value;
                    25:relContaD25.value:=relContaD25.value+qryContaQtdContas.value;
                    26:relContaD26.value:=relContaD26.value+qryContaQtdContas.value;
                    27:relContaD27.value:=relContaD27.value+qryContaQtdContas.value;
                    28:relContaD28.value:=relContaD28.value+qryContaQtdContas.value;
                    29:relContaD29.value:=relContaD29.value+qryContaQtdContas.value;
                    30:relContaD30.value:=relContaD30.value+qryContaQtdContas.value;
                    31:relContaD31.value:=relContaD31.value+qryContaQtdContas.value;
                    end;
                    case iSemana of
                    1:relContaS1.value:=relContaS1.value+qryContaQtdContas.value;
                    2:relContaS2.value:=relContaS2.value+qryContaQtdContas.value;
                    3:relContaS3.value:=relContaS3.value+qryContaQtdContas.value;
                    4:relContaS4.value:=relContaS4.value+qryContaQtdContas.value;
                    5:relContaS5.value:=relContaS5.value+qryContaQtdContas.value;
                    6:relContaS5.value:=relContaS6.value+qryContaQtdContas.value;
                    end;
                    qryConta.Next;
                end;
            end;
            relConta.Post;
         end;
end;
1:begin //por Hospital
        relConta.Close;
        relConta.SQL.Text:='Delete from relAgendaContas';
        relConta.Execute;
        relConta.SQL.Text:='Select * from relAgendaContas order by Regiao,Hospital';
        relConta.Open;

         qryConta.First;
         while not qryConta.Eof do
         begin
            iHospital:=qryContaHospital.value;
            relConta.Insert;
            relContaHospital.value:=qryContaNome.Value;
            relContaRegiao.value:=qryContaRegiaoTexto.Value;
            relContaClienteID.value:='*';
            while (not qryConta.eof) and (qryContaHospital.value=iHospital) do
            begin
                iDia:=DayOfTheMonth(qryContaData.value);
                iSemana:=WeekOfTheMonth(qryContaData.value);
                case iDia of
                1:relContaD1.value:=relContaD1.value+qryContaQtdContas.value;
                2:relContaD2.value:=relContaD2.value+qryContaQtdContas.value;
                3:relContaD3.value:=relContaD3.value+qryContaQtdContas.value;
                4:relContaD4.value:=relContaD4.value+qryContaQtdContas.value;
                5:relContaD5.value:=relContaD5.value+qryContaQtdContas.value;
                6:relContaD6.value:=relContaD6.value+qryContaQtdContas.value;
                7:relContaD7.value:=relContaD7.value+qryContaQtdContas.value;
                8:relContaD8.value:=relContaD8.value+qryContaQtdContas.value;
                9:relContaD9.value:=relContaD9.value+qryContaQtdContas.value;
                10:relContaD10.value:=relContaD10.value+qryContaQtdContas.value;
                11:relContaD11.value:=relContaD11.value+qryContaQtdContas.value;
                12:relContaD12.value:=relContaD12.value+qryContaQtdContas.value;
                13:relContaD13.value:=relContaD13.value+qryContaQtdContas.value;
                14:relContaD14.value:=relContaD14.value+qryContaQtdContas.value;
                15:relContaD15.value:=relContaD15.value+qryContaQtdContas.value;
                16:relContaD16.value:=relContaD16.value+qryContaQtdContas.value;
                17:relContaD17.value:=relContaD17.value+qryContaQtdContas.value;
                18:relContaD18.value:=relContaD18.value+qryContaQtdContas.value;
                19:relContaD19.value:=relContaD19.value+qryContaQtdContas.value;
                20:relContaD20.value:=relContaD20.value+qryContaQtdContas.value;
                21:relContaD21.value:=relContaD21.value+qryContaQtdContas.value;
                22:relContaD22.value:=relContaD22.value+qryContaQtdContas.value;
                23:relContaD23.value:=relContaD23.value+qryContaQtdContas.value;
                24:relContaD24.value:=relContaD24.value+qryContaQtdContas.value;
                25:relContaD25.value:=relContaD25.value+qryContaQtdContas.value;
                26:relContaD26.value:=relContaD26.value+qryContaQtdContas.value;
                27:relContaD27.value:=relContaD27.value+qryContaQtdContas.value;
                28:relContaD28.value:=relContaD28.value+qryContaQtdContas.value;
                29:relContaD29.value:=relContaD29.value+qryContaQtdContas.value;
                30:relContaD30.value:=relContaD30.value+qryContaQtdContas.value;
                31:relContaD31.value:=relContaD31.value+qryContaQtdContas.value;
                end;
                case iSemana of
                1:relContaS1.value:=relContaS1.value+qryContaQtdContas.value;
                2:relContaS2.value:=relContaS2.value+qryContaQtdContas.value;
                3:relContaS3.value:=relContaS3.value+qryContaQtdContas.value;
                4:relContaS4.value:=relContaS4.value+qryContaQtdContas.value;
                5:relContaS5.value:=relContaS5.value+qryContaQtdContas.value;
                6:relContaS5.value:=relContaS6.value+qryContaQtdContas.value;
                end;
                qryConta.Next;
            end;
            relConta.Post;
         end;
end;
end;

         relConta.Refresh;
         relConta.First;

         frmMenu.rvBBAgenda.SetParam('D1',DiaSemana(dtpIni.date));
         frmMenu.rvBBAgenda.SetParam('D2',DiaSemana(dtpIni.date+1));
         frmMenu.rvBBAgenda.SetParam('D3',DiaSemana(dtpIni.date+2));
         frmMenu.rvBBAgenda.SetParam('D4',DiaSemana(dtpIni.date+3));
         frmMenu.rvBBAgenda.SetParam('D5',DiaSemana(dtpIni.date+4));
         frmMenu.rvBBAgenda.SetParam('D6',DiaSemana(dtpIni.date+5));
         frmMenu.rvBBAgenda.SetParam('D7',DiaSemana(dtpIni.date+6));
         frmMenu.rvBBAgenda.SetParam('D8',DiaSemana(dtpIni.date+7));
         frmMenu.rvBBAgenda.SetParam('D9',DiaSemana(dtpIni.date+8));
         frmMenu.rvBBAgenda.SetParam('D10',DiaSemana(dtpIni.date+9));
         frmMenu.rvBBAgenda.SetParam('D11',DiaSemana(dtpIni.date+10));
         frmMenu.rvBBAgenda.SetParam('D12',DiaSemana(dtpIni.date+11));
         frmMenu.rvBBAgenda.SetParam('D13',DiaSemana(dtpIni.date+12));
         frmMenu.rvBBAgenda.SetParam('D14',DiaSemana(dtpIni.date+13));
         frmMenu.rvBBAgenda.SetParam('D15',DiaSemana(dtpIni.date+14));
         frmMenu.rvBBAgenda.SetParam('D16',DiaSemana(dtpIni.date+15));
         frmMenu.rvBBAgenda.SetParam('D17',DiaSemana(dtpIni.date+16));
         frmMenu.rvBBAgenda.SetParam('D18',DiaSemana(dtpIni.date+17));
         frmMenu.rvBBAgenda.SetParam('D19',DiaSemana(dtpIni.date+18));
         frmMenu.rvBBAgenda.SetParam('D20',DiaSemana(dtpIni.date+19));
         frmMenu.rvBBAgenda.SetParam('D21',DiaSemana(dtpIni.date+20));
         frmMenu.rvBBAgenda.SetParam('D22',DiaSemana(dtpIni.date+21));
         frmMenu.rvBBAgenda.SetParam('D23',DiaSemana(dtpIni.date+22));
         frmMenu.rvBBAgenda.SetParam('D24',DiaSemana(dtpIni.date+23));
         frmMenu.rvBBAgenda.SetParam('D25',DiaSemana(dtpIni.date+24));
         frmMenu.rvBBAgenda.SetParam('D26',DiaSemana(dtpIni.date+25));
         frmMenu.rvBBAgenda.SetParam('D27',DiaSemana(dtpIni.date+26));
         frmMenu.rvBBAgenda.SetParam('D28',DiaSemana(dtpIni.date+27));
         if (dtpIni.date+28)<=dtpFim.date then
             frmMenu.rvBBAgenda.SetParam('D29',DiaSemana(dtpIni.date+28));
         if (dtpIni.date+29)<=dtpFim.date then
             frmMenu.rvBBAgenda.SetParam('D30',DiaSemana(dtpIni.date+29));
         if (dtpIni.date+30)<=dtpFim.date then
             frmMenu.rvBBAgenda.SetParam('D31',DiaSemana(dtpIni.date+30));

        case rdgOrdem.ItemIndex of
        0:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Fechamento de Contas por Cliente');
            frmMenu.rvBBAgenda.SetParam('Titulo1',cmbMes.Text+'/'+cmbAno.Text);
            frmMenu.rvBBAgenda.SelectReport('relContaCli',true);
        end;
        1:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Fechamento de Contas por Hospital');
            frmMenu.rvBBAgenda.SetParam('Titulo1',cmbMes.Text+'/'+cmbAno.Text);
            frmMenu.rvBBAgenda.SelectReport('relContaH',true);
        end;
        end;
        frmMenu.rvBBAgenda.SetParam('Titulo2',iTitulo);
        frmMenu.rvBBAgenda.Execute;
     end;

end;

procedure TfrmRelConta.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpCliente.Visible:=false;
       cmpCodCliente.visible:=false;
    end
    else
    begin
       cmpCliente.Visible:=true;
       cmpCodCliente.Visible:=true;
    end;

end;

procedure TfrmRelConta.cmbMesChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);
end;

procedure TfrmRelConta.cmbAnoChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);
end;

procedure TfrmRelConta.rdgOrdemClick(Sender: TObject);
begin
    if rdgOrdem.ItemIndex=1 then
    begin
        chkCliente.Checked:=true;
        chkClienteClick(sender);
        chkCliente.Visible:=false
    end
    else
        chkCliente.Visible:=true;
end;

end.
