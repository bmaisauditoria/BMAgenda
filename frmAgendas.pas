unit frmAgendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, dbcgrids, StdCtrls, Mask,
  DBCtrls, ComCtrls,  Grids, DBGrids, ExtCtrls,
  Buttons, ImgList, ChromeTabs, Menus;

type
  TfrmAgenda = class(TForm)
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbSeg: TMSQuery;
    dsSeg: TDataSource;
    dbCliente: TMSQuery;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteDataFim: TDateTimeField;
    dbClienteClienteID: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorEmail: TStringField;
    dbAuditorDataFim: TDateTimeField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dsCliente: TDataSource;
    Panel7: TPanel;
    calendar: TMonthCalendar;
    Panel9: TPanel;
    Label4: TLabel;
    dtpIni: TDateTimePicker;
    cmdPeriodo: TBitBtn;
    dbTer: TMSQuery;
    dbQua: TMSQuery;
    dbQui: TMSQuery;
    dbSex: TMSQuery;
    dsTer: TDataSource;
    dsQua: TDataSource;
    dsQui: TDataSource;
    dsSex: TDataSource;
    dbSegData: TDateTimeField;
    dbSegCliente: TIntegerField;
    dbSegServico: TStringField;
    dbSegAuditor: TIntegerField;
    dbSegEnfermeiro: TIntegerField;
    dbSegAdministrativo: TIntegerField;
    dbSegQtdContas: TIntegerField;
    dbSegDataConta: TDateTimeField;
    dbSegClienteID: TStringField;
    dbSegNome: TStringField;
    dbSegRegiao: TIntegerField;
    dbSegServicoTexto: TStringField;
    dbSegAuditorNome: TStringField;
    dbSegEnfermeiroNome: TStringField;
    dbSegRegiaoNome: TStringField;
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmemail: TStringField;
    dbAdmDataFim: TDateTimeField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbSegAdmNome: TStringField;
    dbTerData: TDateTimeField;
    dbTerCliente: TIntegerField;
    dbTerServico: TStringField;
    dbTerAuditor: TIntegerField;
    dbTerEnfermeiro: TIntegerField;
    dbTerAdministrativo: TIntegerField;
    dbTerQtdContas: TIntegerField;
    dbTerDataConta: TDateTimeField;
    dbTerClienteID: TStringField;
    dbTerNome: TStringField;
    dbTerRegiao: TIntegerField;
    dbTerServicoTexto: TStringField;
    dbTerAuditorNome: TStringField;
    dbTerEnfermeiroNome: TStringField;
    dbTerRegiaoNome: TStringField;
    dbTerAdmNome: TStringField;
    dbQuaData: TDateTimeField;
    dbQuaCliente: TIntegerField;
    dbQuaServico: TStringField;
    dbQuaAuditor: TIntegerField;
    dbQuaEnfermeiro: TIntegerField;
    dbQuaAdministrativo: TIntegerField;
    dbQuaQtdContas: TIntegerField;
    dbQuaDataConta: TDateTimeField;
    dbQuaClienteID: TStringField;
    dbQuaNome: TStringField;
    dbQuaRegiao: TIntegerField;
    dbQuaServicoTexto: TStringField;
    dbQuaAuditorNome: TStringField;
    dbQuaEnfermeiroNome: TStringField;
    dbQuaRegiaoNome: TStringField;
    dbQuaAdmNome: TStringField;
    dbQuiData: TDateTimeField;
    dbQuiCliente: TIntegerField;
    dbQuiServico: TStringField;
    dbQuiAuditor: TIntegerField;
    dbQuiEnfermeiro: TIntegerField;
    dbQuiAdministrativo: TIntegerField;
    dbQuiQtdContas: TIntegerField;
    dbQuiDataConta: TDateTimeField;
    dbQuiClienteID: TStringField;
    dbQuiNome: TStringField;
    dbQuiRegiao: TIntegerField;
    dbQuiServicoTexto: TStringField;
    dbQuiAuditorNome: TStringField;
    dbQuiEnfermeiroNome: TStringField;
    dbQuiRegiaoNome: TStringField;
    dbQuiAdmNome: TStringField;
    dbSexData: TDateTimeField;
    dbSexCliente: TIntegerField;
    dbSexServico: TStringField;
    dbSexAuditor: TIntegerField;
    dbSexEnfermeiro: TIntegerField;
    dbSexAdministrativo: TIntegerField;
    dbSexQtdContas: TIntegerField;
    dbSexDataConta: TDateTimeField;
    dbSexClienteID: TStringField;
    dbSexNome: TStringField;
    dbSexRegiao: TIntegerField;
    dbSexServicoTexto: TStringField;
    dbSexAuditorNome: TStringField;
    dbSexEnfermeiroNome: TStringField;
    dbSexRegiaoNome: TStringField;
    dbSexAdmNome: TStringField;
    qryClienteok: TMSQuery;
    ImageList1: TImageList;
    DtpFim: TLabel;
    dbSegHospital: TIntegerField;
    dbSegHospitalNome: TStringField;
    dbTerHospital: TIntegerField;
    dbQuaHospital: TIntegerField;
    dbQuiHospital: TIntegerField;
    dbSexHospital: TIntegerField;
    dbTerHospitalNome: TStringField;
    dbQuaHospitalNome: TStringField;
    dbQuiHospitalNome: TStringField;
    dbSexHospitalNome: TStringField;
    tabClienteold: TTabControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    lblSeg: TLabel;
    grdSeg: TDBGrid;
    Panel5: TPanel;
    lblQua: TLabel;
    grdQua: TDBGrid;
    Panel3: TPanel;
    lblSex: TLabel;
    grdSex: TDBGrid;
    Panel4: TPanel;
    lblTer: TLabel;
    grdTer: TDBGrid;
    Panel8: TPanel;
    lblQui: TLabel;
    grdQui: TDBGrid;
    dbSegHospital_1: TIntegerField;
    dbSegCidade: TStringField;
    dbSegUF: TStringField;
    dbSegCNPJ: TStringField;
    dbSegAuditorado: TBooleanField;
    dbSegClienteBusca: TStringField;
    rdgAgenda: TRadioGroup;
    dbTerClienteBusca: TStringField;
    dbQuaClienteBusca: TStringField;
    dbQuiClienteBusca: TStringField;
    dbSexClienteBusca: TStringField;
    pnlHospital: TPanel;
    Label1: TLabel;
    cmbHospital: TDBLookupComboBox;
    dsHospital: TDataSource;
    dsAuditor: TDataSource;
    dsEnfermeiro: TDataSource;
    dsAdm: TDataSource;
    chkHospital: TCheckBox;
    pnlMedico: TPanel;
    Label2: TLabel;
    cmbMedico: TDBLookupComboBox;
    chkMedico: TCheckBox;
    pnlEnfermeiro: TPanel;
    Label3: TLabel;
    cmbEnfermeiro: TDBLookupComboBox;
    chkEnfermeiro: TCheckBox;
    pnlAdm: TPanel;
    Label5: TLabel;
    cmbAdm: TDBLookupComboBox;
    chkAdm: TCheckBox;
    qryClienteokClienteID: TStringField;
    qryClienteokqtd: TIntegerField;
    tabCliente: TChromeTabs;
    dbServicoValorizado: TBooleanField;
    Panel10: TPanel;
    chkCliente: TCheckBox;
    chkMed: TCheckBox;
    chkEnf: TCheckBox;
    chkAdm1: TCheckBox;
    Label6: TLabel;
    dbEscala: TMSQuery;
    dbEscalaCliente: TIntegerField;
    dbEscalaHospital: TIntegerField;
    dbEscalaTipo: TStringField;
    dbEscalaAuditor: TIntegerField;
    dbEscalaServico: TStringField;
    dbEscalaClienteID: TStringField;
    dbEscalaDataInclusao: TDateTimeField;
    dbEscalaUsuario: TStringField;
    qryAgendaOk: TMSQuery;
    qryAgendaOkClienteID: TStringField;
    qryAgendaOkQtd: TIntegerField;
    relAgenda: TBitBtn;
    cmdEmail: TBitBtn;
    relContas: TBitBtn;
    relMedInativo: TBitBtn;
    relEnfInativo: TBitBtn;
    relAdmInativo: TBitBtn;
    relHospitalInativo: TBitBtn;
    dbSegObservacao: TStringField;
    dbTerObservacao: TStringField;
    dbQuaObservacao: TStringField;
    dbQuiObservacao: TStringField;
    dbSexObservacao: TStringField;
    dbSegUsuario: TStringField;
    dbSegDataInclusao: TDateTimeField;
    dbTerUsuario: TStringField;
    dbTerDataInclusao: TDateTimeField;
    dbQuaUsuario: TStringField;
    dbQuaDataInclusao: TDateTimeField;
    dbQuiUsuario: TStringField;
    dbQuiDataInclusao: TDateTimeField;
    dbSexUsuario: TStringField;
    dbSexDataInclusao: TDateTimeField;
    dbFerias: TMSQuery;
    dbFeriasAuditor: TIntegerField;
    dbFeriasTipo: TStringField;
    dbFeriasDataInicio: TDateTimeField;
    dbFeriasDataFim: TDateTimeField;
    dbFeriasUsuario: TStringField;
    dbFeriasDataInclusao: TDateTimeField;
    dbFeriasObs: TStringField;
    dbFeriasCobertura: TIntegerField;
    dsFerias: TDataSource;
    dbEscalaEscala: TIntegerField;
    dbEscalaDataInicio: TDateTimeField;
    dbEscalaDataFim: TDateTimeField;
    Panel14: TPanel;
    cmdNovo2: TBitBtn;
    cmdGrava2: TBitBtn;
    cmdExclui2: TBitBtn;
    Panel11: TPanel;
    cmdNovo3: TBitBtn;
    cmdGrava3: TBitBtn;
    cmdExclui3: TBitBtn;
    Panel12: TPanel;
    cmdNovo4: TBitBtn;
    cmdGrava4: TBitBtn;
    cmdExclui4: TBitBtn;
    Panel13: TPanel;
    cmdNovo5: TBitBtn;
    cmdGrava5: TBitBtn;
    cmdExclui5: TBitBtn;
    Panel15: TPanel;
    cmdNovo6: TBitBtn;
    cmdGrava6: TBitBtn;
    cmdExclui6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    popLimparA2: TPopupMenu;
    LimparA2: TMenuItem;
    popLimparA3: TPopupMenu;
    LimparA3: TMenuItem;
    LimparA4: TMenuItem;
    popLimparA5: TPopupMenu;
    LimparA5: TMenuItem;
    popLimparA6: TPopupMenu;
    LimparA6: TMenuItem;
    popLimparA4: TPopupMenu;
    dbSegFechaConta: TWordField;
    dbTerFechaConta: TWordField;
    dbQuaFechaConta: TWordField;
    dbQuiFechaConta: TWordField;
    dbSexFechaConta: TWordField;
    dbCobertura: TMSQuery;
    dbCoberturaEscala: TIntegerField;
    dbCoberturaCliente: TIntegerField;
    dbCoberturaHospital: TIntegerField;
    dbCoberturaTipo: TStringField;
    dbCoberturaServico: TStringField;
    dbCoberturaDataInicio: TDateTimeField;
    dbCoberturaAuditor: TIntegerField;
    dbCoberturaDataFim: TDateTimeField;
    dbCoberturaClienteID: TStringField;
    dbCoberturaCobertura: TIntegerField;
    dbCoberturaDataInclusao: TDateTimeField;
    dbCoberturaUsuario: TStringField;
    dbCoberturaMedicoNome: TStringField;
    dbCoberturaDataCobertura: TDateTimeField;
    dbCoberturaUsuarioC: TStringField;
    dbCoberturaHospitalNome: TStringField;
    dsCobertura: TDataSource;
    dbSegAdmLocal: TStringField;
    dbSegAdmPeriodo: TStringField;
    dbSegQtdContasP: TIntegerField;
    dbSegUsuarioI: TStringField;
    dbSegDataAlteracao: TDateTimeField;
    dbTerAdmLocal: TStringField;
    dbTerAdmPeriodo: TStringField;
    dbTerQtdContasP: TIntegerField;
    dbTerUsuarioI: TStringField;
    dbTerDataAlteracao: TDateTimeField;
    dbQuaAdmLocal: TStringField;
    dbQuaAdmPeriodo: TStringField;
    dbQuaQtdContasP: TIntegerField;
    dbQuaUsuarioI: TStringField;
    dbQuaDataAlteracao: TDateTimeField;
    dbQuiAdmLocal: TStringField;
    dbQuiAdmPeriodo: TStringField;
    dbQuiQtdContasP: TIntegerField;
    dbQuiUsuarioI: TStringField;
    dbQuiDataAlteracao: TDateTimeField;
    dbSexAdmLocal: TStringField;
    dbSexAdmPeriodo: TStringField;
    dbSexQtdContasP: TIntegerField;
    dbSexUsuarioI: TStringField;
    dbSexDataAlteracao: TDateTimeField;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dbSegFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure MontaPagina;
    procedure AtualizaPagina;
    procedure Atualiza;
    procedure Semana(idata:Tdate);
    procedure rdgAgendaClick(Sender: TObject);
    procedure dbTerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbQuaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbQuiFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbSexFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure chkHospitalClick(Sender: TObject);
    procedure chkMedicoClick(Sender: TObject);
    procedure chkAdmClick(Sender: TObject);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure cmdPeriodoClick(Sender: TObject);
    procedure grdSegDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdTerDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdQuaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdQuiDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdSexDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkClienteClick(Sender: TObject);
    procedure chkMedClick(Sender: TObject);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkEnfClick(Sender: TObject);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkAdm1Click(Sender: TObject);
    procedure dbAdmFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbSegServicoChange(Sender: TField);
    procedure dbTerServicoChange(Sender: TField);
    procedure dbQuaServicoChange(Sender: TField);
    procedure dbQuiServicoChange(Sender: TField);
    procedure dbSexServicoChange(Sender: TField);
    procedure tabClienteClick(Sender: TObject);
    procedure dbSegAfterPost(DataSet: TDataSet);
    procedure dbSegAfterDelete(DataSet: TDataSet);
    procedure dbTerAfterDelete(DataSet: TDataSet);
    procedure dbTerAfterPost(DataSet: TDataSet);
    procedure dbQuaAfterDelete(DataSet: TDataSet);
    procedure dbQuaAfterPost(DataSet: TDataSet);
    procedure dbQuiAfterDelete(DataSet: TDataSet);
    procedure dbQuiAfterPost(DataSet: TDataSet);
    procedure dbSexAfterDelete(DataSet: TDataSet);
    procedure dbSexAfterPost(DataSet: TDataSet);
    procedure relAgendaClick(Sender: TObject);
    procedure cmdEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure relContasClick(Sender: TObject);
    procedure dbSegQtdContasChange(Sender: TField);
    procedure dbTerQtdContasChange(Sender: TField);
    procedure dbQuaQtdContasChange(Sender: TField);
    procedure dbQuiQtdContasChange(Sender: TField);
    procedure dbSexQtdContasChange(Sender: TField);
    procedure relMedInativoClick(Sender: TObject);
    procedure relEnfInativoClick(Sender: TObject);
    procedure relAdmInativoClick(Sender: TObject);
    procedure relHospitalInativoClick(Sender: TObject);
    procedure dbSegBeforePost(DataSet: TDataSet);
    procedure dbTerBeforePost(DataSet: TDataSet);
    procedure dbQuaBeforePost(DataSet: TDataSet);
    procedure dbQuiBeforePost(DataSet: TDataSet);
    procedure dbSexBeforePost(DataSet: TDataSet);
    procedure cmdNovo2Click(Sender: TObject);
    procedure cmdGrava2Click(Sender: TObject);
    procedure cmdExclui2Click(Sender: TObject);
    procedure cmdNovo3Click(Sender: TObject);
    procedure cmdGrava3Click(Sender: TObject);
    procedure cmdExclui3Click(Sender: TObject);
    procedure cmdNovo4Click(Sender: TObject);
    procedure cmdGrava4Click(Sender: TObject);
    procedure cmdExclui4Click(Sender: TObject);
    procedure cmdNovo5Click(Sender: TObject);
    procedure cmdGrava5Click(Sender: TObject);
    procedure cmdExclui5Click(Sender: TObject);
    procedure cmdNovo6Click(Sender: TObject);
    procedure cmdGrava6Click(Sender: TObject);
    procedure cmdExclui6Click(Sender: TObject);
    procedure dsTerStateChange(Sender: TObject);
    procedure dsQuaStateChange(Sender: TObject);
    procedure dsQuiStateChange(Sender: TObject);
    procedure dsSexStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbAdmClick(Sender: TObject);
    procedure cmbEnfermeiroClick(Sender: TObject);
    procedure cmbHospitalClick(Sender: TObject);
    procedure cmbMedicoClick(Sender: TObject);
    procedure grdTerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSexKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSegKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSegKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdTerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSexKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbSegBeforeDelete(DataSet: TDataSet);
    procedure dbTerBeforeDelete(DataSet: TDataSet);
    procedure dbQuaBeforeDelete(DataSet: TDataSet);
    procedure dbQuiBeforeDelete(DataSet: TDataSet);
    procedure dbSexBeforeDelete(DataSet: TDataSet);
    procedure dbSexBeforeEdit(DataSet: TDataSet);
    procedure dbQuiBeforeEdit(DataSet: TDataSet);
    procedure dbQuaBeforeEdit(DataSet: TDataSet);
    procedure dbTerBeforeEdit(DataSet: TDataSet);
    procedure dbSegBeforeEdit(DataSet: TDataSet);
    procedure dsSegStateChange(Sender: TObject);
    procedure LimparA2Click(Sender: TObject);
    procedure LimparA3Click(Sender: TObject);
    procedure LimparA4Click(Sender: TObject);
    procedure LimparA5Click(Sender: TObject);
    procedure LimparA6Click(Sender: TObject);
    procedure dbSegFechaContaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbSegFechaContaSetText(Sender: TField; const Text: String);
    procedure dbTerFechaContaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbTerFechaContaSetText(Sender: TField; const Text: String);
    procedure dbQuaFechaContaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbQuaFechaContaSetText(Sender: TField; const Text: String);
    procedure dbQuiFechaContaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbQuiFechaContaSetText(Sender: TField; const Text: String);
    procedure dbSexFechaContaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbSexFechaContaSetText(Sender: TField; const Text: String);
    procedure BitBtn3Click(Sender: TObject);
  private
    itottab:integer;
  public
    iData: TDate;
    iCliente:integer;
    iClienteID:string;
