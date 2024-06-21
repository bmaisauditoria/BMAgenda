unit frmEscalas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, ComCtrls, ExtCtrls, DB, MSAccess, MemDS, DBAccess,
  Grids, DBGrids, CRGrid, StdCtrls, ToolWin, Buttons,  ImgList, ValEdit, ChromeTabs, DBCtrls;
  type
  TfrmEscala = class(TForm)
    dbEscalaP: TMSQuery;
    dbEscalaPCliente: TIntegerField;
    dbEscalaPHospital: TIntegerField;
    dbEscalaPTipo: TStringField;
    dbEscalaPQtd: TSmallintField;
    dbEscalaPServico: TStringField;
    dbEscalaHM: TMSQuery;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorFone: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorEmail: TStringField;
    dbAuditorUsuario: TStringField;
    dbAuditorNascimento: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dsCliente: TDataSource;
    dsEscalaHM: TDataSource;
    dsEscalaP: TDataSource;
    tabClienteold: TTabControl;
    dbEscalaPClienteID: TStringField;
    dbEscalaPDataFim: TDateTimeField;
    dbCliente: TMSQuery;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteDataFim: TDateTimeField;
    dbClienteClienteID: TStringField;
    dbEscalaPNome: TStringField;
    dbEscalaPRegiao: TIntegerField;
    dbEscalaPServicoTexto: TStringField;
    Label74: TLabel;
    pagTipo: TPageControl;
    TabSheet1: TTabSheet;
    dbEscalaPHospitalNome: TStringField;
    Panel5: TPanel;
    dbEscalaPRegiaoTexto: TStringField;
    cmdConfere: TBitBtn;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoValorizadoTexto: TStringField;
    dbServicoVinculado: TStringField;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dsEscalaM: TDataSource;
    dbEscalaH: TMSQuery;
    dsEscalaH: TDataSource;
    Panel2: TPanel;
    grdEscala: TDBGrid;
    Panel7: TPanel;
    cmdNovoP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    dbEscalaPQtdAtual: TIntegerField;
    dbEscalaPDataInclusao: TDateTimeField;
    dbEscalaPUsuario: TStringField;
    dbEscalaHMCliente: TIntegerField;
    dbEscalaHMHospital: TIntegerField;
    dbEscalaHMTipo: TStringField;
    dbEscalaHMServico: TStringField;
    dbEscalaHMAuditor: TIntegerField;
    dbEscalaHMClienteID: TStringField;
    dbEscalaHMDataInclusao: TDateTimeField;
    dbEscalaHMUsuario: TStringField;
    dbEscalaHMHospitalNome: TStringField;
    dbEscalaMCliente: TIntegerField;
    dbEscalaMHospital: TIntegerField;
    dbEscalaMTipo: TStringField;
    dbEscalaMServico: TStringField;
    dbEscalaMAuditor: TIntegerField;
    dbEscalaMDataInicio: TDateTimeField;
    dbEscalaMClienteID: TStringField;
    dbEscalaMDataInclusao: TDateTimeField;
    dbEscalaMUsuario: TStringField;
    dbEscalaMHospitalNome: TStringField;
    dbEscalaHCliente: TIntegerField;
    dbEscalaHHospital: TIntegerField;
    dbEscalaHTipo: TStringField;
    dbEscalaHServico: TStringField;
    dbEscalaHAuditor: TIntegerField;
    dbEscalaHDataInicio: TDateTimeField;
    dbEscalaHClienteID: TStringField;
    dbEscalaHDataInclusao: TDateTimeField;
    dbEscalaHUsuario: TStringField;
    dbEscalaHMedicoNome: TStringField;
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
    dbEscalaHEnfermeiroNome: TStringField;
    dbEscalaHAuditorNome: TStringField;
    dbEscalaHE: TMSQuery;
    dsEscalaHE: TDataSource;
    dbEscalaHECliente: TIntegerField;
    dbEscalaHEHospital: TIntegerField;
    dbEscalaHETipo: TStringField;
    dbEscalaHEServico: TStringField;
    dbEscalaHEAuditor: TIntegerField;
    dbEscalaHEClienteID: TStringField;
    dbEscalaHEDataInclusao: TDateTimeField;
    dbEscalaHEUsuario: TStringField;
    dbEscalaHEHospitalNome: TStringField;
    dbEscalaHEAuditorNome: TStringField;
    dbEscalaE: TMSQuery;
    dsEscalaE: TDataSource;
    dbEscalaECliente: TIntegerField;
    dbEscalaEHospital: TIntegerField;
    dbEscalaETipo: TStringField;
    dbEscalaEServico: TStringField;
    dbEscalaEAuditor: TIntegerField;
    dbEscalaEDataInicio: TDateTimeField;
    dbEscalaEClienteID: TStringField;
    dbEscalaEDataInclusao: TDateTimeField;
    dbEscalaEUsuario: TStringField;
    dbEscalaEHospitalNome: TStringField;
    ImageList1: TImageList;
    qryClienteok: TMSQuery;
    cmdFerias: TBitBtn;
    dbFerias: TMSQuery;
    dbFeriasAuditor: TIntegerField;
    dbFeriasTipo: TStringField;
    dbFeriasDataInicio: TDateTimeField;
    dbFeriasDataFim: TDateTimeField;
    dbFeriasUsuario: TStringField;
    dbFeriasDataInclusao: TDateTimeField;
    dbFeriasObs: TStringField;
    dsFerias: TDataSource;
    qryClienteokClienteID: TStringField;
    qryClienteokQtdAtual: TIntegerField;
    qryClienteokqtd: TIntegerField;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    BitBtn2: TBitBtn;
    dbEscalaBusca: TMSQuery;
    chkCliente: TCheckBox;
    chkMedico: TCheckBox;
    chkEnfermeiro: TCheckBox;
    tabCliente: TChromeTabs;
    dbEscalaHMDiaria: TMSQuery;
    dbEscalaHEDiaria: TMSQuery;
    dbEscalaPUsuarioE: TStringField;
    Panel11: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    grdMedico: TDBGrid;
    Panel6: TPanel;
    cmdNovoHM: TBitBtn;
    cmdGravaHM: TBitBtn;
    cmdExcluiHM: TBitBtn;
    Panel12: TPanel;
    Label1: TLabel;
    grdMedD: TDBGrid;
    Panel13: TPanel;
    cmdGravaHMD: TBitBtn;
    cmdExcluiHMD: TBitBtn;
    dsEscalaHMDiaria: TDataSource;
    dsEscalaHEDiaria: TDataSource;
    dbEscalaHMDiariaAuditorNome: TStringField;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    grdEnfermeiro: TDBGrid;
    Panel14: TPanel;
    cmdNovoHE: TBitBtn;
    cmdGravaHE: TBitBtn;
    cmdExcluiHE: TBitBtn;
    Panel15: TPanel;
    Label5: TLabel;
    grdEnfD: TDBGrid;
    Panel16: TPanel;
    cmdGravaHED: TBitBtn;
    cmdExcluiHED: TBitBtn;
    dbEscalaHEDiariaAuditor: TIntegerField;
    dbEscalaHEDiariaDataInicio: TDateTimeField;
    dbEscalaHEDiariaDataInclusao: TDateTimeField;
    dbEscalaHEDiariaUsuario: TStringField;
    dbEscalaHEDiariaAuditorNome: TStringField;
    dbEscalaHMAuditorNome: TStringField;
    dbEscalaHMCRM: TStringField;
    dbEscalaHECoren: TStringField;
    dbEscalaHEDiariaCliente: TIntegerField;
    dbEscalaHEDiariaHospital: TIntegerField;
    dbEscalaHEDiariaTipo: TStringField;
    dbEscalaHEDiariaServico: TStringField;
    dbEscalaHEDiariaClienteID: TStringField;
    dbEscalaHMDiariaCliente: TIntegerField;
    dbEscalaHMDiariaHospital: TIntegerField;
    dbEscalaHMDiariaTipo: TStringField;
    dbEscalaHMDiariaAuditor: TIntegerField;
    dbEscalaHMDiariaServico: TStringField;
    dbEscalaHMDiariaDataInicio: TDateTimeField;
    dbEscalaHMDiariaClienteID: TStringField;
    dbEscalaHMDiariaDataInclusao: TDateTimeField;
    dbEscalaHMDiariaUsuario: TStringField;
    dbEscalaHMDiariaDataFim: TDateTimeField;
    dbEscalaHEDiariaDataFim: TDateTimeField;
    dbEscalaEDataFim: TDateTimeField;
    dbEscalaMDataFim: TDateTimeField;
    dbEscalaHDataFim: TDateTimeField;
    dbEscalaHMDiariaEscala: TIntegerField;
    dbEscalaHEDiariaEscala: TIntegerField;
    dbEscalaHMEscala: TIntegerField;
    dbEscalaHEEscala: TIntegerField;
    dbEscalaHMDiariaCobertura: TIntegerField;
    dbEscalaHEDiariaCobertura: TIntegerField;
    dbEscalaMEscala: TIntegerField;
    dbEscalaMCobertura: TIntegerField;
    dbEscalaEEscala: TIntegerField;
    dbEscalaECobertura: TIntegerField;
    dbEscalaHEscala: TIntegerField;
    dbEscalaHCobertura: TIntegerField;
    dbEscalaHTipoTexto: TStringField;
    dbEscalaHMDiariaDataCobertura: TDateTimeField;
    dbEscalaHMDiariaUsuarioC: TStringField;
    dbEscalaHEDiariaDataCobertura: TDateTimeField;
    dbEscalaHEDiariaUsuarioC: TStringField;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    CoolBar1: TCoolBar;
    rdgBusca: TRadioGroup;
    cmbHospital: TDBLookupComboBox;
    cmbMedico: TDBLookupComboBox;
    cmbEnfermeiro: TDBLookupComboBox;
    dsAuditor: TDataSource;
    dsEnfermeiro: TDataSource;
    dsHospital: TDataSource;
    dbEscalaBuscaCliente: TIntegerField;
    dbEscalaBuscaHospital: TIntegerField;
    dbEscalaBuscaTipo: TStringField;
    dbEscalaBuscaAuditor: TIntegerField;
    dbEscalaBuscaServico: TStringField;
    dbEscalaBuscaClienteID: TStringField;
    cmdFiltraHED: TSpeedButton;
    cmdFiltraHMD: TSpeedButton;
    cmdRelEscalaG: TBitBtn;
    cmdAtuAgenda: TBitBtn;
    cmdRelEscalaA: TBitBtn;
    cmdFechaP: TBitBtn;
    dbEscalaMLibera: TStringField;
    dbEscalaELibera: TStringField;
    dbEscalaM: TMSQuery;
    dbEscalaHMDiariaLibera: TStringField;
    dbEscalaHEDiariaLibera: TStringField;
    Inativo: TTabSheet;
    Panel4: TPanel;
    cmpHospital: TLabel;
    grdHospital: TDBGrid;
    pnlGeralM: TPanel;
    cmpMedico: TLabel;
    grdAuditor: TDBGrid;
    pnlGeralE: TPanel;
    cmpEnfermeiro: TLabel;
    DBGrid3: TDBGrid;
    BitBtn3: TBitBtn;
    dbEscalaPQtdok: TStringField;
    calMed: TMonthCalendar;
    calEnf: TMonthCalendar;
    qryBuscaEscalaP: TMSQuery;
    qryBuscaEscalaPCliente: TIntegerField;
    qryBuscaEscalaPHospital: TIntegerField;
    qryBuscaEscalaPTipo: TStringField;
    qryBuscaEscalaPServico: TStringField;
    qryBuscaEscalaPQtd: TSmallintField;
    qryBuscaEscalaPQtdAtual: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbEscalaPFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEscalaPAfterInsert(DataSet: TDataSet);
    procedure dbEscalaHMAfterInsert(DataSet: TDataSet);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dsEscalaPStateChange(Sender: TObject);
    procedure dbEscalaPBeforePost(DataSet: TDataSet);
    procedure dbEscalaPTipoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbEscalaPTipoSetText(Sender: TField; const Text: String);
    procedure grdEscalaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbEscalaPAfterScroll(DataSet: TDataSet);
    procedure cmdNovoHMClick(Sender: TObject);
    procedure cmdGravaHMClick(Sender: TObject);
    procedure cmdExcluiHMClick(Sender: TObject);
    procedure dbEscalaHCalcFields(DataSet: TDataSet);
    procedure dsEscalaHMStateChange(Sender: TObject);
    procedure cmdNovoHEClick(Sender: TObject);
    procedure cmdGravaHEClick(Sender: TObject);
    procedure cmdExcluiHEClick(Sender: TObject);
    procedure dsEscalaHEStateChange(Sender: TObject);
    procedure dbEscalaHEAfterInsert(DataSet: TDataSet);
    procedure dbEscalaHMAfterPost(DataSet: TDataSet);
    procedure dbEscalaHMAfterDelete(DataSet: TDataSet);
    procedure dbEscalaHEAfterDelete(DataSet: TDataSet);
    procedure dbEscalaHEAfterPost(DataSet: TDataSet);
    procedure cmdFeriasClick(Sender: TObject);
    procedure cmdConfereClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkClienteClick(Sender: TObject);
    procedure MontaPagina;
    procedure AtualizaPagina;
    procedure chkMedicoClick(Sender: TObject);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure tabClienteClick(Sender: TObject);
    procedure dbEscalaPAfterPost(DataSet: TDataSet);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEscalaPAfterRefresh(DataSet: TDataSet);
    procedure grdAuditorDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdHospitalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbEscalaHMBeforeEdit(DataSet: TDataSet);
    procedure dbEscalaHEBeforeEdit(DataSet: TDataSet);
    procedure dbEscalaHMDiariaAfterInsert(DataSet: TDataSet);
    procedure dbEscalaHMDiariaBeforePost(DataSet: TDataSet);
    procedure dbEscalaHEDiariaAfterInsert(DataSet: TDataSet);
    procedure dbEscalaHMAfterScroll(DataSet: TDataSet);
    procedure dbEscalaHMDiariaAfterScroll(DataSet: TDataSet);
    procedure dbEscalaHEAfterScroll(DataSet: TDataSet);
    procedure dbEscalaHEDiariaAfterScroll(DataSet: TDataSet);
    procedure cmdGravaHMDClick(Sender: TObject);
    procedure cmdExcluiHMDClick(Sender: TObject);
    procedure cmdGravaHEDClick(Sender: TObject);
    procedure cmdExcluiHEDClick(Sender: TObject);
    procedure dsEscalaHMDiariaStateChange(Sender: TObject);
    procedure dsEscalaHEDiariaStateChange(Sender: TObject);
    procedure dbEscalaHMDiariaAfterPost(DataSet: TDataSet);
    procedure calMedClick(Sender: TObject);
    procedure calEnfClick(Sender: TObject);
    procedure rdgBuscaClick(Sender: TObject);
    procedure cmbHospitalClick(Sender: TObject);
    procedure cmbMedicoClick(Sender: TObject);
    procedure cmbEnfermeiroClick(Sender: TObject);
    procedure dbEscalaHMBeforeInsert(DataSet: TDataSet);
    procedure dbEscalaHEBeforeInsert(DataSet: TDataSet);
    procedure dbEscalaHEDiariaBeforePost(DataSet: TDataSet);
    procedure dbEscalaHEDiariaAfterPost(DataSet: TDataSet);
    procedure grdMedDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdEnfDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdFiltraHMDClick(Sender: TObject);
    procedure cmdFiltraHEDClick(Sender: TObject);
    procedure dbEscalaHMDiariaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEscalaHEDiariaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEscalaHMBeforePost(DataSet: TDataSet);
    procedure dbEscalaHEBeforePost(DataSet: TDataSet);
    procedure grdEnfDDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdMedDDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbEscalaPBeforeDelete(DataSet: TDataSet);
    procedure dbEscalaPBeforeInsert(DataSet: TDataSet);
    procedure dbEscalaPBeforeEdit(DataSet: TDataSet);
    procedure dbEscalaHMBeforeDelete(DataSet: TDataSet);
    procedure dbEscalaHEBeforeDelete(DataSet: TDataSet);
    procedure dbEscalaHMDiariaBeforeDelete(DataSet: TDataSet);
    procedure dbEscalaHMDiariaBeforeInsert(DataSet: TDataSet);
    procedure dbEscalaHEDiariaBeforeDelete(DataSet: TDataSet);
    procedure dbEscalaHEDiariaBeforeInsert(DataSet: TDataSet);
    procedure cmdRelEscalaGClick(Sender: TObject);
    procedure grdEscalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMedicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdEnfermeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAuditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdHospitalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdAtuAgendaClick(Sender: TObject);
    procedure cmdRelEscalaAClick(Sender: TObject);
    procedure cmdFechaPClick(Sender: TObject);
    procedure dbEscalaPCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbEscalaHMDiariaLiberaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbEscalaHMDiariaLiberaSetText(Sender: TField;
      const Text: String);
    procedure dbEscalaHEDiariaLiberaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbEscalaHEDiariaLiberaSetText(Sender: TField;
      const Text: String);
  private
    itottab,itab:integer;
  public
    iAuditor,iescala:integer;
    ifecha:boolean;
  end;

