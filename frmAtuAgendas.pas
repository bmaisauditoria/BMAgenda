unit frmAtuAgendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, ExtCtrls, Grids, DBGrids,
  StdCtrls, Buttons, DBCtrls, ToolWin, ComCtrls;

type
  TfrmAtuAgenda = class(TForm)
    dbAgenda: TMSQuery;
    dbAgendaData: TDateTimeField;
    dbAgendaCliente: TIntegerField;
    dbAgendaHospital: TIntegerField;
    dbAgendaServico: TStringField;
    dbAgendaAuditor: TIntegerField;
    dbAgendaEnfermeiro: TIntegerField;
    dbAgendaAdministrativo: TIntegerField;
    dbAgendaFechaConta: TWordField;
    dbAgendaQtdContas: TIntegerField;
    dbAgendaDataConta: TDateTimeField;
    dbAgendaClienteID: TStringField;
    dbAgendaObservacao: TStringField;
    dbAgendaDataInclusao: TDateTimeField;
    dbAgendaUsuario: TStringField;
    dsAgenda: TDataSource;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorFone: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorEmail: TStringField;
    dbAuditorNascimento: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroFone: TStringField;
    dbEnfermeiroFone1: TStringField;
    dbEnfermeiroFone2: TStringField;
    dbEnfermeiroNascimento: TDateTimeField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroUsuario: TStringField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dsEnfermeiro: TDataSource;
    dsAuditor: TDataSource;
    tabAge: TTabControl;
    Panel1: TPanel;
    grdAgenda: TDBGrid;
    cmbAtual: TCoolBar;
    cmbMedico: TDBLookupComboBox;
    cmbEnfermeiro: TDBLookupComboBox;
    Label74: TLabel;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dsHospital: TDataSource;
    dbAgendaHospitalNome: TStringField;
    Label1: TLabel;
    cmbNovo: TCoolBar;
    cmbMedicoNovo: TDBLookupComboBox;
    cmbEnfermeiroNovo: TDBLookupComboBox;
    cmdRel: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    BitBtn2: TBitBtn;
    chkHospital: TCheckBox;
    cmbHospital: TDBLookupComboBox;
    chkServico: TCheckBox;
    cmbServico: TDBLookupComboBox;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoValorizadoTexto: TStringField;
    dbServicoVinculado: TStringField;
    dsServico: TDataSource;
    dbCliente: TMSQuery;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteDataFim: TDateTimeField;
    dbClienteClienteID: TStringField;
    dsCliente: TDataSource;
    chkCliente: TCheckBox;
    cmbCliente: TDBLookupComboBox;
    dbAuditorUsuario: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tabAgeChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dtpIniChange(Sender: TObject);
    procedure dtpFimChange(Sender: TObject);
    procedure cmbMedicoClick(Sender: TObject);
    procedure cmbEnfermeiroClick(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkHospitalClick(Sender: TObject);
    procedure chkServicoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
  private
    iAnterior,iNovo,iAtual:integer;
  public
    { Public declarations }
  end;

var
  frmAtuAgenda: TfrmAtuAgenda;

implementation

uses frmPrincipal;
{$R *.dfm}

procedure TfrmAtuAgenda.FormShow(Sender: TObject);
begin
    dbHospital.OPen;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbServico.Open;
    dbCliente.Open;

    tabAge.TabIndex:=0;
    dtpIni.date:=date;
    dtpFim.date:=date;

    cmbMedico.KeyValue:=dbAuditorAuditor.value;
    cmbEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.value;
    cmbMedicoNovo.KeyValue:=dbAuditorAuditor.value;
    cmbEnfermeiroNovo.KeyValue:=dbEnfermeiroEnfermeiro.value;
    cmbHospital.KeyValue:=dbHospitalHospital.value;
    cmbServico.KeyValue:=dbServicoServico.Value;
    cmbCliente.KeyValue:=dbClienteCliente.value;
end;

procedure TfrmAtuAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbServico.Close;
    dbCliente.Close;
end;

procedure TfrmAtuAgenda.tabAgeChange(Sender: TObject);
begin
    dbAgenda.Close;
    case tabAge.TabIndex of
    0:begin
        cmbMedico.Visible:=true;
        cmbEnfermeiro.Visible:=false;
        cmbMedicoNovo.Visible:=true;
        cmbEnfermeiroNovo.Visible:=false;
      end;
    1:begin
        cmbMedico.Visible:=false;
        cmbEnfermeiro.Visible:=true;
        cmbMedicoNovo.Visible:=false;
        cmbEnfermeiroNovo.Visible:=true;
      end;
    end;
end;

procedure TfrmAtuAgenda.BitBtn2Click(Sender: TObject);
var iIni,iFim:TDate;
var d,m,a:word;
var iLinhaH,iLinhaS,iServico,iLinhaC:string;
var iHospital,icliente:integer;
begin
    iIni:=dtpIni.date;
    DecodeDate(iIni,a,m,d);
    iFim:=dtpFim.date;
    DecodeDate(iFim,a,m,d);
    iHospital:=cmbHospital.KeyValue;
    iServico:=cmbServico.KeyValue;
    icliente:=cmbCliente.keyvalue;
    if iIni>iFim then
    begin
        ShowMessage('Data inicial maior que final');
        abort;
    end;
    iLinhaH:='';
    iLinhaS:='';
    iLinhaC:='';
    if chkHospital.Checked=false then
        ilinhaH:=' and Hospital=:iHosp ';
    if chkServico.Checked=false then
        ilinhaS:=' and Servico=:iServ ';
    if chkCliente.Checked=false then
        ilinhaC:=' and Cliente=:iCli ';

    case tabAge.TabIndex of
    0:begin
        dbAgenda.Close;
        dbAgenda.SQL.Text:='Select * from Agenda '+
                           'where (Auditor=:iAud) and '+
                           '      (Data>=:iIni) and (Data<=:iFim) '+iLinhaH+iLinhaS+iLinhaC+
                           'order by Data, ClienteID, Hospital,Servico ';
        dbAgenda.ParamByName('iAud').Value:=cmbMedico.KeyValue;
        dbAgenda.ParamByName('iIni').asdate:=iIni;
        dbAgenda.ParamByName('iFim').asdate:=iFim;
        if chkHospital.Checked=false then
            dbAgenda.ParamByName('iHosp').value:=iHospital;
        if chkServico.Checked=false then
            dbAgenda.ParamByName('iServ').value:=iServico;
        if chkCliente.Checked=false then
            dbAgenda.ParamByName('iCli').value:=iCliente;
        dbAgenda.Open;
      end;
    1:begin
        dbAgenda.Close;
        dbAgenda.SQL.Text:='Select * from Agenda '+
                           'where (Enfermeiro=:iEnf) and '+
                           '      (Data>=:iIni) and (Data<=:iFim) '+iLinhaH+iLinhaS+iLinhaC+
                           'order by Data, ClienteID, Hospital, Servico ';
        dbAgenda.ParamByName('iEnf').Value:=cmbEnfermeiro.KeyValue;
        dbAgenda.ParamByName('iIni').asdate:=iIni;
        dbAgenda.ParamByName('iFim').asdate:=iFim;
        if chkHospital.Checked=false then
            dbAgenda.ParamByName('iHosp').value:=iHospital;
        if chkServico.Checked=false then
            dbAgenda.ParamByName('iServ').value:=iServico;
        if chkCliente.Checked=false then
            dbAgenda.ParamByName('iCli').value:=iCliente;
        dbAgenda.Open;
    end;
    end;
    if dbAgenda.RecordCount=0 then
        ShowMessage('Profissional não possui agendamentos no periodo');

end;

procedure TfrmAtuAgenda.dtpIniChange(Sender: TObject);
begin
    dbAgenda.Close;
end;

procedure TfrmAtuAgenda.dtpFimChange(Sender: TObject);
begin
    dbAgenda.Close;
end;

procedure TfrmAtuAgenda.cmbMedicoClick(Sender: TObject);
begin
    dbAgenda.Close;
end;

procedure TfrmAtuAgenda.cmbEnfermeiroClick(Sender: TObject);
begin
    dbAgenda.Close;
end;

procedure TfrmAtuAgenda.cmdRelClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a alteração da Agenda','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then
        abort;

    case tabAge.TabIndex of
    0:begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            dbAgenda.Edit;
            dbAgendaAuditor.value:=cmbMedicoNovo.KeyValue;
            dbAgenda.Post;
            dbAgenda.Next;
        end;
    end;
    1:begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            dbAgenda.Edit;
            dbAgendaEnfermeiro.value:=cmbEnfermeiroNovo.KeyValue;
            dbAgenda.Post;
            dbAgenda.Next;
        end;
    end;
    end;
    dbAgenda.Close;
    ShowMessage('Agenda alterada com sucesso');
end;

procedure TfrmAtuAgenda.BitBtn1Click(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão dos itens seleciondos da Agenda','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then
        abort;

    case tabAge.TabIndex of
    0:begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            if (dbAgendaEnfermeiro.value=0) and (dbAgendaAdministrativo.value=0) then
                dbAgenda.Delete
            else
            begin
                dbAgenda.Edit;
                dbAgendaAuditor.value:=0;
                dbAgenda.Post;
                dbAgenda.Next;
            end;
        end;
    end;
    1:begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            if (dbAgendaAuditor.value=0) and (dbAgendaAdministrativo.value=0) then
                dbAgenda.Delete
            else
            begin
                dbAgenda.Edit;
                dbAgendaEnfermeiro.value:=cmbEnfermeiroNovo.KeyValue;
                dbAgenda.Post;
                dbAgenda.Next;
            end;                
        end;
    end;
    end;
    dbAgenda.Close;
    ShowMessage('Agenda alterada com sucesso');

end;

procedure TfrmAtuAgenda.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoValorizado.value=true;
end;

procedure TfrmAtuAgenda.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
       cmbHospital.Visible:=false
    else
       cmbHospital.Visible:=true;
    dbAgenda.Close;
end;

procedure TfrmAtuAgenda.chkServicoClick(Sender: TObject);
begin
    if chkServico.Checked then
       cmbServico.Visible:=false
    else
       cmbServico.Visible:=true;
    dbAgenda.Close;

end;

procedure TfrmAtuAgenda.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
       cmbCliente.Visible:=false
    else
       cmbCliente.Visible:=true;
    dbAgenda.Close;

end;

end.