end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

uses frmPrincipal, frmRelAgenda, frmAgendaemail, frmRelContas,
  dmRelatorios, frmAgendaNovos, frmRelFechaEnf;

procedure TfrmAgenda.Atualiza;
begin
    dbSeg.Refresh;
    dsSegStateChange(dbSeg);

    dbTer.Refresh;
    dsTerStateChange(dbTer);

    dbQua.Refresh;
    dsQuaStateChange(dbQua);

    dbQui.Refresh;
    dsQuiStateChange(dbQui);

    dbSex.Refresh;
    dsSexStateChange(dbSex);
end;

procedure TfrmAgenda.MontaPagina;
var i,t:integer;
begin
    qryClienteok.SQL.Text:='Select  ClienteID, count(Cliente) as qtd '+
                           'from Agenda '+
                           'where DataConta is null  and '+
                           '      Data>=:Ini and Data<=:Fim '+
                           'group by clienteID '+
                           'order by clienteId ';
    qryClienteok.ParamByName('Ini').asdate:=dtpIni.date;
    qryClienteok.ParamByName('Fim').asdate:=dtpIni.date+4;
    qryClienteok.Open;

    tabCliente.Tabs.Clear;
    tabCliente.LookAndFeel.Tabs.Active.Font.UseDefaultFont:=true;
    tabCliente.LookAndFeel.Tabs.NotActive.Font.UseDefaultFont:=true;
    tabCliente.LookAndFeel.Tabs.DefaultFont.Name:='Arial Narrow';
    tabCliente.LookAndFeel.Tabs.DefaultFont.Size:=8;
    dbCliente.First;
    i:=0;
    while not dbCliente.eof do
    begin
        tabCliente.Tabs.Add;
        tabCliente.tabs[i].Caption:=dbClienteClienteID.value;
        tabCliente.Tabs[i].ImageIndex:=1;
        if qryClienteOk.Active then
            if qryClienteok.Locate('ClienteID',dbClienteClienteID.value,[]) then
                if qryClienteOkQtd.value>0 then
                    tabCliente.Tabs[i].ImageIndex:=0;

        i:=i+1;
        dbCliente.Next;
    end;
    itottab:=i;
    tabCliente.ActiveTabIndex:=0;