var
  frmEscala: TfrmEscala;

implementation

{$R *.dfm}

uses frmPrincipal, frmFeriass, frmRelEscala, dmRelatorios, StrUtils,
  frmAtuAgendas, frmRelEscalaAlteracao, frmEscalasFecha;

procedure TfrmEscala.MontaPagina;
var i,t:integer;
begin
    qryClienteok.SQL.Text:='Select  ClienteID, sum(QtdAtual) QtdAtual, sum(qtd) as qtd '+
                           'from EscalaPadrao '+
                           'where DataFim is null '+
                           'group by clienteID '+
                           'order by clienteId ';
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
                if qryClienteOkQtdAtual.value<>qryClienteokQtd.value then
                    tabCliente.Tabs[i].ImageIndex:=0;

        i:=i+1;
        dbCliente.Next;
    end;
    itottab:=i;
    tabCliente.ActiveTabIndex:=0;

    if dbEscalaP.Active then
        dbEscalaP.Refresh;
end;

procedure TfrmEscala.AtualizaPagina;
var i:integer;
begin
    i:=tabCliente.ActiveTabIndex;
    qryClienteok.Execute;
    if qryClienteOk.Active then
        if qryClienteok.Locate('ClienteID',tabcliente.tabs[i].Caption,[]) then
            if qryClienteOkQtdAtual.value<>qryClienteokQtd.value then
                tabCliente.Tabs[i].ImageIndex:=0
            else
                tabCliente.Tabs[i].ImageIndex:=1;
