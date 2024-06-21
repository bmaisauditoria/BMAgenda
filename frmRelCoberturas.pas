unit frmRelCoberturas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Grids, DBGrids;

type
  TfrmRelCobertura = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    dbCliente: TMSTable;
    dbClienteClienteID: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dsCliente: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    chkCliente: TCheckBox;
    cmpCliente: TDBLookupComboBox;
    chkHospital: TCheckBox;
    cmpHospital: TDBLookupComboBox;
    cmpCodHospital: TDBText;
    cmpCodCliente: TDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    Function DiaSemana(idata:TDate):string;
    procedure FormCreate(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCobertura: TfrmRelCobertura;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas;

{$R *.DFM}

Function TfrmRelCobertura.DiaSemana(idata:TDate):string;
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


procedure TfrmRelCobertura.BitBtn2Click(Sender: TObject);
var iHospital,iCliente:integer;
var Ini,Fim,iDataini,iDatafim:TDate;
var iLinhaC,iLinhaH,iClienteID,iHospitalNome:string;
begin
    Ini:=dtpIni.date;
    Fim:=dtpFim.date;
    iCliente:=dbClienteCliente.Value;
    iClienteID:=dbClienteClienteID.value;
    iHospital:=dbHospitalHospital.Value;
    iHospitalNome:=dbHospitalNome.value;


    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and (EscalaDiaria.Cliente=:Cli) and (EscalaDiaria.Cliente is not null) ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and (EscalaDiaria.Hospital=:Hosp) and (EscalaDiaria.Hospital is not null)  ';

     with dmRelatorio do
     begin
         qryCobertura.SQL.Clear;
         qryCobertura.SQL.Text:='Select Ferias.Auditor, Ferias.Tipo, Ferias.DataInicio, Ferias.DataFim, '+
                                '       EscalaDiaria.Cliente, EscalaDiaria.Hospital, EscalaDiaria.ClienteID, EscalaDiaria.Escala, '+
                                '       EscalaDiaria.Servico, EscalaDiaria.DataCobertura, EscalaDiaria.Auditor as Auditor_1,  '+
                                '       Hospital.Nome  '+
                                'FROM Ferias '+
                                'INNER JOIN  EscalaDiaria '+
                                '  ON (Ferias.Cobertura = EscalaDiaria.Cobertura) and '+
                                '     (Ferias.DataInicio=EscalaDiaria.DataInicio) and   '+
                                '     (Ferias.Auditor<>EscalaDiaria.Auditor) '+iLinhaC+iLinhaH   +
                                'INNER JOIN  Hospital ON EscalaDiaria.Hospital = Hospital.Hospital '+
                                'where ((Ferias.DataInicio>=:Ini) and (Ferias.DataInicio<=:Fim)) or '+
                                '      ((Ferias.DataFim>=:Ini) and (Ferias.DataFim<=:Fim)) '+
                                'order by Hospital.Nome, EscalaDiaria.ClienteID ';

         qryCobertura.ParamByName('Ini').asdate:=Ini;
         qryCobertura.ParamByName('Fim').asdate:=Fim;

         if not chkCliente.Checked then
            qryCobertura.ParamByName('Cli').Value:=iCliente;

         if not chkHospital.Checked then
            qryCobertura.ParamByName('Hosp').Value:=iHospital;

         qryCobertura.Open;
         if qryCobertura.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryCobertura.Close;
            abort;
         end;

       frmMenu.rvBBAgenda.SetParam('Titulo','Coberturas');
       frmMenu.rvBBAgenda.SetParam('Competencia','Periodo de'+DateToStr(Ini)+' a '+DateToStr(Fim));
       if not chkCliente.Checked then
            frmMenu.rvBBAgenda.SetParam('Cliente',iClienteID)
       else
            frmMenu.rvBBAgenda.SetParam('Cliente','');

       if not chkHospital.Checked then
            frmMenu.rvBBAgenda.SetParam('Hospital',iHospitalNome)
       else
            frmMenu.rvBBAgenda.SetParam('Hospital','');

       frmMenu.rvBBAgenda.SelectReport('relCobertura',true);
       frmMenu.rvBBAgenda.Execute;
     end;

end;

procedure TfrmRelCobertura.cmbMesChange(Sender: TObject);
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

procedure TfrmRelCobertura.cmbAnoChange(Sender: TObject);
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

procedure TfrmRelCobertura.FormCreate(Sender: TObject);
var a,m,d:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

procedure TfrmRelCobertura.chkClienteClick(Sender: TObject);
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

procedure TfrmRelCobertura.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospital.Visible:=false;
       cmpCodHospital.visible:=false;
    end
    else
    begin
       cmpHospital.Visible:=true;
       cmpCodHospital.Visible:=true;
    end;

end;

procedure TfrmRelCobertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbHospital.close;

end;

procedure TfrmRelCobertura.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;

end;

end.