end;

procedure TfrmAgenda.AtualizaPagina;
var i:integer;
begin
    i:=tabCliente.ActiveTabIndex;
    qryClienteok.refresh;
    if qryClienteOk.Active then
        if qryClienteok.Locate('ClienteID',tabcliente.tabs[i].Caption,[]) then
            if qryClienteOkQtd.value>0 then
                tabCliente.Tabs[i].ImageIndex:=0
            else
                tabCliente.Tabs[i].ImageIndex:=1
        else
           tabCliente.Tabs[i].ImageIndex:=1
end;


procedure TfrmAgenda.Semana(idata:Tdate);
var i:integer;
begin
    i:=DayOfWeek(idata);
    case i of
    1:DtpIni.date:=idata+1;
    2:DtpIni.date:=idata;
    3:DtpIni.date:=idata-1;
    4:DtpIni.date:=idata-2;
    5:DtpIni.date:=idata-3;
    6:DtpIni.date:=idata-4;
    7:DtpIni.date:=idata-5;
    end;

    DtpFim.Caption:=DateToStr(DtpIni.Date+4);

    lblSeg.Caption:='Segunda '+DateToStr(dtpIni.Date);
    lblTer.Caption:='Terça '+DateToStr(dtpIni.Date+1);
    lblQua.Caption:='Quarta '+DateToStr(dtpIni.Date+2);
    lblQui.Caption:='Quinta '+DateToStr(dtpIni.Date+3);
    lblSex.Caption:='Sexta '+DateToStr(dtpIni.Date+4);

    dbSeg.SQL.Text:='Select * from Agenda, Hospital '+
                     'where Agenda.Hospital=Hospital.Hospital and '+
                     'Data=:iData '+
                     'order by Cliente,Hospital.Nome';
    dbSeg.ParamByName('iData').asdate:=DtpIni.date;
    dbSeg.Open;

    dbTer.SQL.Text:='Select * from Agenda, Hospital '+
                     'where Agenda.Hospital=Hospital.Hospital and '+
                     'Data=:iData '+
                     'order by Cliente,Hospital.Nome';
    dbTer.ParamByName('iData').asdate:=DtpIni.date+1;
    dbTer.Open;

    dbQua.SQL.Text:='Select * from Agenda, Hospital '+
                     'where Agenda.Hospital=Hospital.Hospital and '+
                     'Data=:iData '+
                     'order by Cliente,Hospital.Nome';
    dbQua.ParamByName('iData').asdate:=DtpIni.date+2;
    dbQua.Open;

    dbQui.SQL.Text:='Select * from Agenda, Hospital '+
                     'where Agenda.Hospital=Hospital.Hospital and '+
                     'Data=:iData '+
                     'order by Cliente,Hospital.Nome';
     dbQui.ParamByName('iData').asdate:=DtpIni.date+3;
     dbQui.Open;

     dbSex.SQL.Text:='Select * from Agenda, Hospital '+
                     'where Agenda.Hospital=Hospital.Hospital and '+
                     'Data=:iData '+
                     'order by Cliente,Hospital.Nome';
    dbSex.ParamByName('iData').asdate:=DtpIni.date+4;
    dbSex.Open;
end;

procedure TfrmAgenda.FormShow(Sender: TObject);
var i:integer;
var idata:Tdate;
begin
    dbCliente.Open;
    dbHospital.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbAdm.Open;
    dbRegiao.Open;
    dbServico.Open;
    dbFerias.Open;
    dbCobertura.Open;

    dbEscala.SQL.Text:='Select * from EscalaDiaria '+
                       'order by Cliente,Hospital,Servico,Tipo,DataInicio desc ';
    dbEscala.Open;

    Semana(date);
    MontaPagina;
    Atualiza;

    Calendar.Date:=date;
    calendar.Refresh;

    rdgAgenda.ItemIndex:=0;
    rdgAgendaClick(sender);
    cmbHospital.KeyValue:=dbHospitalHospital.value;
    cmbMedico.KeyValue:=dbAuditorAuditor.value;
    cmbEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.value;
    cmbAdm.KeyValue:=dbAdmAdministrativo.value;

    chkCliente.Checked:=true;
    chkMed.Checked:=true;
    chkEnf.Checked:=true;
    chkAdm1.Checked:=true;

    frmAgenda.Top:=0;
end;

procedure TfrmAgenda.dbSegFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icli,itab:integer;
begin
    case rdgAgenda.ItemIndex of
    0:begin
        if dbCliente.Active then
            accept:=dbSegClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    end;
    1:if chkHospital.checked then
        accept:=dbSegHospital.value=cmbHospital.keyvalue
      else
        accept:=true;
    2:if chkMedico.checked then
        accept:=dbSegAuditor.value=cmbMedico.keyvalue
      else
        accept:=true;
    3:if chkEnfermeiro.checked then
        accept:=dbSegEnfermeiro.value=cmbEnfermeiro.keyvalue
      else
        accept:=true;
    4:if chkAdm.checked then
        accept:=dbSegAdministrativo.value=cmbAdm.keyvalue
      else
        accept:=true;
    end;
end;

procedure TfrmAgenda.rdgAgendaClick(Sender: TObject);
begin
    case rdgAgenda.ItemIndex of
    0:begin   //Cliente
        MontaPagina;
        pnlHospital.Visible:=false;
        pnlMedico.Visible:=false;
        pnlEnfermeiro.Visible:=false;
        pnlAdm.Visible:=false;
        grdSeg.Columns[0].Visible:=false;
        dbSeg.IndexFieldNames:='Cliente,Nome';
        dbSeg.Refresh;
        grdTer.Columns[0].Visible:=false;
        dbTer.IndexFieldNames:='Cliente,Nome';
        dbTer.Refresh;
        grdQua.Columns[0].Visible:=false;
        dbQua.IndexFieldNames:='Cliente,Nome';
        dbQua.Refresh;
        grdQui.Columns[0].Visible:=false;
        dbQui.IndexFieldNames:='Cliente,Nome';
        dbQui.Refresh;
        grdSex.Columns[0].Visible:=false;
        dbSex.IndexFieldNames:='Cliente,Nome';
        dbSex.Refresh;
    end;
    1:begin   //Hospital
        tabCliente.Tabs.Clear;
        pnlHospital.Visible:=true;
        pnlMedico.Visible:=false;
        pnlEnfermeiro.Visible:=false;
        pnlAdm.Visible:=false;
        grdSeg.Columns[0].Visible:=true;
        dbSeg.IndexFieldNames:='Nome,Cliente';
        dbSeg.Refresh;
        grdTer.Columns[0].Visible:=true;
        dbTer.IndexFieldNames:='Nome,Cliente';
        dbTer.Refresh;
        grdQua.Columns[0].Visible:=true;
        dbQua.IndexFieldNames:='Nome,Cliente';
        dbQua.Refresh;
        grdQui.Columns[0].Visible:=true;
        dbQui.IndexFieldNames:='Nome,Cliente';
        dbQui.Refresh;
        grdSex.Columns[0].Visible:=true;
        dbSex.IndexFieldNames:='Nome,Cliente';
        dbSex.Refresh;
    end;
    2:begin   //Medico
        tabCliente.Tabs.Clear;
        pnlHospital.Visible:=false;
        pnlMedico.Visible:=true;
        pnlEnfermeiro.Visible:=false;
        pnlAdm.Visible:=false;
        grdSeg.Columns[0].Visible:=true;
        dbSeg.IndexFieldNames:='Auditor,Cliente,Nome';
        dbSeg.Refresh;
        grdTer.Columns[0].Visible:=true;
        dbTer.IndexFieldNames:='Auditor,Cliente,Nome';
        dbTer.Refresh;
        grdQua.Columns[0].Visible:=true;
        dbQua.IndexFieldNames:='Auditor,Cliente,Nome';
        dbQua.Refresh;
        grdQui.Columns[0].Visible:=true;
        dbQui.IndexFieldNames:='Auditor,Cliente,Nome';
        dbQui.Refresh;
        grdSex.Columns[0].Visible:=true;
        dbSex.IndexFieldNames:='Auditor,Cliente,Nome';
        dbSex.Refresh;
    end;
    3:begin   //Enfermeiro
        tabCliente.Tabs.Clear;
        pnlHospital.Visible:=false;
        pnlMedico.Visible:=false;
        pnlEnfermeiro.Visible:=true;
        pnlAdm.Visible:=false;
        grdSeg.Columns[0].Visible:=true;
        dbSeg.IndexFieldNames:='Enfermeiro,Cliente,Nome';
        dbSeg.Refresh;
        grdTer.Columns[0].Visible:=true;
        dbTer.IndexFieldNames:='Enfermeiro,Cliente,Nome';
        dbTer.Refresh;
        grdQua.Columns[0].Visible:=true;
        dbQua.IndexFieldNames:='Enfermeiro,Cliente,Nome';
        dbQua.Refresh;
        grdQui.Columns[0].Visible:=true;
        dbQui.IndexFieldNames:='Enfermeiro,Cliente,Nome';
        dbQui.Refresh;
        grdSex.Columns[0].Visible:=true;
        dbSex.IndexFieldNames:='Enfermeiro,Cliente,Nome';
        dbSex.Refresh;
    end;
    4:begin   //Adm
        tabCliente.Tabs.Clear;
        pnlHospital.Visible:=false;
        pnlMedico.Visible:=false;
        pnlEnfermeiro.Visible:=false;
        pnlAdm.Visible:=true;
        grdSeg.Columns[0].Visible:=true;
        dbSeg.IndexFieldNames:='Administrativo,Cliente,Nome';
        dbSeg.Refresh;
        grdTer.Columns[0].Visible:=true;
        dbTer.IndexFieldNames:='Administrativo,Cliente,Nome';
        dbTer.Refresh;
        grdQua.Columns[0].Visible:=true;
        dbQua.IndexFieldNames:='Administrativo,Cliente,Nome';
        dbQua.Refresh;
        grdQui.Columns[0].Visible:=true;
        dbQui.IndexFieldNames:='Administrativo,Cliente,Nome';
        dbQui.Refresh;
        grdSex.Columns[0].Visible:=true;
        dbSex.IndexFieldNames:='Administrativo,Cliente,Nome';
        dbSex.Refresh;
    end;
    end;