end;



procedure TfrmEscala.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbEscalaP.Close;
    dbEscalaHM.Close;
    dbEscalaHMDiaria.Close;
    dbEscalaM.Close;

    dbEscalaHE.Close;
    dbEscalaHEDiaria.Close; 
    dbEscalaE.Close;

    dbEscalaBusca.Close;

    dbFerias.Close;
    dbEscalaH.Close;
    dbCliente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbRegiao.Close;
end;

procedure TfrmEscala.FormShow(Sender: TObject);
var i,c:integer;
begin
    dtpFim.Date:=date-1;

    dbCliente.Open;
    qryClienteok.Open;
    dbHospital.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbRegiao.Open;
    dbServico.Open;

    MontaPagina;
    dtpFim.Date:=date-1;

    dbEscalaP.SQL.Text:='Select * from EscalaPadrao,Hospital '+
                        'where EscalaPadrao.Hospital=Hospital.Hospital and '+
                        '      (EscalaPadrao.DataFim is null or EscalaPadrao.DataFim>:Data) '+
                        'order by Cliente,Regiao,Nome,Tipo,Servico ';
    dbEscalaP.ParamByName('Data').asdate:=dtpFim.date;
    dbEscalaP.Open;

    dbEscalaHM.SQL.Text:='Select * from Escala '+
                         'where Tipo='+QuotedStr('M')+' '+
                         'order by Cliente,Hospital,Tipo,Servico,Auditor ';
    dbEscalaHM.Open;

    dbEscalaHMDiaria.SQL.Text:='Select * from EscalaDiaria '+
                               'where Tipo='+QuotedStr('M')+' '+
                               'order by Cliente,Hospital,Tipo,Servico,DataInicio desc,Auditor';
    dbEscalaHMDiaria.Open;

    dbEscalaHE.SQL.Text:='Select * from Escala '+
                         'where Tipo='+QuotedStr('E')+' '+
                         'order by Cliente,Hospital,Tipo,Servico,Auditor ';
    dbEscalaHE.Open;

    dbEscalaHEDiaria.SQL.Text:='Select * from EscalaDiaria '+
                               'where Tipo='+QuotedStr('E')+' '+
                               'order by Cliente,Hospital,Tipo,Servico,DataInicio desc,Auditor';
    dbEscalaHEDiaria.Open;

    dbEscalaM.SQL.Text:='Select * from EscalaDiaria '+
                        'where Tipo='+QuotedStr('M')+' '+
                        'order by ClienteID,Hospital,Servico,DataInicio desc ';
    dbEscalaM.Open;

    dbEscalaE.SQL.Text:='Select * from EscalaDiaria '+
                        'where Tipo='+QuotedStr('E')+' '+
                        'order by ClienteID,Hospital,Servico,DataInicio desc ';
    dbEscalaE.Open;

    dbEscalaH.SQL.Text:='Select * from EscalaDiaria '+
                        'order by ClienteID,Tipo,Auditor,DataInicio desc ';
    dbEscalaH.Open;

    dbEscalaBusca.SQL.Text:='Select * from Escala '+
                             'order by Cliente,Tipo,Auditor ';
    dbEscalaBusca.Open;

    dbFerias.SQL.Text:='Select * from Ferias '+
                       'order by Tipo,Auditor,DataInicio desc';
    dbFerias.Open;

    if dbEscalaPTipo.value='M' then
        pagTipo.TabOrder:=0;
    if dbEscalaPTipo.value='E' then
        pagTipo.TabOrder:=1;
    cmpMedico.caption:='Escala '+dbEscalaHMDiariaAuditorNome.value;
    cmpEnfermeiro.caption:='Escala '+dbEscalaHEDiariaAuditorNome.value;
    cmpHospital.Caption:='Escala '+dbEscalaPHospitalNome.value;
    ifecha:=false;
    calMed.Date:=date;
    calEnf.Date:=date;
    calMed.Refresh;
    calEnf.Refresh;
