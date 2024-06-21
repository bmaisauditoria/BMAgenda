unit frmRelEscalaAlteracao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Grids, DBGrids;

type
  TfrmRelEscalaAltera = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    rdgTipo: TRadioGroup;
    dbCliente: TMSTable;
    dbClienteClienteID: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dsCliente: TDataSource;
    dsHospital: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    chkCliente: TCheckBox;
    cmpCliente: TDBLookupComboBox;
    cmpCodCliente: TDBText;
    cmpCodHospital: TDBText;
    chkHospital: TCheckBox;
    cmpHospital: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    Function DiaSemana(idata:TDate):string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkHospitalClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEscalaAltera: TfrmRelEscalaAltera;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas;

{$R *.DFM}

Function TfrmRelEscalaAltera.DiaSemana(idata:TDate):string;
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


procedure TfrmRelEscalaAltera.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;
end;

procedure TfrmRelEscalaAltera.BitBtn2Click(Sender: TObject);
var iHospital,iCliente:integer;
var Ini,Fim,iDataini,iDatafim:TDate;
var iLinhaD,iLinhaO,iLinhaC,iLinhaH,iClienteID,iHospitalNome:string;
begin
    iCliente:=dbClienteCliente.Value;
    iClienteID:=dbClienteClienteID.value;
    iHospital:=dbHospitalHospital.Value;
    iHospitalNome:=dbHospitalNome.value;

    Ini:=dtpIni.date;
    Fim:=dtpFim.date;
    case rdgTipo.ItemIndex of
    0:ilinhaD:=' (DataInicio>=:Ini and DataInicio<=:Fim) ';
    1:ilinhaD:=' (DataFim>=:Ini and DataFim<=:Fim) ';
    end;

    case rdgTipo.ItemIndex of
    0:ilinhaO:='order by Nome, ClienteID, DataInicio ';
    1:ilinhaO:='order by Nome, ClienteID, DataFim ';
    end;
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
         qryEscalaIni.SQL.Clear;
         qryEscalaIni.SQL.Text:='Select * from EscalaDiaria '+
                                'INNER JOIN  Hospital ON EscalaDiaria.Hospital = Hospital.Hospital '+
                                'where Cobertura=0  and '+iLinhaD+iLinhaC+iLinhaH+
                                 iLinhaO;

         qryEscalaIni.ParamByName('Ini').asdate:=Ini;
         qryEscalaIni.ParamByName('Fim').asdate:=Fim;

         if not chkCliente.Checked then
            qryEscalaIni.ParamByName('Cli').Value:=iCliente;

         if not chkHospital.Checked then
            qryEscalaIni.ParamByName('Hosp').Value:=iHospital;

         qryEscalaIni.Open;

         if qryEscalaIni.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEscalaIni.Close;
            abort;
         end;

       frmMenu.rvBBAgenda.SetParam('Titulo','Alterações na Escala');
       case rdgTipo.ItemIndex of
       0:frmMenu.rvBBAgenda.SetParam('Titulo1','Escalas INICIANDO');
       1:frmMenu.rvBBAgenda.SetParam('Titulo1','Escalas FINALIZANDO');
       end;
       frmMenu.rvBBAgenda.SetParam('Competencia','Periodo de'+DateToStr(Ini)+' a '+DateToStr(Fim));

       if not chkCliente.Checked then
            frmMenu.rvBBAgenda.SetParam('Cliente',iClienteID)
       else
            frmMenu.rvBBAgenda.SetParam('Cliente','');

       if not chkHospital.Checked then
            frmMenu.rvBBAgenda.SetParam('Hospital',iHospitalNome)
       else
            frmMenu.rvBBAgenda.SetParam('Hospital','');

       frmMenu.rvBBAgenda.SelectReport('relEscalaAltera',true);
       frmMenu.rvBBAgenda.Execute;
     end;

end;

procedure TfrmRelEscalaAltera.cmbMesChange(Sender: TObject);
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

procedure TfrmRelEscalaAltera.cmbAnoChange(Sender: TObject);
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

procedure TfrmRelEscalaAltera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbHospital.close;

end;

procedure TfrmRelEscalaAltera.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelEscalaAltera.chkClienteClick(Sender: TObject);
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

end.