end;

procedure TfrmAgenda.dbTerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icli,itab:integer;
begin
    case rdgAgenda.ItemIndex of
    0:begin
        if dbCliente.Active then
            accept:=dbTerClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    end;
    1:if chkHospital.checked then
        accept:=dbTerHospital.value=cmbHospital.keyvalue
      else
        accept:=true;
    2:if chkMedico.checked then
        accept:=dbTerAuditor.value=cmbMedico.keyvalue
      else
        accept:=true;
    3:if chkEnfermeiro.checked then
        accept:=dbTerEnfermeiro.value=cmbEnfermeiro.keyvalue
      else
        accept:=true;
    4:if chkAdm.checked then
        accept:=dbTerAdministrativo.value=cmbAdm.keyvalue
      else
        accept:=true;
    end;

end;

procedure TfrmAgenda.dbQuaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icli,itab:integer;
begin
    case rdgAgenda.ItemIndex of
    0:begin
        if dbCliente.Active then
            accept:=dbQuaClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    end;
    1:if chkHospital.checked then
        accept:=dbQuaHospital.value=cmbHospital.keyvalue
      else
        accept:=true;
    2:if chkMedico.checked then
        accept:=dbQuaAuditor.value=cmbMedico.keyvalue
      else
        accept:=true;
    3:if chkEnfermeiro.checked then
        accept:=dbQuaEnfermeiro.value=cmbEnfermeiro.keyvalue
      else
        accept:=true;
    4:if chkAdm.checked then
        accept:=dbQuaAdministrativo.value=cmbAdm.keyvalue
      else
        accept:=true;
    end;
end;

procedure TfrmAgenda.dbQuiFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icli,itab:integer;
begin
    case rdgAgenda.ItemIndex of
    0:begin
        if dbCliente.Active then
            accept:=dbQuiClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    end;
    1:if chkHospital.checked then
        accept:=dbQuiHospital.value=cmbHospital.keyvalue
      else
        accept:=true;
    2:if chkMedico.checked then
        accept:=dbQuiAuditor.value=cmbMedico.keyvalue
      else
        accept:=true;
    3:if chkEnfermeiro.checked then
        accept:=dbQuiEnfermeiro.value=cmbEnfermeiro.keyvalue
      else
        accept:=true;
    4:if chkAdm.checked then
        accept:=dbQuiAdministrativo.value=cmbAdm.keyvalue
      else
        accept:=true;
    end;
end;

procedure TfrmAgenda.dbSexFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icli,itab:integer;
begin
    case rdgAgenda.ItemIndex of
    0:begin
        if dbCliente.Active then
            accept:=dbSexClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    end;
    1:if chkHospital.checked then
        accept:=dbSexHospital.value=cmbHospital.keyvalue
      else
        accept:=true;
    2:if chkMedico.checked then
        accept:=dbSexAuditor.value=cmbMedico.keyvalue
      else
        accept:=true;
    3:if chkEnfermeiro.checked then
        accept:=dbSexEnfermeiro.value=cmbEnfermeiro.keyvalue
      else
        accept:=true;
    4:if chkAdm.checked then
        accept:=dbSexAdministrativo.value=cmbAdm.keyvalue
      else
        accept:=true;
    end;
end;

procedure TfrmAgenda.chkHospitalClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.chkMedicoClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.chkAdmClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.chkEnfermeiroClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.cmdPeriodoClick(Sender: TObject);
begin
    Semana(dtpIni.date);
    rdgAgenda.ItemIndex:=0;
    MontaPagina;
end;

procedure TfrmAgenda.grdSegDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbSegDataConta.isnull) and (dbSegFechaConta.value=1) then
        grdSeg.Canvas.Font.Color:=clRed;

     grdSeg.DefaultDrawDataCell(Rect,grdSeg.Columns[DataCol].field,State);
end;

procedure TfrmAgenda.grdTerDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbTerDataConta.isnull) and (dbTerFechaConta.value=1) then
        grdTer.Canvas.Font.Color:=clRed;

     grdTer.DefaultDrawDataCell(Rect,grdTer.Columns[DataCol].field,State);
end;

procedure TfrmAgenda.grdQuaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbQuaDataConta.isnull) and (dbQuaFechaConta.value=1) then
        grdQua.Canvas.Font.Color:=clRed;

     grdQua.DefaultDrawDataCell(Rect,grdQua.Columns[DataCol].field,State);
end;

procedure TfrmAgenda.grdQuiDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbQuiDataConta.isnull) and (dbQuiFechaConta.value=1) then
        grdQui.Canvas.Font.Color:=clRed;

     grdQui.DefaultDrawDataCell(Rect,grdQui.Columns[DataCol].field,State);
end;

procedure TfrmAgenda.grdSexDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbSexDataConta.isnull) and (dbSexFechaConta.value=1) then
        grdSex.Canvas.Font.Color:=clRed;

     grdSex.DefaultDrawDataCell(Rect,grdSex.Columns[DataCol].field,State);
end;

procedure TfrmAgenda.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoValorizado.value=true;
end;

procedure TfrmAgenda.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkCliente.Checked then
        accept:=dbClienteDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmAgenda.chkClienteClick(Sender: TObject);
begin
    dbCliente.Refresh;
    MontaPagina;
end;

procedure TfrmAgenda.chkMedClick(Sender: TObject);
begin
    dbAuditor.Refresh;
end;

procedure TfrmAgenda.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkMed.Checked then
        accept:=dbAuditorDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmAgenda.chkEnfClick(Sender: TObject);
begin
    dbEnfermeiro.Refresh;
end;

procedure TfrmAgenda.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkEnf.Checked then
        accept:=dbEnfermeiroDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmAgenda.chkAdm1Click(Sender: TObject);
begin
    dbAdm.Refresh;
end;

procedure TfrmAgenda.dbAdmFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkAdm1.Checked then
        accept:=dbAdmDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmAgenda.dbSegServicoChange(Sender: TField);