end;

procedure TfrmEscala.dbEscalaPFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if dbCliente.Active then
        accept:=dbEscalaPClienteID.value=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
end;

procedure TfrmEscala.dbEscalaPAfterInsert(DataSet: TDataSet);
var icli:string;
begin
    icli:=tabCliente.Tabs[TabCliente.ActiveTabIndex].Caption;
    dbCliente.Locate('ClienteID',icli,[]);
    dbEscalaPCliente.value:=dbClienteCliente.value;
    dbEscalaPClienteId.value:=dbClienteClienteID.value;
    dbEscalaPQtd.value:=1;
    dbEscalaPQtdAtual.value:=0;
end;

procedure TfrmEscala.dbEscalaHMAfterInsert(DataSet: TDataSet);
begin
    dbEscalaHMCliente.value:=dbEscalaPCliente.value;
    dbEscalaHMClienteID.value:=dbEscalaPClienteID.value;
    dbEscalaHMHospital.value:=dbEscalaPHospital.value;
    dbEscalaHMTipo.value:='M';
    dbEscalaHMServico.value:=dbEscalaPServico.value;
end;

procedure TfrmEscala.cmdNovoPClick(Sender: TObject);
begin
    dbEscalaP.Insert;
    grdEscala.SetFocus;
end;

procedure TfrmEscala.cmdGravaPClick(Sender: TObject);
begin
    dbEscalaP.Post;
end;

procedure TfrmEscala.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;

    iResultado:=Application.MessageBox('Confirme a exclusão. Os Auditores desta escala tambem serão apagados','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    if dbEscalaPTipo.value='M' then
        while dbEscalaHM.RecordCount>0 do
            dbEscalaHM.Delete;

    dbEscalaP.Delete;
end;

procedure TfrmEscala.dsEscalaPStateChange(Sender: TObject);
begin
     cmdNovoP.Default:=dbEscalaP.State in [dsBrowse];
     cmdExcluiP.Enabled:=(dbEscalaP.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEscalaP.RecordCount<>0);
     cmdGravaP.Enabled:=dbEscalaP.State in [dsEdit,dsInsert];
     cmdGravaP.Default:=dbEscalaP.State in [dsEdit,dsInsert];
     cmdFechaP.Default:=dbEscalaP.State in [dsBrowse];
end;

procedure TfrmEscala.dbEscalaPBeforePost(DataSet: TDataSet);
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;
    dbEscalaPRegiao.value:=dbHospitalRegiao.value;
    if dbEscalaPHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbEscalaPTipo.value='' then
    begin
        ShowMessage('Selecione o tipo Med/Enf');
        abort;
    end;
    if dbEscalaPServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    dbEscalaPDataInclusao.value:=date;
    dbEscalaPUsuario.value:=iUsuario;
end;

procedure TfrmEscala.dbEscalaPTipoGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    if dbEscalaPTipo.value='M' then
       text:='MED';
    if dbEscalaPTipo.value='E'  then
       text:='ENF';
end;

procedure TfrmEscala.dbEscalaPTipoSetText(Sender: TField;
  const Text: String);
begin
    if text='MED' then
        dbEscalaPTipo.value:='M';
    if text='ENF' then
        dbEscalaPTipo.value:='E';
end;

procedure TfrmEscala.grdEscalaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbEscalaPQtd.Value>dbEscalaPQtdAtual.value then
        grdEscala.Canvas.Font.Color:=clRed;
     if dbEscalaPQtd.Value<dbEscalaPQtdAtual.value then
        grdEscala.Canvas.Font.Color:=clRed;

     grdEscala.DefaultDrawDataCell(Rect,grdEscala.Columns[DataCol].field,State);
end;

procedure TfrmEscala.dbEscalaPAfterScroll(DataSet: TDataSet);
begin
    if dbEscalaPTipo.value='M' then
    begin
        pagTipo.TabIndex:=0;
        pnlGeralM.Visible:=true;
        pnlGeralE.Visible:=false;
    end;
    if dbEscalaPTipo.value='E' then
    begin
        pagTipo.TabIndex:=1;
        pnlGeralM.Visible:=false;
        pnlGeralE.Visible:=true;
    end;
    cmpMedico.caption:='Escala '+dbEscalaHMDiariaAuditorNome.value;
    cmpEnfermeiro.caption:='Escala '+dbEscalaHEDiariaAuditorNome.value;
    cmpHospital.Caption:='Escala '+dbEscalaPHospitalNome.value;
    dsEscalaHMStateChange(dbEscalaHM);
    dsEscalaHEStateChange(dbEscalaHE);
    dsEscalaHMDiariaStateChange(dbEscalaHMDiaria);
    dsEscalaHEDiariaStateChange(dbEscalaHEDiaria);
end;

procedure TfrmEscala.cmdNovoHMClick(Sender: TObject);
begin
    dbEscalaHM.Insert;
    grdMedico.setFocus;
end;

procedure TfrmEscala.cmdGravaHMClick(Sender: TObject);
begin
    dbEscalaHM.Post;
end;

procedure TfrmEscala.cmdExcluiHMClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro. As escalas diarias não serão apagadas','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbEscalaHM.Delete;
end;

procedure TfrmEscala.dbEscalaHCalcFields(DataSet: TDataSet);
begin
    if dbEscalaHTipo.value='M' then
    begin
        dbEscalaHAuditorNome.value:=dbEscalaHMedicoNome.Value;
        dbEscalaHTipoTexto.value:='MED';
    end;
    if dbEscalaHTipo.value='E' then
    begin
        dbEscalaHAuditorNome.value:=dbEscalaHEnfermeiroNome.Value;
        dbEscalaHTipoTexto.value:='ENF';
    end;    
end;

procedure TfrmEscala.dsEscalaHMStateChange(Sender: TObject);
begin
    cmdNovoHM.Default:=dbEscalaHM.State in [dsBrowse];
    cmdExcluiHM.Enabled:=(dbEscalaHM.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEscalaHM.RecordCount<>0);
    cmdGravaHM.Enabled:=dbEscalaHM.State in [dsEdit,dsInsert];
    cmdGravaHM.Default:=dbEscalaHM.State in [dsEdit,dsInsert];
end;

procedure TfrmEscala.cmdNovoHEClick(Sender: TObject);
begin
    dbEscalaHE.Insert;
    grdEnfermeiro.setFocus;
end;

procedure TfrmEscala.cmdGravaHEClick(Sender: TObject);
begin
    dbEscalaHE.Post;
end;

procedure TfrmEscala.cmdExcluiHEClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro. As escalas diarias não serão apagadas','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbEscalaHE.Delete;
end;

procedure TfrmEscala.dsEscalaHEStateChange(Sender: TObject);
begin
     cmdNovoHE.Default:=dbEscalaHE.State in [dsBrowse];
     cmdExcluiHE.Enabled:=(dbEscalaHE.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEscalaHE.RecordCount<>0);
     cmdGravaHE.Enabled:=dbEscalaHE.State in [dsEdit,dsInsert];
     cmdGravaHE.Default:=dbEscalaHE.State in [dsEdit,dsInsert];
end;

procedure TfrmEscala.dbEscalaHEAfterInsert(DataSet: TDataSet);
begin
    dbEscalaHECliente.value:=dbEscalaPCliente.value;
    dbEscalaHEClienteID.value:=dbEscalaPClienteID.value;
    dbEscalaHEHospital.value:=dbEscalaPHospital.value;
    dbEscalaHETipo.value:='E';
    dbEscalaHEServico.value:=dbEscalaPServico.value;
end;

procedure TfrmEscala.dbEscalaHMAfterPost(DataSet: TDataSet);
begin
    iEscala:=dbEscalaHMEscala.value;

    dbEscalaP.Edit;
    dbEscalaPQtdAtual.value:=dbEscalaHM.RecordCount;
    dbEscalaP.Post;

    dbEscalaHMDiaria.Insert;
    dbEscalaHMDiariaAuditor.value:=iAuditor;
    dbEscalaHMDiariaEscala.value:=iEscala;
    dbEscalaHMDiaria.Post;

    dbEscalaH.Refresh;
    dbEscalaM.Refresh;
end;

procedure TfrmEscala.dbEscalaHMAfterDelete(DataSet: TDataSet);
begin
    dbEscalaP.Edit;
    dbEscalaPQtdAtual.value:=dbEscalaHM.RecordCount;
    dbEscalaP.Post;
    dbEscalaH.Refresh;
    dbEscalaM.Refresh;
end;

procedure TfrmEscala.dbEscalaHEAfterDelete(DataSet: TDataSet);
begin
    dbEscalaP.Edit;
    dbEscalaPQtdAtual.value:=dbEscalaHE.RecordCount;
    dbEscalaP.Post;
    dbEscalaH.Refresh;
    dbEscalaE.Refresh;
end;

procedure TfrmEscala.dbEscalaHEAfterPost(DataSet: TDataSet);
begin
    iEscala:=dbEscalaHEEscala.value;

    dbEscalaP.Edit;
    dbEscalaPQtdAtual.value:=dbEscalaHE.RecordCount;
    dbEscalaP.Post;

    dbEscalaHEDiaria.Insert;
    dbEscalaHEDiariaAuditor.value:=iAuditor;
    dbEscalaHEDiariaEscala.value:=iEscala;
    dbEscalaHEDiaria.Post;

    dbEscalaE.Refresh;
    dbEscalaM.Refresh;
end;

procedure TfrmEscala.cmdFeriasClick(Sender: TObject);
begin
    if frmFerias=nil then
      Application.CreateForm(TfrmFerias, frmFerias);
    frmFerias.Show;
    dbEscalaHM.Refresh;
    dbEscalaHE.Refresh;
    dbEscalaM.Refresh;
    dbEscalaE.Refresh;
    dbEscalaH.Refresh;
end;

procedure TfrmEscala.cmdConfereClick(Sender: TObject);
var i,iqtd,iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a conferencia de todas escalas.','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    for i:=0 to itottab do
    begin
        tabCliente.ActiveTabIndex:=i;
        dbEscalaP.First;
        while not dbEscalaP.Eof do begin
            if dbEscalaPTipo.value='M' then
            begin
                dbEscalaHM.Refresh;
                iqtd:=dbEscalaHM.RecordCount;
            end
            else
            begin
                dbEscalaHE.Refresh;
                iqtd:=dbEscalaHE.RecordCount;
            end;
            if dbEscalaPQtdAtual.value<>iqtd then
            begin
                dbEscalaP.Edit;
                dbEscalaPQtdAtual.value:=iQtd;
                dbEscalaP.Post;
            end;
            AtualizaPagina;
            dbEscalaP.Next;
        end;
    end;
    tabCliente.ActiveTabIndex:=0;
    ShowMessage('Escalas conferidas com sucesso');
end;

procedure TfrmEscala.BitBtn1Click(Sender: TObject);
begin
    if frmRelEscalas=nil then
      Application.CreateForm(TfrmRelEscalas, frmRelEscalas);
    frmRelEscalas.ShowModal;
end;

procedure TfrmEscala.BitBtn2Click(Sender: TObject);
var iResultado:integer;
begin
    dbEscalaP.ParamByName('Data').asdate:=dtpFim.date;
    dbEscalaP.Refresh;

    dbEscalaHM.Refresh;
    dbEscalaHE.Refresh;
    dbEscalaHMDiaria.Refresh;
    dbEscalaHEDiaria.Refresh;
    dbEscalaM.Refresh;
    dbEscalaE.Refresh;
    dbEscalaH.Refresh;
    dbEscalaBusca.Refresh;
    dbFerias.Refresh;

    ShowMessage('Escalas atualizadas com sucesso')
end;

procedure TfrmEscala.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkCliente.Checked then
        accept:=dbClienteDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmEscala.chkClienteClick(Sender: TObject);
begin
    dbCliente.Refresh;
    MontaPagina;
end;

procedure TfrmEscala.chkMedicoClick(Sender: TObject);
begin
    dbAuditor.Refresh;
    dbEscalaHM.Refresh;
    dbEscalaM.Refresh;
    dbEscalaH.Refresh;
end;

procedure TfrmEscala.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkMedico.Checked then
        accept:=dbAuditorDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmEscala.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkEnfermeiro.Checked then
        accept:=dbEnfermeiroDataFim.IsNull
    else
        accept:=true;
end;

procedure TfrmEscala.chkEnfermeiroClick(Sender: TObject);
begin
    dbEnfermeiro.Refresh;
    dbEscalaHE.Refresh;
    dbEscalaE.Refresh;
    dbEscalaH.Refresh;
end;


procedure TfrmEscala.tabClienteClick(Sender: TObject);
begin
    dbEscalaP.Refresh;
end;

procedure TfrmEscala.dbEscalaPAfterPost(DataSet: TDataSet);
begin
    if ifecha=true then //Fechar todos as escalas do hospital

    AtualizaPagina;
    ifecha:=true;
end;

procedure TfrmEscala.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoValorizado.value=true;
end;

procedure TfrmEscala.dbEscalaPAfterRefresh(DataSet: TDataSet);
begin
    dsEscalaPStateChange(dbEscalaP);
end;

procedure TfrmEscala.grdAuditorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdAuditor.DefaultDrawDataCell(Rect,grdAuditor.Columns[DataCol].field,State);

end;

procedure TfrmEscala.grdHospitalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//     if dbEscalaHCoberturaTipo.Value='C' then
//        grdHospital.Canvas.Font.Color:=clNavy;

     grdHospital.DefaultDrawDataCell(Rect,grdHospital.Columns[DataCol].field,State);

end;

procedure TfrmEscala.dbEscalaHMBeforeEdit(DataSet: TDataSet);
begin
    ShowMessage('Impossivel alterar. Exclua e recadastre o registro');
    abort;
end;

procedure TfrmEscala.dbEscalaHEBeforeEdit(DataSet: TDataSet);
begin
    ShowMessage('Impossivel alterar. Exclua e recadastre o registro');
    abort;
end;

procedure TfrmEscala.dbEscalaHMDiariaAfterInsert(DataSet: TDataSet);
begin
    dbEscalaHMDiariaEscala.value:=dbEscalaHMEscala.value;
    dbEscalaHMDiariaCliente.value:=dbEscalaHMCliente.value;
    dbEscalaHMDiariaClienteID.value:=dbEscalaHMClienteID.value;
    dbEscalaHMDiariaHospital.value:=dbEscalaHMHospital.value;
    dbEscalaHMDiariaTipo.value:='M';
    dbEscalaHMDiariaServico.value:=dbEscalaHMServico.value;
    dbEscalaHMDiariaCobertura.value:=0;
    dbEscalaHMDiariaDataInicio.value:=date;
    dbEscalaHMDiariaDataInclusao.value:=date;
    dbEscalaHMDiariaUsuario.value:=iUsuario;
    if (dbEscalaHMServico.value='V') or  (dbEscalaHMServico.value='VE') then
        dbEscalaHMDiariaLibera.value:=''
    else
        dbEscalaHMDiariaLibera.value:='N';


end;

procedure TfrmEscala.dbEscalaHMDiariaBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
        abort;
    dbFerias.Refresh;
    dbFerias.Locate('Tipo;Auditor',VarArrayof([dbEscalaHMDiariaTipo.value,dbEscalaHMDiariaAuditor.value]),[]);
    while (dbFeriasTipo.value=dbEscalaHMDiariaTipo.value) and
          (dbFeriasAuditor.value=dbEscalaHMDiariaAuditor.value) and
          (not dbFerias.eof) do
    begin
        if (dbEscalaHMDiariaDataInicio.value>=dbFeriasDataInicio.value) and
           (dbEscalaHMDiariaDataInicio.value<=dbFeriasDataFim.value) then
        begin
            ShowMessage('Auditor ausente na data selecionada');
            abort;
        end;
        dbFerias.Next;
    end;
    if dbEscalaHMDiariaLibera.value='' then
    begin
        ShowMessage('Selecione se o Médico libera ou não visitas');
        abort;
    end;
end;

procedure TfrmEscala.dbEscalaHEDiariaAfterInsert(DataSet: TDataSet);
begin
    dbEscalaHEDiariaEscala.value:=dbEscalaHEEscala.value;
    dbEscalaHEDiariaCliente.value:=dbEscalaHECliente.value;
    dbEscalaHEDiariaClienteID.value:=dbEscalaHEClienteID.value;
    dbEscalaHEDiariaHospital.value:=dbEscalaHEHospital.value;
    dbEscalaHEDiariaTipo.value:='E';
    dbEscalaHEDiariaServico.value:=dbEscalaHEServico.value;
    dbEscalaHEDiariaCobertura.value:=0;
    dbEscalaHEDiariaDataInicio.value:=date;
    dbEscalaHEDiariaDataInclusao.value:=date;
    dbEscalaHEDiariaUsuario.value:=iUsuario;
    if (dbEscalaHEServico.value='V') or  (dbEscalaHEServico.value='VE') then
        dbEscalaHEDiariaLibera.value:=''
    else
        dbEscalaHEDiariaLibera.value:='N';
end;

procedure TfrmEscala.dbEscalaHMAfterScroll(DataSet: TDataSet);
begin
    cmpMedico.caption:='Escala '+dbEscalaHMDiariaAuditorNome.value;
end;

procedure TfrmEscala.dbEscalaHMDiariaAfterScroll(DataSet: TDataSet);
begin
    cmpMedico.caption:='Escala '+dbEscalaHMDiariaAuditorNome.value;
end;

procedure TfrmEscala.dbEscalaHEAfterScroll(DataSet: TDataSet);
begin
    cmpEnfermeiro.caption:='Escala '+dbEscalaHEDiariaAuditorNome.value;
end;

procedure TfrmEscala.dbEscalaHEDiariaAfterScroll(DataSet: TDataSet);
begin
    cmpEnfermeiro.caption:='Escala '+dbEscalaHEDiariaAuditorNome.value;
end;

procedure TfrmEscala.cmdGravaHMDClick(Sender: TObject);
begin
    dbEscalaHMDiaria.Post;
end;

procedure TfrmEscala.cmdExcluiHMDClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbEscalaHMDiaria.Delete;
end;

procedure TfrmEscala.cmdGravaHEDClick(Sender: TObject);
begin
    dbEscalaHEDiaria.Post;
end;

procedure TfrmEscala.cmdExcluiHEDClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbEscalaHEDiaria.Delete;
end;

procedure TfrmEscala.dsEscalaHMDiariaStateChange(Sender: TObject);
begin
    cmdExcluiHMD.Enabled:=(dbEscalaHMDiaria.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEscalaHMDiaria.RecordCount<>0);
    cmdGravaHMD.Enabled:=dbEscalaHMDiaria.State in [dsEdit,dsInsert];
    cmdGravaHMD.Default:=dbEscalaHMDiaria.State in [dsEdit,dsInsert];
end;

procedure TfrmEscala.dsEscalaHEDiariaStateChange(Sender: TObject);
begin
     cmdExcluiHED.Enabled:=(dbEscalaHEDiaria.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEscalaHEDiaria.RecordCount<>0);
     cmdGravaHED.Enabled:=dbEscalaHEDiaria.State in [dsEdit,dsInsert];
     cmdGravaHED.Default:=dbEscalaHEDiaria.State in [dsEdit,dsInsert];
end;

procedure TfrmEscala.dbEscalaHMDiariaAfterPost(DataSet: TDataSet);
var idata:Tdatetime;
begin
    dbEscalaHMDiaria.Refresh;
end;

procedure TfrmEscala.calMedClick(Sender: TObject);
begin
    dbEscalaHMDiaria.Locate('DataInicio',calMed.Date,[]);
end;

procedure TfrmEscala.calEnfClick(Sender: TObject);
begin
    dbEscalaHEDiaria.Locate('DataInicio',calMed.Date,[]);
end;

procedure TfrmEscala.rdgBuscaClick(Sender: TObject);
begin
    case rdgBusca.ItemIndex of
    0:begin
        cmbHospital.Visible:=true;
        cmbMedico.Visible:=false;
        cmbEnfermeiro.Visible:=false;
      end;
    1:begin
        cmbHospital.Visible:=false;
        cmbMedico.Visible:=true;
        cmbEnfermeiro.Visible:=false;
      end;
    2:begin
        cmbHospital.Visible:=false;
        cmbMedico.Visible:=false;
        cmbEnfermeiro.Visible:=true;
      end;
    end;
end;

procedure TfrmEscala.cmbHospitalClick(Sender: TObject);
begin
    dbEscalaP.Locate('Cliente;Hospital',VarArrayof([dbEscalaPCliente.value,cmbHospital.KeyValue]),[]);
end;

procedure TfrmEscala.cmbMedicoClick(Sender: TObject);
var ihospital:integer;
var iservico:string;
begin
    dbEscalaBusca.Locate('Cliente;Tipo;Auditor',VarArrayof([dbEscalaPCliente.value,'M',cmbMedico.KeyValue]),[]);
    ihospital:=dbEscalaBuscaHospital.value;
    iservico:=dbEscalaBuscaServico.value;
    dbEscalaP.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([dbEscalaPCliente.value,ihospital,'M',iservico]),[]);