begin
{    if (not dbSegServico.isnull) and (not dbSegHospital.isnull) then
    begin
        dbSegAuditor.value:=0;
        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbSegCliente.value,dbSegHospital.Value,dbSegServico.value,'M']),[]);
        while (dbEscalaCliente.value=dbSegCliente.value) and
              (dbEscalaHospital.value=dbSegHospital.Value) and
              (dbEscalaServico.value=dbSegServico.value) and
              (dbEscalaTipo.value='M') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbSegData.value) and
               ((dbEscalaDataFim.value>=dbSegData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbSegAuditor.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;

        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbSegCliente.value,dbSegHospital.Value,dbSegServico.value,'E']),[]);
        while (dbEscalaCliente.value=dbSegCliente.value) and
              (dbEscalaHospital.value=dbSegHospital.Value) and
              (dbEscalaServico.value=dbSegServico.value) and
              (dbEscalaTipo.value='E') and
              (not dbEscala.Eof) do
        begin
            dbSegEnfermeiro.value:=0;
            if (dbEscalaDataInicio.value<=dbSegData.value) and
               ((dbEscalaDataFim.value>=dbSegData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbSegEnfermeiro.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;
    end;}
end;

procedure TfrmAgenda.dbTerServicoChange(Sender: TField);
begin
{    if (not dbTerServico.isnull) and (not dbTerHospital.isnull) then
    begin
        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbTerCliente.value,dbTerHospital.Value,dbTerServico.value,'M']),[]);
        while (dbEscalaCliente.value=dbTerCliente.value) and
              (dbEscalaHospital.value=dbTerHospital.Value) and
              (dbEscalaServico.value=dbTerServico.value) and
              (dbEscalaTipo.value='M') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbTerData.value) and
               ((dbEscalaDataFim.value>=dbTerData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbTerAuditor.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;

        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbTerCliente.value,dbTerHospital.Value,dbTerServico.value,'E']),[]);
        while (dbEscalaCliente.value=dbTerCliente.value) and
              (dbEscalaHospital.value=dbTerHospital.Value) and
              (dbEscalaServico.value=dbTerServico.value) and
              (dbEscalaTipo.value='E') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbTerData.value) and
               ((dbEscalaDataFim.value>=dbTerData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbTerEnfermeiro.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;
    end;}
end;

procedure TfrmAgenda.dbQuaServicoChange(Sender: TField);
begin
{    if (not dbQuaServico.isnull) and (not dbQuaHospital.isnull) then
    begin
        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbQuaCliente.value,dbQuaHospital.Value,dbQuaServico.value,'M']),[]);
        while (dbEscalaCliente.value=dbQuaCliente.value) and
              (dbEscalaHospital.value=dbQuaHospital.Value) and
              (dbEscalaServico.value=dbQuaServico.value) and
              (dbEscalaTipo.value='M') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbQuaData.value) and
               ((dbEscalaDataFim.value>=dbQuaData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbQuaAuditor.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;

        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbQuaCliente.value,dbQuaHospital.Value,dbQuaServico.value,'E']),[]);
        while (dbEscalaCliente.value=dbQuaCliente.value) and
              (dbEscalaHospital.value=dbQuaHospital.Value) and
              (dbEscalaServico.value=dbQuaServico.value) and
              (dbEscalaTipo.value='E') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbQuaData.value) and
               ((dbEscalaDataFim.value>=dbQuaData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbQuaEnfermeiro.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;
    end;}
end;

procedure TfrmAgenda.dbQuiServicoChange(Sender: TField);
begin
{    if (not dbQuiServico.isnull) and (not dbQuiHospital.isnull) then
    begin
        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbQuiCliente.value,dbQuiHospital.Value,dbQuiServico.value,'M']),[]);
        while (dbEscalaCliente.value=dbQuiCliente.value) and
              (dbEscalaHospital.value=dbQuiHospital.Value) and
              (dbEscalaServico.value=dbQuiServico.value) and
              (dbEscalaTipo.value='M') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbQuiData.value) and
               ((dbEscalaDataFim.value>=dbQuiData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbQuiAuditor.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;

        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbQuiCliente.value,dbQuiHospital.Value,dbQuiServico.value,'E']),[]);
        while (dbEscalaCliente.value=dbQuiCliente.value) and
              (dbEscalaHospital.value=dbQuiHospital.Value) and
              (dbEscalaServico.value=dbQuiServico.value) and
              (dbEscalaTipo.value='E') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbQuiData.value) and
               ((dbEscalaDataFim.value>=dbQuiData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbQuiEnfermeiro.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;
    end;}
end;

procedure TfrmAgenda.dbSexServicoChange(Sender: TField);
begin
{    if (not dbSexServico.isnull) and (not dbSexHospital.isnull) then
    begin
        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbSexCliente.value,dbSexHospital.Value,dbSexServico.value,'M']),[]);
        while (dbEscalaCliente.value=dbSexCliente.value) and
              (dbEscalaHospital.value=dbSexHospital.Value) and
              (dbEscalaServico.value=dbSexServico.value) and
              (dbEscalaTipo.value='M') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbSexData.value) and
               ((dbEscalaDataFim.value>=dbSexData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbSexAuditor.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;

        dbEscala.Locate('Cliente;Hospital;Servico;Tipo',VarArrayof([dbSexCliente.value,dbSexHospital.Value,dbSexServico.value,'E']),[]);
        while (dbEscalaCliente.value=dbSexCliente.value) and
              (dbEscalaHospital.value=dbSexHospital.Value) and
              (dbEscalaServico.value=dbSexServico.value) and
              (dbEscalaTipo.value='E') and
              (not dbEscala.Eof) do
        begin
            if (dbEscalaDataInicio.value<=dbSexData.value) and
               ((dbEscalaDataFim.value>=dbSexData.value) or (dbEscalaDataFim.isnull))  then
            begin
                dbSexEnfermeiro.value:=dbEscalaAuditor.value;
                break;
            end;
            dbEscala.Next;
        end;
    end;}
end;

procedure TfrmAgenda.tabClienteClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.dbSegAfterPost(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbSegAfterDelete(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbTerAfterDelete(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbTerAfterPost(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbQuaAfterDelete(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbQuaAfterPost(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbQuiAfterDelete(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbQuiAfterPost(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbSexAfterDelete(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.dbSexAfterPost(DataSet: TDataSet);
begin
    AtualizaPagina;
end;

procedure TfrmAgenda.relAgendaClick(Sender: TObject);
begin
    if frmRelAgendas=nil then
      Application.CreateForm(TfrmRelAgendas, frmRelAgendas);
    frmRelAgendas.ShowModal;
end;

procedure TfrmAgenda.cmdEmailClick(Sender: TObject);
begin
    if frmAgendamail=nil then
      Application.CreateForm(TfrmAgendamail, frmAgendamail);
    frmAgendamail.ShowModal;
end;

procedure TfrmAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbSeg.Close;
    dbTer.Close;
    dbQua.Close;
    dbQui.Close;
    dbSex.Close;
    dbEscala.Close;
    dbCliente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbAdm.Close;
    dbRegiao.Close;
    dbServico.Close;
    dbFerias.Close;
    dbCobertura.Close;
end;

procedure TfrmAgenda.relContasClick(Sender: TObject);
begin
    if frmRelConta=nil then
      Application.CreateForm(TfrmRelConta, frmRelConta);
    frmRelConta.ShowModal;
end;

procedure TfrmAgenda.dbSegQtdContasChange(Sender: TField);
begin
    if (dbSeg.State in [dsEdit,dsInsert]) and (dbSegQtdContas.value>0) and
       (dbSegDataConta.isnull) then
        dbSegDataConta.value:=date;
end;

procedure TfrmAgenda.dbTerQtdContasChange(Sender: TField);
begin
    if (dbTer.State in [dsEdit,dsInsert]) and (dbTerQtdContas.value>0) and
       (dbTerDataConta.isnull) then
        dbTerDataConta.value:=date;
end;

procedure TfrmAgenda.dbQuaQtdContasChange(Sender: TField);
begin
    if (dbQua.State in [dsEdit,dsInsert]) and (dbQuaQtdContas.value>0) and
       (dbQuaDataConta.isnull) then
        dbQuaDataConta.value:=date;
end;

procedure TfrmAgenda.dbQuiQtdContasChange(Sender: TField);
begin
    if (dbQui.State in [dsEdit,dsInsert]) and (dbQuiQtdContas.value>0) and
       (dbQuiDataConta.isnull) then
        dbQuiDataConta.value:=date;
end;

procedure TfrmAgenda.dbSexQtdContasChange(Sender: TField);
begin
    if (dbSex.State in [dsEdit,dsInsert]) and (dbSexQtdContas.value>0) and
       (dbSexDataConta.isnull) then
        dbSexDataConta.value:=date;
end;

procedure TfrmAgenda.relMedInativoClick(Sender: TObject);
var iIni:Tdate;
begin
     iIni:=dtpIni.date;

     with dmRelatorio do
     begin
         qryMedInativo.SQL.Clear;
         qryMedInativo.SQL.Text:='Select Auditores.Auditor, Auditores.Nome, '+
                                 '       count(Agenda.Auditor) as Qtd from Auditores '+
                                 'full outer join Agenda on (Auditores.Auditor=Agenda.Auditor) and '+
                                 '                          (Agenda.Data>=:Ini) and (Agenda.Data<=:Fim)  '+
                                 'inner join Escala on (Escala.Auditor=Auditores.Auditor and Escala.Tipo='+QuotedStr('M')+' and  '+
                                 '                     (Escala.Servico='+QuotedStr('P')+' or Escala.Servico='+QuotedStr('PS')+')) '+
                                 'where (Auditores.DataFim is null)  '+
                                 'group by Auditores.Auditor,Auditores.Nome '+
                                 'order by Nome';

         qryMedInativo.ParamByName('Ini').asdate:=iIni;
         qryMedInativo.ParamByName('Fim').asdate:=(iIni+4);

         qryMedInativo.Open;
         if qryMedInativo.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryMedInativo.Close;
            abort;
         end;
         frmMenu.rvBBAgenda.SetParam('Titulo','Medicos sem programação na semana');
         frmMenu.rvBBAgenda.SetParam('Titulo1','*** Somente Ativos com Escala ***');
         frmMenu.rvBBAgenda.SetParam('Titulo2','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

         frmMenu.rvBBAgenda.SelectReport('relMedInativo',true);
         frmMenu.rvBBAgenda.Execute;
    end;
end;

procedure TfrmAgenda.relEnfInativoClick(Sender: TObject);
var iIni:Tdate;
begin
     iIni:=dtpIni.date;

     with dmRelatorio do
     begin
         qryEnfInativo.SQL.Clear;
         qryEnfInativo.SQL.Text:='Select Enfermeiros.Enfermeiro, Enfermeiros.Nome, '+
                                 '       count(Agenda.Enfermeiro) as Qtd from Enfermeiros '+
                                 'full outer join Agenda on (Enfermeiros.Enfermeiro=Agenda.Enfermeiro) and '+
                                 '                          (Agenda.Data>=:Ini) and (Agenda.Data<=:Fim)  '+
                                 'inner join Escala on (Escala.Auditor=Enfermeiros.Enfermeiro and Escala.Tipo='+QuotedStr('E')+' and  '+
                                 '                     (Escala.Servico='+QuotedStr('P')+' or Escala.Servico='+QuotedStr('PS')+')) '+
                                 'where (Enfermeiros.DataFim is null)  '+
                                 'group by Enfermeiros.Enfermeiro,Enfermeiros.Nome '+
                                 'order by Nome';

         qryEnfInativo.ParamByName('Ini').asdate:=iIni;
         qryEnfInativo.ParamByName('Fim').asdate:=(iIni+4);

         qryEnfInativo.Open;
         if qryEnfInativo.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEnfInativo.Close;
            abort;
         end;
         frmMenu.rvBBAgenda.SetParam('Titulo','Enfermeiros sem programação na semana');
         frmMenu.rvBBAgenda.SetParam('Titulo1','*** Somente Ativos com Escala***');
         frmMenu.rvBBAgenda.SetParam('Titulo2','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

         frmMenu.rvBBAgenda.SelectReport('relEnfInativo',true);
         frmMenu.rvBBAgenda.Execute;
    end;
end;

procedure TfrmAgenda.relAdmInativoClick(Sender: TObject);
var iIni:Tdate;
begin
     iIni:=dtpIni.date;

     with dmRelatorio do
     begin
         qryAdmInativo.SQL.Clear;
         qryAdmInativo.SQL.Text:='Select Administrativos.Administrativo, Administrativos.Nome, '+
                                 '       count(Agenda.Administrativo) as Qtd from Administrativos '+
                                 'full outer join Agenda on (Administrativos.Administrativo=Agenda.Administrativo) and '+
                                 '                          (Agenda.Data>=:Ini) and (Agenda.Data<=:Fim)  '+
                                 'where (Administrativos.DataFim is null)  '+
                                 'group by Administrativos.Administrativo,Administrativos.Nome '+
                                 'order by Nome';

         qryAdmInativo.ParamByName('Ini').asdate:=iIni;
         qryAdmInativo.ParamByName('Fim').asdate:=(iIni+4);

         qryAdmInativo.Open;
         if qryAdmInativo.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAdmInativo.Close;
            abort;
         end;
         frmMenu.rvBBAgenda.SetParam('Titulo','Administrativos sem programação na semana');
         frmMenu.rvBBAgenda.SetParam('Titulo1','*** Somente Ativos ***');
         frmMenu.rvBBAgenda.SetParam('Titulo2','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

         frmMenu.rvBBAgenda.SelectReport('relAdmInativo',true);
         frmMenu.rvBBAgenda.Execute;
    end;
end;

procedure TfrmAgenda.relHospitalInativoClick(Sender: TObject);
var iIni:Tdate;
begin
     iIni:=dtpIni.date;

     with dmRelatorio do
     begin
         qryHosInativo.SQL.Clear;
         qryHosInativo.SQL.Text:='Select Hospital.Hospital, Hospital.Nome, '+
                                 '       count(Agenda.Hospital) as Qtd from Hospital '+
                                 'full outer join Agenda on (Hospital.Hospital=Agenda.Hospital) and '+
                                 '                          (Agenda.Data>=:Ini) and (Agenda.Data<=:Fim)  '+
                                 'where (Hospital.Auditorado=1)  '+
                                 'group by Hospital.Hospital,Hospital.Nome '+
                                 'order by Nome';

         qryHosInativo.ParamByName('Ini').asdate:=iIni;
         qryHosInativo.ParamByName('Fim').asdate:=(iIni+4);

         qryHosInativo.Open;
         if qryHosInativo.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryHosInativo.Close;
            abort;
         end;
         frmMenu.rvBBAgenda.SetParam('Titulo','Hospitais sem programação na semana');
         frmMenu.rvBBAgenda.SetParam('Titulo1','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

         frmMenu.rvBBAgenda.SelectReport('relHosInativo',true);
         frmMenu.rvBBAgenda.Execute;
    end;
end;

procedure TfrmAgenda.dbSegBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if dbSegHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbSegServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if (dbSegAuditor.value=0) and (dbSegEnfermeiro.value=0) and (dbSegAdministrativo.value=0) then
    begin
        ShowMessage('Selecione ao menos um profissional');
        abort;
    end;
    if (dbSegFechaConta.value=0) and (dbSegQtdContas.value>0) then
    begin
        ShowMessage('Agendamento não fecha contas');
        abort;
    end;

{    dbFerias.Refresh;
    if dbSegAuditor.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbSegAuditor.value]),[]);
        while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbSegAuditor.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSegData.value>=dbFeriasDataInicio.value) and
                (dbSegData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbSegClienteID.value,dbSegHospital.value]),[]) then
                begin
                    ShowMessage('Medico afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;
    if dbSegEnfermeiro.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbSegEnfermeiro.value]),[]);
        while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbSegEnfermeiro.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSegData.value>=dbFeriasDataInicio.value) and
                (dbSegData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbSegClienteID.value,dbSegHospital.value]),[]) then
                begin
                    ShowMessage('Enfermeiro afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;}
    if (dbSegAdministrativo.value>0) and (dbSegAdministrativo.value<>999999) then
    begin
        dbSegAdmLocal.value:=UpperCase(dbSegAdmLocal.value);
        dbSegAdmPeriodo.value:=UpperCase(dbSegAdmPeriodo.value);

        if (dbSegAdmLocal.value<>'I') and (dbSegAdmLocal.value<>'E') then
        begin
            ShowMessage('Selecione local do Admnistrativo [E]xterno ou [I]nterno B+');
            abort;
        end;
        if (dbSegAdmPeriodo.value<>'M') and (dbSegAdmPeriodo.value<>'T') and (dbSegAdmPeriodo.value<>'D') then
        begin
            ShowMessage('Selecione Periodo do Admnistrativo [M]anhã - [T]arde - [D]ia todo');
            abort;
        end;
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['A',dbSegAdministrativo.value]),[]);
        while (dbFeriasTipo.value='A') and (dbFeriasAuditor.value=dbSegAdministrativo.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSegData.value>=dbFeriasDataInicio.value) and
                (dbSegData.value<=dbFeriasDataFim.value))  then
            begin
                ShowMessage('Administrativo afastado no periodo');
                abort;
            end;
            dbFerias.Next;
        end;
    end
    else
    begin
        dbSegAdmLocal.clear;
        dbSegAdmPeriodo.clear;
    end;
    dbSegUsuario.value:=iUsuario;
    dbSegDataAlteracao.value:=date;
end;

procedure TfrmAgenda.dbTerBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if dbTerHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbTerServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if (dbTerAuditor.value=0) and (dbTerEnfermeiro.value=0) and (dbTerAdministrativo.value=0) then
    begin
        ShowMessage('Selecione ao menos um profissional');
        abort;
    end;
    if (dbTerFechaConta.value=0) and (dbTerQtdContas.value>0) then
    begin
        ShowMessage('Agendamento não fecha contas');
        abort;
    end;

{    dbFerias.Refresh;
    if dbTerAuditor.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbTerAuditor.value]),[]);
        while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbTerAuditor.value) and
              (not dbFerias.eof) do
        begin
            if ((dbTerData.value>=dbFeriasDataInicio.value) and
                (dbTerData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbTerClienteID.value,dbTerHospital.value]),[]) then
                begin
                    ShowMessage('Medico afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;
    if dbTerEnfermeiro.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbTerEnfermeiro.value]),[]);
        while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbTerEnfermeiro.value) and
              (not dbFerias.eof) do
        begin
            if ((dbTerData.value>=dbFeriasDataInicio.value) and
                (dbTerData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbTerClienteID.value,dbTerHospital.value]),[]) then
                begin
                    ShowMessage('Enfermeiro afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;}
    if (dbTerAdministrativo.value>0) and (dbTerAdministrativo.value<>999999) then
    begin
        dbTerAdmLocal.value:=UpperCase(dbTerAdmLocal.value);
        dbTerAdmPeriodo.value:=UpperCase(dbTerAdmPeriodo.value);

        if (dbTerAdmLocal.value<>'I') and (dbTerAdmLocal.value<>'E') then
        begin
            ShowMessage('Selecione local do Admnistrativo [E]xterno ou [I]nterno B+');
            abort;
        end;
        if (dbTerAdmPeriodo.value<>'M') and (dbTerAdmPeriodo.value<>'T') and (dbTerAdmPeriodo.value<>'D') then
        begin
            ShowMessage('Selecione Periodo do Admnistrativo [M]anhã - [T]arde - [D]ia todo');
            abort;
        end;
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['A',dbTerAdministrativo.value]),[]);
        while (dbFeriasTipo.value='A') and (dbFeriasAuditor.value=dbTerAdministrativo.value) and
              (not dbFerias.eof) do
        begin
            if ((dbTerData.value>=dbFeriasDataInicio.value) and
                (dbTerData.value<=dbFeriasDataFim.value))  then
            begin
                ShowMessage('Administrativo afastado no periodo');
                abort;
            end;
            dbFerias.Next;
        end;
    end
    else
    begin
        dbTerAdmLocal.clear;
        dbTerAdmPeriodo.clear;
    end;
    dbTerUsuario.value:=iUsuario;
    dbTerDataAlteracao.value:=date;
end;

procedure TfrmAgenda.dbQuaBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if dbQuaHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbQuaServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if (dbQuaAuditor.value=0) and (dbQuaEnfermeiro.value=0) and (dbQuaAdministrativo.value=0) then
    begin
        ShowMessage('Selecione ao menos um profissional');
        abort;
    end;
    if (dbQuaFechaConta.value=0) and (dbQuaQtdContas.value>0) then
    begin
        ShowMessage('Agendamento não fecha contas');
        abort;
    end;

{    dbFerias.Refresh;
    if dbQuaAuditor.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbQuaAuditor.value]),[]);
        while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbQuaAuditor.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuaData.value>=dbFeriasDataInicio.value) and
                (dbQuaData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbQuaClienteID.value,dbQuaHospital.value]),[]) then
                begin
                    ShowMessage('Medico afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;
    if dbQuaEnfermeiro.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbQuaEnfermeiro.value]),[]);
        while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbQuaEnfermeiro.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuaData.value>=dbFeriasDataInicio.value) and
                (dbQuaData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbQuaClienteID.value,dbQuaHospital.value]),[]) then
                begin
                    ShowMessage('Enfermeiro afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;}
    if (dbQuaAdministrativo.value>0) and (dbQuaAdministrativo.value<>999999) then
    begin
        dbQuaAdmLocal.value:=UpperCase(dbQuaAdmLocal.value);
        dbQuaAdmPeriodo.value:=UpperCase(dbQuaAdmPeriodo.value);

        if (dbQuaAdmLocal.value<>'I') and (dbQuaAdmLocal.value<>'E') then
        begin
            ShowMessage('Selecione local do Admnistrativo [E]xterno ou [I]nterno B+');
            abort;
        end;
        if (dbQuaAdmPeriodo.value<>'M') and (dbQuaAdmPeriodo.value<>'T') and (dbQuaAdmPeriodo.value<>'D') then
        begin
            ShowMessage('Selecione Periodo do Admnistrativo [M]anhã - [T]arde - [D]ia todo');
            abort;
        end;
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['A',dbQuaAdministrativo.value]),[]);
        while (dbFeriasTipo.value='A') and (dbFeriasAuditor.value=dbQuaAdministrativo.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuaData.value>=dbFeriasDataInicio.value) and
                (dbQuaData.value<=dbFeriasDataFim.value))  then
            begin
                ShowMessage('Administrativo afastado no periodo');
                abort;
            end;
            dbFerias.Next;
        end;
    end
    else
    begin
        dbQuaAdmLocal.clear;
        dbQuaAdmPeriodo.clear;
    end;
    dbQuaUsuario.value:=iUsuario;
    dbQuaDataAlteracao.value:=date;