end;

procedure TfrmEscala.cmbEnfermeiroClick(Sender: TObject);
var ihospital:integer;
var iservico:string;
begin
    dbEscalaBusca.Locate('Cliente;Tipo;Auditor',VarArrayof([dbEscalaPCliente.value,'E',cmbEnfermeiro.KeyValue]),[]);
    ihospital:=dbEscalaBuscaHospital.value;
    iservico:=dbEscalaBuscaServico.value;
    dbEscalaP.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([dbEscalaPCliente.value,ihospital,'E',iservico]),[]);

end;

procedure TfrmEscala.dbEscalaHMBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    if dbEscalaHM.RecordCount>=dbEscalaPQtd.value then
    begin
        ShowMessage('Quantidade de prestadores necessarios para a escala ja atingida');
        abort;
    end;
end;

procedure TfrmEscala.dbEscalaHEBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    if dbEscalaHE.RecordCount>=dbEscalaPQtd.value then
    begin
        ShowMessage('Quantidade de prestadores necessarios para a escala ja atingida');
        abort;
    end;
end;

procedure TfrmEscala.dbEscalaHEDiariaBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    dbFerias.Locate('Tipo;Auditor',VarArrayof([dbEscalaHEDiariaTipo.value,dbEscalaHEDiariaAuditor.value]),[]);
    while (dbFeriasTipo.value=dbEscalaHEDiariaTipo.value) and
          (dbFeriasAuditor.value=dbEscalaHEDiariaAuditor.value) and
          (not dbFerias.eof) do
    begin
        if (dbEscalaHEDiariaDataInicio.value>=dbFeriasDataInicio.value) and
           (dbEscalaHEDiariaDataInicio.value<=dbFeriasDataFim.value) then
        begin
            ShowMessage('Enfermeiro ausente na data selecionada');
            abort;
        end;
        dbFerias.Next;
    end;
    if dbEscalaHEDiariaLibera.value='' then
    begin
        ShowMessage('Selecione se o Enfermeiro libera ou não visitas');
        abort;
    end;

end;

procedure TfrmEscala.dbEscalaHEDiariaAfterPost(DataSet: TDataSet);
var idata:Tdatetime;
begin
    dbEscalaHEDiaria.Refresh;
end;

procedure TfrmEscala.grdMedDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.grdEnfDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_INSERT) then abort;
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.cmdFiltraHMDClick(Sender: TObject);
begin
    dbEscalaHMDiaria.Refresh;
end;

procedure TfrmEscala.cmdFiltraHEDClick(Sender: TObject);
begin
    dbEscalaHEDiaria.Refresh;
end;

procedure TfrmEscala.dbEscalaHMDiariaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if cmdFiltraHMD.Down then
        accept:=dbEscalaHMDiariaEscala.value=dbEscalaHMEscala.value
    else
        accept:=true;
end;

procedure TfrmEscala.dbEscalaHEDiariaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if cmdFiltraHED.Down then
        accept:=dbEscalaHEDiariaEscala.value=dbEscalaHEEscala.value
    else
        accept:=true;
end;

procedure TfrmEscala.dbEscalaHMBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iAuditor:=dbEscalaHMAuditor.value;
end;

procedure TfrmEscala.dbEscalaHEBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iAuditor:=dbEscalaHEAuditor.value;
end;

procedure TfrmEscala.grdEnfDDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbEscalaHEDiariaEscala.Value<>dbEscalaHEEscala.value then
        grdEnfD.Canvas.Font.Color:=$00FF8000;

     grdEnfD.DefaultDrawDataCell(Rect,grdEnfD.Columns[DataCol].field,State);

end;

procedure TfrmEscala.grdMedDDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbEscalaHMDiariaEscala.Value<>dbEscalaHMEscala.value then
        grdMedD.Canvas.Font.Color:=$00FF8000;

     grdMedD.DefaultDrawDataCell(Rect,grdMedD.Columns[DataCol].field,State);
end;