end;

procedure TfrmAgenda.dbQuiBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if dbQuiHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbQuiServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if (dbQuiAuditor.value=0) and (dbQuiEnfermeiro.value=0) and (dbQuiAdministrativo.value=0) then
    begin
        ShowMessage('Selecione ao menos um profissional');
        abort;
    end;
    if (dbQuiFechaConta.value=0) and (dbQuiQtdContas.value>0) then
    begin
        ShowMessage('Agendamento não fecha contas');
        abort;
    end;

{    dbFerias.Refresh;
    if dbQuiAuditor.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbQuiAuditor.value]),[]);
        while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbQuiAuditor.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuiData.value>=dbFeriasDataInicio.value) and
                (dbQuiData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbQuiClienteID.value,dbQuiHospital.value]),[]) then
                begin
                    ShowMessage('Medico afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;
    if dbQuiEnfermeiro.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbQuiEnfermeiro.value]),[]);
        while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbQuiEnfermeiro.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuiData.value>=dbFeriasDataInicio.value) and
                (dbQuiData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbQuiClienteID.value,dbQuiHospital.value]),[]) then
                begin
                    ShowMessage('Enfermeiro afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;}
    if (dbQuiAdministrativo.value>0) and (dbQuiAdministrativo.value<>999999) then
    begin
        dbQuiAdmLocal.value:=UpperCase(dbQuiAdmLocal.value);
        dbQuiAdmPeriodo.value:=UpperCase(dbQuiAdmPeriodo.value);

        if (dbQuiAdmLocal.value<>'I') and (dbQuiAdmLocal.value<>'E') then
        begin
            ShowMessage('Selecione local do Admnistrativo [E]xterno ou [I]nterno B+');
            abort;
        end;
        if (dbQuiAdmPeriodo.value<>'M') and (dbQuiAdmPeriodo.value<>'T') and (dbQuiAdmPeriodo.value<>'D') then
        begin
            ShowMessage('Selecione Periodo do Admnistrativo [M]anhã - [T]arde - [D]ia todo');
            abort;
        end;
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['A',dbQuiAdministrativo.value]),[]);
        while (dbFeriasTipo.value='A') and (dbFeriasAuditor.value=dbQuiAdministrativo.value) and
              (not dbFerias.eof) do
        begin
            if ((dbQuiData.value>=dbFeriasDataInicio.value) and
                (dbQuiData.value<=dbFeriasDataFim.value))  then
            begin
                ShowMessage('Administrativo afastado no periodo');
                abort;
            end;
            dbFerias.Next;
        end;
    end
    else
    begin
        dbQuiAdmLocal.clear;
        dbQuiAdmPeriodo.clear;
    end;
    dbQuiUsuario.value:=iUsuario;
    dbQuiDataAlteracao.value:=date;
end;

procedure TfrmAgenda.dbSexBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if dbSexHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbSexServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if (dbSexAuditor.value=0) and (dbSexEnfermeiro.value=0) and (dbSexAdministrativo.value=0) then
    begin
        ShowMessage('Selecione ao menos um profissional');
        abort;
    end;
    if (dbSexFechaConta.value=0) and (dbSexQtdContas.value>0) then
    begin
        ShowMessage('Agendamento não fecha contas');
        abort;
    end;

{    dbFerias.Refresh;
    if dbSexAuditor.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbSexAuditor.value]),[]);
        while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbSexAuditor.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSexData.value>=dbFeriasDataInicio.value) and
                (dbSexData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbSexClienteID.value,dbSexHospital.value]),[]) then
                begin
                    ShowMessage('Medico afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;
    if dbSexEnfermeiro.value>0 then
    begin
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbSexEnfermeiro.value]),[]);
        while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbSexEnfermeiro.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSexData.value>=dbFeriasDataInicio.value) and
                (dbSexData.value<=dbFeriasDataFim.value))  then
            begin
                if dbCobertura.Locate('ClienteID;Hospital',VarArrayof([dbSexClienteID.value,dbSexHospital.value]),[]) then
                begin
                    ShowMessage('Enfermeiro afastado no periodo');
                    abort;
                end;
            end;
            dbFerias.Next;
        end;
    end;}
    if (dbSexAdministrativo.value>0) and (dbSexAdministrativo.value<>999999) then
    begin
        dbSexAdmLocal.value:=UpperCase(dbSexAdmLocal.value);
        dbSexAdmPeriodo.value:=UpperCase(dbSexAdmPeriodo.value);

        if (dbSexAdmLocal.value<>'I') and (dbSexAdmLocal.value<>'E') then
        begin
            ShowMessage('Selecione local do Admnistrativo [E]xterno ou [I]nterno B+');
            abort;
        end;
        if (dbSexAdmPeriodo.value<>'M') and (dbSexAdmPeriodo.value<>'T') and (dbSexAdmPeriodo.value<>'D') then
        begin
            ShowMessage('Selecione Periodo do Admnistrativo [M]anhã - [T]arde - [D]ia todo');
            abort;
        end;
        dbFerias.Locate('Tipo;Auditor',VarArrayof(['A',dbSexAdministrativo.value]),[]);
        while (dbFeriasTipo.value='A') and (dbFeriasAuditor.value=dbSexAdministrativo.value) and
              (not dbFerias.eof) do
        begin
            if ((dbSexData.value>=dbFeriasDataInicio.value) and
                (dbSexData.value<=dbFeriasDataFim.value))  then
            begin
                ShowMessage('Administrativo afastado no periodo');
                abort;
            end;
            dbFerias.Next;
        end;
    end
    else
    begin
        dbSexAdmLocal.clear;
        dbSexAdmPeriodo.clear;
    end;
    dbSexUsuario.value:=iUsuario;
    dbSexDataAlteracao.value:=date;

end;

procedure TfrmAgenda.cmdNovo2Click(Sender: TObject);
var icli:string;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if rdgAgenda.ItemIndex=0 then
    begin
        icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
        dbCliente.Locate('ClienteID',icli,[]);
        iClienteID:=dbClienteClienteID.value;
        iCliente:=dbClienteCliente.value;
    end;
    if frmAgendaNovo=nil then
          Application.CreateForm(TfrmAgendaNovo, frmAgendaNovo);
    frmAgendaNovo.lblData.Caption:=lblSeg.Caption;
    iData:=dtpIni.Date;
    frmAgendaNovo.cmbHospitalNovo.KeyValue:=0;
    if rdgAgenda.ItemIndex=0 then
        frmAgendaNovo.cmbClienteNovo.KeyValue:=icli
    else
        frmAgendaNovo.cmbClienteNovo.KeyValue:=null;
    frmAgendaNovo.ShowModal;
end;

procedure TfrmAgenda.cmdGrava2Click(Sender: TObject);
begin
    dbSeg.Post;
end;

procedure TfrmAgenda.cmdExclui2Click(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbSeg.Delete;
end;

procedure TfrmAgenda.cmdNovo3Click(Sender: TObject);
var icli:string;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if rdgAgenda.ItemIndex=0 then
    begin
        icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
        dbCliente.Locate('ClienteID',icli,[]);
        icli:=dbClienteClienteID.value;
    end;
    if frmAgendaNovo=nil then
          Application.CreateForm(TfrmAgendaNovo, frmAgendaNovo);
    frmAgendaNovo.lblData.Caption:=lblTer.Caption;
    frmAgendaNovo.cmbHospitalNovo.KeyValue:=0;
    iData:=dtpIni.Date+1;
    if rdgAgenda.ItemIndex=0 then
        frmAgendaNovo.cmbClienteNovo.KeyValue:=icli
    else
        frmAgendaNovo.cmbClienteNovo.KeyValue:=null;
    frmAgendaNovo.ShowModal;
end;

procedure TfrmAgenda.cmdGrava3Click(Sender: TObject);
begin
    dbTer.Post;
end;

procedure TfrmAgenda.cmdExclui3Click(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbTer.Delete;
end;

procedure TfrmAgenda.cmdNovo4Click(Sender: TObject);
var icli:string;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if rdgAgenda.ItemIndex=0 then
    begin
        icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
        dbCliente.Locate('ClienteID',icli,[]);
        icli:=dbClienteClienteID.value;
    end;
    if frmAgendaNovo=nil then
          Application.CreateForm(TfrmAgendaNovo, frmAgendaNovo);
    frmAgendaNovo.lblData.Caption:=lblQua.Caption;
    frmAgendaNovo.cmbHospitalNovo.KeyValue:=0;
    iData:=dtpIni.Date+2;
    if rdgAgenda.ItemIndex=0 then
        frmAgendaNovo.cmbClienteNovo.KeyValue:=icli
    else
        frmAgendaNovo.cmbClienteNovo.KeyValue:=null;
    frmAgendaNovo.ShowModal;
end;

procedure TfrmAgenda.cmdGrava4Click(Sender: TObject);
begin
    dbQua.Post;
end;

procedure TfrmAgenda.cmdExclui4Click(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbQua.Delete;
end;

procedure TfrmAgenda.cmdNovo5Click(Sender: TObject);
var icli:string;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if rdgAgenda.ItemIndex=0 then
    begin
        icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
        dbCliente.Locate('ClienteID',icli,[]);
        icli:=dbClienteClienteID.value;
    end;
    if frmAgendaNovo=nil then
          Application.CreateForm(TfrmAgendaNovo, frmAgendaNovo);
    frmAgendaNovo.lblData.Caption:=lblQui.Caption;
    frmAgendaNovo.cmbHospitalNovo.KeyValue:=0;
    iData:=dtpIni.Date+3;
    if rdgAgenda.ItemIndex=0 then
        frmAgendaNovo.cmbClienteNovo.KeyValue:=icli
    else
        frmAgendaNovo.cmbClienteNovo.KeyValue:=null;
    frmAgendaNovo.ShowModal;
end;

procedure TfrmAgenda.cmdGrava5Click(Sender: TObject);
begin
    dbQui.Post;
end;

procedure TfrmAgenda.cmdExclui5Click(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbQui.Delete;
end;

procedure TfrmAgenda.cmdNovo6Click(Sender: TObject);
var icli:string;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    if rdgAgenda.ItemIndex=0 then
    begin
        icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
        dbCliente.Locate('ClienteID',icli,[]);
        icli:=dbClienteClienteID.value;
    end;
    if frmAgendaNovo=nil then
          Application.CreateForm(TfrmAgendaNovo, frmAgendaNovo);
    frmAgendaNovo.lblData.Caption:=lblSex.Caption;
    frmAgendaNovo.cmbHospitalNovo.KeyValue:=0;
    iData:=dtpIni.Date+4;
    if rdgAgenda.ItemIndex=0 then
        frmAgendaNovo.cmbClienteNovo.KeyValue:=icli
    else
        frmAgendaNovo.cmbClienteNovo.KeyValue:=null;
    frmAgendaNovo.ShowModal;
end;

procedure TfrmAgenda.cmdGrava6Click(Sender: TObject);
begin
    dbSex.Post;
end;

procedure TfrmAgenda.cmdExclui6Click(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbSex.Delete;
end;

procedure TfrmAgenda.dsSegStateChange(Sender: TObject);
begin
     cmdNovo2.Default:=dbSeg.State in [dsBrowse];
     cmdExclui2.Enabled:=(dbSeg.RecordCount<>0);
     cmdGrava2.Enabled:=dbSeg.State in [dsEdit,dsInsert];
     cmdGrava2.Default:=dbSeg.State in [dsEdit,dsInsert];
end;


procedure TfrmAgenda.dsTerStateChange(Sender: TObject);
begin
     cmdNovo3.Default:=dbTer.State in [dsBrowse];
     cmdExclui3.Enabled:=(dbTer.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbTer.RecordCount<>0);
     cmdGrava3.Enabled:=dbTer.State in [dsEdit,dsInsert];
     cmdGrava3.Default:=dbTer.State in [dsEdit,dsInsert];
end;

procedure TfrmAgenda.dsQuaStateChange(Sender: TObject);
begin
     cmdNovo4.Default:=dbQua.State in [dsBrowse];
     cmdExclui4.Enabled:=(dbQua.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbQua.RecordCount<>0);
     cmdGrava4.Enabled:=dbQua.State in [dsEdit,dsInsert];
     cmdGrava4.Default:=dbQua.State in [dsEdit,dsInsert];
end;

procedure TfrmAgenda.dsQuiStateChange(Sender: TObject);
begin
     cmdNovo5.Default:=dbQui.State in [dsBrowse];
     cmdExclui5.Enabled:=(dbQui.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbQui.RecordCount<>0);
     cmdGrava5.Enabled:=dbQui.State in [dsEdit,dsInsert];
     cmdGrava5.Default:=dbQui.State in [dsEdit,dsInsert];
end;

procedure TfrmAgenda.dsSexStateChange(Sender: TObject);
begin
     cmdNovo6.Default:=dbSex.State in [dsBrowse];
     cmdExclui6.Enabled:=(dbSex.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbSex.RecordCount<>0);
     cmdGrava6.Enabled:=dbSex.State in [dsEdit,dsInsert];
     cmdGrava6.Default:=dbSex.State in [dsEdit,dsInsert];
end;

procedure TfrmAgenda.BitBtn1Click(Sender: TObject);
begin
    Semana(dtpIni.date-7);
    rdgAgenda.ItemIndex:=0;
    MontaPagina;
end;

procedure TfrmAgenda.BitBtn2Click(Sender: TObject);
begin
    Semana(dtpIni.date+7);
    rdgAgenda.ItemIndex:=0;
    MontaPagina;
end;

procedure TfrmAgenda.cmbAdmClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.cmbEnfermeiroClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.cmbHospitalClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.cmbMedicoClick(Sender: TObject);
begin
    Atualiza;
end;

procedure TfrmAgenda.grdSegKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgenda.grdTerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgenda.grdQuaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgenda.grdQuiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgenda.grdSexKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgenda.grdSegKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dbSeg.Eof) and (key=VK_DOWN) then
    begin
        dbSeg.Cancel;
        cmdNovo2Click(sender);
    end;
end;

procedure TfrmAgenda.grdTerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dbTer.Eof) and (key=VK_DOWN) then
    begin
        dbTer.Cancel;
        cmdNovo3Click(sender);
    end;
end;

procedure TfrmAgenda.grdQuaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dbQua.Eof) and (key=VK_DOWN) then
    begin
        dbQua.Cancel;
        cmdNovo4Click(sender);
    end;
end;

procedure TfrmAgenda.grdQuiKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dbQui.Eof) and (key=VK_DOWN) then
    begin
        dbQui.Cancel;
        cmdNovo5Click(sender);
    end;
end;

procedure TfrmAgenda.grdSexKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dbSex.Eof) and (key=VK_DOWN) then
    begin
        dbSex.Cancel;
        cmdNovo6Click(sender);
    end;
end;

procedure TfrmAgenda.dbSegBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbTerBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbQuaBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbQuiBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbSexBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbSexBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbQuiBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbQuaBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbTerBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;

end;

procedure TfrmAgenda.dbSegBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Agenda') then
       abort;
end;


procedure TfrmAgenda.LimparA2Click(Sender: TObject);
begin
    if (dbSeg.State in [dsBrowse]) and (dbSeg.RecordCount>0) then
    begin
        dbSeg.Edit;
        dbSegAdministrativo.Value:=0;
        dbSeg.Post;
    end;
end;

procedure TfrmAgenda.LimparA3Click(Sender: TObject);
begin
    if (dbTer.State in [dsBrowse]) and (dbTer.RecordCount>0) then
    begin
        dbTer.Edit;
        dbTerAdministrativo.Value:=0;
        dbTer.Post;
    end;
end;

procedure TfrmAgenda.LimparA4Click(Sender: TObject);
begin
    if (dbQua.State in [dsBrowse]) and (dbQua.RecordCount>0) then
    begin
        dbQua.Edit;
        dbQuaAdministrativo.Value:=0;
        dbQua.Post;
    end;
end;

procedure TfrmAgenda.LimparA5Click(Sender: TObject);
begin
    if (dbQui.State in [dsBrowse]) and (dbQui.RecordCount>0) then
    begin
        dbQui.Edit;
        dbQuiAdministrativo.Value:=0;
        dbQui.Post;
    end;
end;

procedure TfrmAgenda.LimparA6Click(Sender: TObject);
begin
    if (dbSex.State in [dsBrowse]) and (dbSex.RecordCount>0) then
    begin
        dbSex.Edit;
        dbSexAdministrativo.Value:=0;
        dbSex.Post;
    end;
end;

procedure TfrmAgenda.dbSegFechaContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbSegFechaConta.value=0 then
       text:='Não';
    if dbSegFechaConta.value=1  then
       text:='Sim';
end;

procedure TfrmAgenda.dbSegFechaContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbSegFechaConta.value:=0;
    if text='Sim' then
        dbSegFechaConta.value:=1;
end;

procedure TfrmAgenda.dbTerFechaContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbTerFechaConta.value=0 then
       text:='Não';
    if dbTerFechaConta.value=1  then
       text:='Sim';
end;

procedure TfrmAgenda.dbTerFechaContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbTerFechaConta.value:=0;
    if text='Sim' then
        dbTerFechaConta.value:=1;
end;

procedure TfrmAgenda.dbQuaFechaContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbQuaFechaConta.value=0 then
       text:='Não';
    if dbQuaFechaConta.value=1  then
       text:='Sim';
end;

procedure TfrmAgenda.dbQuaFechaContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbQuaFechaConta.value:=0;
    if text='Sim' then
        dbQuaFechaConta.value:=1;
end;

procedure TfrmAgenda.dbQuiFechaContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbQuiFechaConta.value=0 then
       text:='Não';
    if dbQuiFechaConta.value=1  then
       text:='Sim';
end;

procedure TfrmAgenda.dbQuiFechaContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbQuiFechaConta.value:=0;
    if text='Sim' then
        dbQuiFechaConta.value:=1;
end;

procedure TfrmAgenda.dbSexFechaContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbSexFechaConta.value=0 then
       text:='Não';
    if dbSexFechaConta.value=1  then
       text:='Sim';
end;

procedure TfrmAgenda.dbSexFechaContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbSexFechaConta.value:=0;
    if text='Sim' then
        dbSexFechaConta.value:=1;
end;

procedure TfrmAgenda.BitBtn3Click(Sender: TObject);
begin
    if frmRelFechEnf=nil then
      Application.CreateForm(TfrmRelFechEnf, frmRelFechEnf);
    frmRelFechEnf.ShowModal;

end;

end.