procedure TfrmEscala.dbEscalaPBeforeDelete(DataSet: TDataSet);
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmEscala.dbEscalaPBeforeInsert(DataSet: TDataSet);
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmEscala.dbEscalaPBeforeEdit(DataSet: TDataSet);
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmEscala.dbEscalaHMBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmEscala.dbEscalaHEBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmEscala.dbEscalaHMDiariaBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmEscala.dbEscalaHMDiariaBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmEscala.dbEscalaHEDiariaBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmEscala.dbEscalaHEDiariaBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmEscala.cmdRelEscalaGClick(Sender: TObject);
var iCli,iTipo:string;
var iHosp,iOrdem,iAuditor:integer;
var ilegenda:string;
var iFim:Tdate;
begin
     with dmRelatorio do
     begin
         iFim:=dtpFim.date;
         qryEscala.SQL.Clear;
         qryEscala.SQL.Text:='Select * from Escala,EscalaPadrao, Hospital '+
                             'where Escala.Hospital=Hospital.Hospital and '+
                             'Escala.Cliente=EscalaPadrao.Cliente and '+
                             'Escala.Hospital=EscalaPadrao.Hospital and '+
                             'Escala.Tipo=EscalaPadrao.Tipo and '+
                             'Escala.Servico=EscalaPadrao.Servico and '+
                             '     (EscalaPadrao.DataFim>=:Data or EscalaPadrao.DataFim is null) '+
                             'order by Escala.ClienteID,Escala.Hospital,Escala.Tipo,Escala.Auditor,Escala.Servico';
         qryEscala.ParamByName('Data').Value:=iFim;
         qryEscala.Open;
         if qryEscala.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEscala.Close;
            abort;
        end;

        qryEscalaG.Close;
        qryEscalaG.SQL.Text:='Delete from relEscala';
        qryEscalaG.Execute;
        qryEscalaG.SQL.Text:='Select * from relEscala order by Regiao,Hospital';
        qryEscalaG.Open;

        iOrdem:=1;
        qryEscala.First;
        while not qryEscala.eof do
        begin
            iCli:=qryEscalaClienteId.value;
            while (not qryEscala.eof) and
                  (qryEscalaClienteId.value=iCli) do
            begin
                iHosp:=qryEscalaHospital.value;
                while (not qryEscala.eof) and
                      (qryEscalaClienteId.value=iCli) and
                      (qryEscalaHospital.value=iHosp) do
                begin
                    if qryEscalaG.Locate('Regiao;Hospital',VarArrayof([qryEscalaRegiaoNome.value,qryEscalaNome.Value]),[]) then
                        qryEscalaG.Edit
                    else
                    begin
                        qryEscalaG.Insert;
                        qryEscalaGRegiao.value:=qryEscalaRegiaoNome.value;
                        qryEscalaGHospital.value:=qryEscalaNome.Value;
                    end;
                    case iOrdem of
                    1:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente1',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente1.value:=1;
                    end;
                    2:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente2',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente2.value:=1;
                    end;
                    3:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente3',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente3.value:=1;
                    end;
                    4:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente4',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente4.value:=1;
                    end;
                    5:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente5',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente5.value:=1;
                    end;
                    6:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente6',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente6.value:=1;
                    end;
                    7:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente7',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente7.value:=1;
                    end;
                    8:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente8',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente8.value:=1;
                    end;
                    9:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente9',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente9.value:=1;
                    end;
                    10:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente10',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente10.value:=1;
                    end;
                    11:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente11',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente11.value:=1;
                    end;
                    12:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente12',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente12.value:=1;
                    end;
                    13:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente13',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente13.value:=1;
                    end;
                    14:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente14',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente14.value:=1;
                    end;
                    15:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente15',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente15.value:=1;
                    end;
                    16:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente16',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente16.value:=1;
                    end;
                    17:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente17',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente17.value:=1;
                    end;
                    18:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente18',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente18.value:=1;
                    end;
                    19:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente19',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente19.value:=1;
                    end;
                    20:begin
                       frmMenu.rvBBAgenda.SetParam('Cliente20',LeftStr(qryEscalaClienteId.value,3));
                       qryEscalaGCliente20.value:=1;
                    end;
                    end;
                    while (not qryEscala.eof) and
                          (qryEscalaClienteId.value=iCli) and
                          (qryEscalaHospital.value=iHosp) do
                    begin
                       if qryEscalaTipo.value='M' then
                            qryEscalaGMedico.value:=qryEscalaGMedico.value+qryEscalaClienteId.value+'-'+qryEscalaServico.value+'-'+LeftStr(qryEscalaMedicoNome.value,30)+#13;
                        if qryEscalaTipo.value='E' then
                            qryEscalaGEnfermeiro.value:=qryEscalaGEnfermeiro.value+qryEscalaClienteId.value+'-'+qryEscalaServico.value+'-'+LeftStr(qryEscalaEnfermeiroNome.value,30)+#13;
                        qryEscala.Next;
                    end;
                end;
                qryEscalaG.Post;
            end;
            iOrdem:=iOrdem+1;
        end;

        ilegenda:='Legenda:';    
        qryEscalaG.Refresh;
        qryEscalaG.First;
        qryClienteok.First;
        while not qryClienteok.Eof do
        begin
            ilegenda:=ilegenda+LeftStr(qryClienteOKClienteId.value,3)+'-'+qryClienteokClienteId.Value+'  ';
            qryClienteOk.Next;
        end;

       frmMenu.rvBBAgenda.SetParam('Titulo','Relação de Escala Completa');
       frmMenu.rvBBAgenda.SetParam('Cliente',ilegenda);
       frmMenu.rvBBAgenda.SelectReport('relEscalaG',true);
       frmMenu.rvBBAgenda.Execute;
     end;

end;

procedure TfrmEscala.grdEscalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.grdMedicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.grdEnfermeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.grdAuditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.grdHospitalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmEscala.cmdAtuAgendaClick(Sender: TObject);
begin
   if not frmMenu.AcessoG('Escala')  then
      abort;

    if frmAtuAgenda=nil then
      Application.CreateForm(TfrmAtuAgenda, frmAtuAgenda);
    frmAtuAgenda.ShowModal;
end;

procedure TfrmEscala.cmdRelEscalaAClick(Sender: TObject);
begin
    if frmRelEscalaAltera=nil then
       Application.CreateForm(TfrmRelEscalaAltera, frmRelEscalaAltera);
    frmRelEscalaAltera.ShowModal;
end;

procedure TfrmEscala.cmdFechaPClick(Sender: TObject);
begin
    if frmEscalaFecha=nil then
        Application.CreateForm(TfrmEscalaFecha, frmEscalaFecha);
    frmEscalaFecha.ShowModal;
end;

procedure TfrmEscala.dbEscalaPCalcFields(DataSet: TDataSet);
begin
    if dbEscalaPQtd.value=dbEscalaPQtdAtual.value then
        dbEscalaPQtdOk.value:='S'
    else
        dbEscalaPQtdOk.value:='N'

end;

procedure TfrmEscala.BitBtn3Click(Sender: TObject);
var i,icli:integer;
begin
    i:=tabCliente.ActiveTabIndex;
    if tabCliente.Tabs[i].ImageIndex=1 then
    begin
        ShowMessage('Todas as escalas estão ok');
        abort;
   end;
   icli:=dbEscalaPCliente.value;
   qryBuscaEscalaP.sql.Text:='Select * from EscalaPadrao where cliente=:Cli and Qtd<>QtdAtual';
   qryBuscaEscalaP.ParambyName('cli').Value:=icli;
   qryBuscaEscalaP.Open;
   qryBuscaEscalaP.First;
   dbEscalaP.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([qryBuscaEscalaPCliente.value,
                                                                qryBuscaEscalaPHospital.value,
                                                                qryBuscaEscalaPTipo.value,
                                                                qryBuscaEscalaPServico.value]),[]);
   qryBuscaEscalaP.Close;
end;

procedure TfrmEscala.dbEscalaHMDiariaLiberaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbEscalaHMDiariaLibera.value='S' then
        text:='Sim';
    if dbEscalaHMDiariaLibera.value='N' then
        text:='Não';
end;

procedure TfrmEscala.dbEscalaHMDiariaLiberaSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
        dbEscalaHMDiariaLibera.value:='S';
    if text='Não' then
        dbEscalaHMDiariaLibera.value:='N';

end;

procedure TfrmEscala.dbEscalaHEDiariaLiberaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbEscalaHEDiariaLibera.value='S' then
        text:='Sim';
    if dbEscalaHEDiariaLibera.value='N' then
        text:='Não';

end;

procedure TfrmEscala.dbEscalaHEDiariaLiberaSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
        dbEscalaHEDiariaLibera.value:='S';
    if text='Não' then
        dbEscalaHEDiariaLibera.value:='N';

end;

end.

