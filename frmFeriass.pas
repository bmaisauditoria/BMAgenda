unit frmFeriass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DB, MemDS,
  DBAccess, MSAccess, Buttons, ToolWin, DBCtrls;

type
  TfrmFerias = class(TForm)
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmDataInicio: TDateTimeField;
    dbAdmDataFim: TDateTimeField;
    dsAdm: TDataSource;
    dsEnfermeiro: TDataSource;
    dsAuditor: TDataSource;
    dbFMed: TMSQuery;
    dbFMedAuditor: TIntegerField;
    dbFMedTipo: TStringField;
    dbFMedDataInicio: TDateTimeField;
    dbFMedDataFim: TDateTimeField;
    dbFMedUsuario: TStringField;
    dbFMedDataInclusao: TDateTimeField;
    dbFMedObs: TStringField;
    dsFMed: TDataSource;
    dbFMedMedicoNome: TStringField;
    dbFEnf: TMSQuery;
    dsFEnf: TDataSource;
    dbFAdm: TMSQuery;
    dsFAdm: TDataSource;
    dbFEnfAuditor: TIntegerField;
    dbFEnfTipo: TStringField;
    dbFEnfDataInicio: TDateTimeField;
    dbFEnfDataFim: TDateTimeField;
    dbFEnfUsuario: TStringField;
    dbFEnfDataInclusao: TDateTimeField;
    dbFEnfObs: TStringField;
    dbFEnfEnfermeiroNome: TStringField;
    dbFAdmAuditor: TIntegerField;
    dbFAdmTipo: TStringField;
    dbFAdmDataInicio: TDateTimeField;
    dbFAdmDataFim: TDateTimeField;
    dbFAdmUsuario: TStringField;
    dbFAdmDataInclusao: TDateTimeField;
    dbFAdmObs: TStringField;
    dbFAdmAdmNome: TStringField;
    dbEscalaEDCliente: TIntegerField;
    dbEscalaEDHospital: TIntegerField;
    dbEscalaEDTipo: TStringField;
    dbEscalaEDServico: TStringField;
    dbEscalaEDAuditor: TIntegerField;
    dbEscalaEDDataInicio: TDateTimeField;
    dbEscalaEDDataFim: TDateTimeField;
    dbEscalaEDClienteID: TStringField;
    dbEscalaEDDataInclusao: TDateTimeField;
    dbEscalaEDUsuario: TStringField;
    dbEscalaMD: TMSQuery;
    dbEscalaMDCliente: TIntegerField;
    dbEscalaMDHospital: TIntegerField;
    dbEscalaMDTipo: TStringField;
    dbEscalaMDServico: TStringField;
    dbEscalaMDAuditor: TIntegerField;
    dbEscalaMDDataInicio: TDateTimeField;
    dbEscalaMDDataFim: TDateTimeField;
    dbEscalaMDClienteID: TStringField;
    dbEscalaMDDataInclusao: TDateTimeField;
    dbEscalaMDUsuario: TStringField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEnfermeiroUsuario: TStringField;
    dbAdmDataInclusao: TDateTimeField;
    dbAdmUsuario: TStringField;
    Panel1: TPanel;
    Panel3: TPanel;
    grdEnfermeiro: TDBGrid;
    Panel5: TPanel;
    cmdNovoE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    dbEscalaMDCobertura: TIntegerField;
    dbEscalaED: TMSQuery;
    dbFMedCobertura: TIntegerField;
    dbFEnfCobertura: TIntegerField;
    dbFAdmCobertura: TIntegerField;
    dbAuditorUsuario: TStringField;
    Panel8: TPanel;
    Calendario: TMonthCalendar;
    Panel9: TPanel;
    Label16: TLabel;
    CoolBar1: TCoolBar;
    txtCliente: TEdit;
    dbEscalaEDCobertura: TIntegerField;
    dbEscalaMDEscala: TIntegerField;
    dbEscalaEDEscala: TIntegerField;
    dbEscalaM: TMSQuery;
    dbEscalaE: TMSQuery;
    dbEscalaMCliente: TIntegerField;
    dbEscalaMHospital: TIntegerField;
    dbEscalaMTipo: TStringField;
    dbEscalaMAuditor: TIntegerField;
    dbEscalaMServico: TStringField;
    dbEscalaMClienteID: TStringField;
    dbEscalaMDataInclusao: TDateTimeField;
    dbEscalaMUsuario: TStringField;
    dbEscalaMEscala: TIntegerField;
    dbEscalaECliente: TIntegerField;
    dbEscalaEHospital: TIntegerField;
    dbEscalaETipo: TStringField;
    dbEscalaEAuditor: TIntegerField;
    dbEscalaEServico: TStringField;
    dbEscalaEClienteID: TStringField;
    dbEscalaEDataInclusao: TDateTimeField;
    dbEscalaEUsuario: TStringField;
    dbEscalaEEscala: TIntegerField;
    dsEscalaM: TDataSource;
    dsEscalaE: TDataSource;
    dbEscalaCM: TMSQuery;
    dbEscalaCMEscala: TIntegerField;
    dbEscalaCMCliente: TIntegerField;
    dbEscalaCMHospital: TIntegerField;
    dbEscalaCMTipo: TStringField;
    dbEscalaCMServico: TStringField;
    dbEscalaCMDataInicio: TDateTimeField;
    dbEscalaCMAuditor: TIntegerField;
    dbEscalaCMDataFim: TDateTimeField;
    dbEscalaCMClienteID: TStringField;
    dbEscalaCMCobertura: TIntegerField;
    dbEscalaCMDataInclusao: TDateTimeField;
    dbEscalaCMUsuario: TStringField;
    dbEscalaCE: TMSQuery;
    dbEscalaCEEscala: TIntegerField;
    dbEscalaCECliente: TIntegerField;
    dbEscalaCEHospital: TIntegerField;
    dbEscalaCETipo: TStringField;
    dbEscalaCEServico: TStringField;
    dbEscalaCEDataInicio: TDateTimeField;
    dbEscalaCEAuditor: TIntegerField;
    dbEscalaCEDataFim: TDateTimeField;
    dbEscalaCEClienteID: TStringField;
    dbEscalaCECobertura: TIntegerField;
    dbEscalaCEDataInclusao: TDateTimeField;
    dbEscalaCEUsuario: TStringField;
    pagCob: TPageControl;
    tabMed: TTabSheet;
    tabEnf: TTabSheet;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    grdMedico: TDBGrid;
    Panel7: TPanel;
    cmdNovoM: TBitBtn;
    cmdGravaM: TBitBtn;
    cmdExcluiM: TBitBtn;
    Label2: TLabel;
    tabAdm: TTabSheet;
    Panel2: TPanel;
    grdAdm: TDBGrid;
    Panel6: TPanel;
    cmdNovoA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdExcluiA: TBitBtn;
    Label1: TLabel;
    Panel10: TPanel;
    dsCoberturaM: TDataSource;
    dsEscalaCE: TDataSource;
    dbCoberturaM: TMSQuery;
    dbCoberturaMEscala: TIntegerField;
    dbCoberturaMCliente: TIntegerField;
    dbCoberturaMHospital: TIntegerField;
    dbCoberturaMTipo: TStringField;
    dbCoberturaMServico: TStringField;
    dbCoberturaMDataInicio: TDateTimeField;
    dbCoberturaMAuditor: TIntegerField;
    dbCoberturaMDataFim: TDateTimeField;
    dbCoberturaMClienteID: TStringField;
    dbCoberturaMCobertura: TIntegerField;
    dbCoberturaMDataInclusao: TDateTimeField;
    dbCoberturaMUsuario: TStringField;
    dbCoberturaMMedicoNome: TStringField;
    dbCoberturaMDataCobertura: TDateTimeField;
    dbCoberturaMUsuarioC: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dsHospital: TDataSource;
    dbCoberturaMHospitalNome: TStringField;
    dbCoberturaE: TMSQuery;
    dsCoberturaE: TDataSource;
    dbCoberturaEEscala: TIntegerField;
    dbCoberturaECliente: TIntegerField;
    dbCoberturaEHospital: TIntegerField;
    dbCoberturaETipo: TStringField;
    dbCoberturaEServico: TStringField;
    dbCoberturaEDataInicio: TDateTimeField;
    dbCoberturaEAuditor: TIntegerField;
    dbCoberturaEDataFim: TDateTimeField;
    dbCoberturaEClienteID: TStringField;
    dbCoberturaECobertura: TIntegerField;
    dbCoberturaEDataInclusao: TDateTimeField;
    dbCoberturaEUsuario: TStringField;
    dbCoberturaEDataCobertura: TDateTimeField;
    dbCoberturaEUsuarioC: TStringField;
    dbCoberturaEEnfermeiroNome: TStringField;
    dbCoberturaEHospitalNome: TStringField;
    dbFerias: TMSQuery;
    dbFeriasAuditor: TIntegerField;
    dbFeriasTipo: TStringField;
    dbFeriasDataInicio: TDateTimeField;
    dbFeriasDataFim: TDateTimeField;
    dbFeriasUsuario: TStringField;
    dbFeriasDataInclusao: TDateTimeField;
    dbFeriasObs: TStringField;
    dbFeriasCobertura: TIntegerField;
    tabM: TTabControl;
    grdCobMed: TDBGrid;
    Panel11: TPanel;
    cmdExcluiCM: TBitBtn;
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
    cmdProrrogaM: TBitBtn;
    cmdProrrogaE: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbEscalaMDHospitalNome: TStringField;
    dbEscalaEDHospitalNome: TStringField;
    BitBtn3: TBitBtn;
    dbCoberturaMLibera: TStringField;
    dbCoberturaELibera: TStringField;
    Panel13: TPanel;
    tabE: TTabControl;
    grdCobEnf: TDBGrid;
    Panel12: TPanel;
    cmdExcluiCE: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbFMedAfterInsert(DataSet: TDataSet);
    procedure dbFEnfAfterInsert(DataSet: TDataSet);
    procedure dbFAdmAfterInsert(DataSet: TDataSet);
    procedure cmdNovoMClick(Sender: TObject);
    procedure cmdGravaMClick(Sender: TObject);
    procedure cmdExcluiMClick(Sender: TObject);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcluiAClick(Sender: TObject);
    procedure dsFMedStateChange(Sender: TObject);
    procedure dsFEnfStateChange(Sender: TObject);
    procedure qatateChange(Sender: TObject);
    procedure dbFMedAfterPost(DataSet: TDataSet);
    procedure txtClienteChange(Sender: TObject);
    procedure grdMedicoCellClick(Column: TColumn);
    procedure grdEnfermeiroCellClick(Column: TColumn);
    procedure grdAdmCellClick(Column: TColumn);
    procedure dbFMedBeforePost(DataSet: TDataSet);
    procedure dbFEnfBeforePost(DataSet: TDataSet);
    procedure dbFMedBeforeDelete(DataSet: TDataSet);
    procedure dbFEnfAfterPost(DataSet: TDataSet);
    procedure dbFEnfBeforeDelete(DataSet: TDataSet);
    procedure dbFAdmBeforeEdit(DataSet: TDataSet);
    procedure dbFAdmBeforePost(DataSet: TDataSet);
    procedure dbCoberturaMFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbCoberturaEFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbCoberturaMBeforeInsert(DataSet: TDataSet);
    procedure dbCoberturaEBeforeInsert(DataSet: TDataSet);
    procedure dbCoberturaEBeforeDelete(DataSet: TDataSet);
    procedure dbCoberturaMBeforePost(DataSet: TDataSet);
    procedure dbCoberturaEBeforePost(DataSet: TDataSet);
    procedure tabEChange(Sender: TObject);
    procedure tabMChange(Sender: TObject);
    procedure dbFMedBeforeInsert(DataSet: TDataSet);
    procedure dbFEnfBeforeInsert(DataSet: TDataSet);
    procedure dbFAdmBeforeDelete(DataSet: TDataSet);
    procedure dbFAdmBeforeInsert(DataSet: TDataSet);
    procedure dbCoberturaMBeforeEdit(DataSet: TDataSet);
    procedure dbCoberturaEBeforeEdit(DataSet: TDataSet);
    procedure grdMedicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdEnfermeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCobMedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCobEnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cmdExcluiCMClick(Sender: TObject);
    procedure dbCoberturaMBeforeDelete(DataSet: TDataSet);
    procedure cmdExcluiCEClick(Sender: TObject);
    procedure dbCoberturaMAfterPost(DataSet: TDataSet);
    procedure AtualizaAgendaMed;
    procedure AtualizaAgendaEnf;
    procedure AtualizaAgendaAdm;
    procedure dbCoberturaEAfterPost(DataSet: TDataSet);
    procedure dbFMedAfterCancel(DataSet: TDataSet);
    procedure dbFEnfAfterCancel(DataSet: TDataSet);
    procedure cmdProrrogaEClick(Sender: TObject);
    procedure dbFMedAfterEdit(DataSet: TDataSet);
    procedure dbFEnfAfterEdit(DataSet: TDataSet);
    procedure cmdProrrogaMClick(Sender: TObject);
    procedure dbFMedBeforeEdit(DataSet: TDataSet);
    procedure dbFEnfBeforeEdit(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbCoberturaMLiberaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbCoberturaMLiberaSetText(Sender: TField;
      const Text: String);
    procedure dbCoberturaELiberaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbCoberturaELiberaSetText(Sender: TField;
      const Text: String);
    procedure dbCoberturaMAfterEdit(DataSet: TDataSet);
    procedure dbCoberturaEAfterEdit(DataSet: TDataSet);
  private
    iAnterior,iNovo,iAtual:integer;
    iDataFim,iCobIni,iCobFim:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFerias: TfrmFerias;

implementation

uses frmPrincipal, frmRelCoberturas;

{$R *.dfm}

procedure TfrmFerias.AtualizaAgendaMed;
begin
    dbAgenda.Close;
    dbAgenda.SQL.Text:='Select * from Agenda '+
                       'where Cliente=:iCli and '+
                       '      Hospital=:iHosp and '+
                       '      Auditor=:iAud and '+
                       '      Servico=:iServ and '+
                       '      (Data>=:iIni and Data<=:iFim) '+
                       'order by Data desc, Cliente, Hospital ';
    dbAgenda.ParamByName('iCli').Value:=dbCoberturaMCliente.value;
    dbAgenda.ParamByName('iHosp').Value:=dbCoberturaMHospital.value;
    dbAgenda.ParamByName('iServ').Value:=dbCoberturaMServico.value;
    dbAgenda.ParamByName('iAud').Value:=iAtual;
    dbAgenda.ParamByName('iIni').asdate:=iCobIni;
    dbAgenda.ParamByName('iFim').asdate:=iCobFim;
    dbAgenda.Open;

    if dbAgenda.RecordCount>0 then
    begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            dbAgenda.Edit;
            dbAgendaAuditor.value:=iNovo;
            dbAgenda.Post;
            dbAgenda.Next;
        end;
    end;
end;

procedure TfrmFerias.AtualizaAgendaEnf;
begin
    dbAgenda.Close;
    dbAgenda.SQL.Text:='Select * from Agenda '+
                       'where Cliente=:iCli and '+
                       '      Hospital=:iHosp and '+
                       '      Enfermeiro=:iEnf and '+
                       '      Servico=:iServ and '+
                       '      Data>=:iIni and Data<=:iFim '+
                       'order by Data desc, Cliente, Hospital ';
    dbAgenda.ParamByName('iCli').Value:=dbCoberturaECliente.value;
    dbAgenda.ParamByName('iHosp').Value:=dbCoberturaEHospital.value;
    dbAgenda.ParamByName('iServ').Value:=dbCoberturaEServico.value;
    dbAgenda.ParamByName('iEnf').Value:=iAtual;
    dbAgenda.ParamByName('iIni').asdate:=iCobIni;
    dbAgenda.ParamByName('iFim').asdate:=iCobFim;
    dbAgenda.Open;

    if dbAgenda.RecordCount>0 then
    begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            dbAgenda.Edit;
            dbAgendaEnfermeiro.value:=iNovo;
            dbAgenda.Post;
            dbAgenda.Next;
        end;
    end;
end;

procedure TfrmFerias.AtualizaAgendaAdm;
begin
    dbAgenda.Close;
    dbAgenda.SQL.Text:='Select * from Agenda '+
                       'where Administrativo=:iAdm and '+
                       '      Data>=:iIni and Data<=:iFim '+
                       'order by Data desc';
    dbAgenda.ParamByName('iAdm').Value:=iAtual;
    dbAgenda.ParamByName('iIni').asdate:=dbFAdmDataInicio.value;
    dbAgenda.ParamByName('iFim').asdate:=dbFAdmDataFim.value;
    dbAgenda.Open;

    if dbAgenda.RecordCount>0 then
    begin
        dbAgenda.First;
        while not dbAgenda.eof do
        begin
            dbAgenda.Edit;
            dbAgendaAdministrativo.value:=0;
            dbAgenda.Post;
            dbAgenda.Next;
        end;
    end;
end;


procedure TfrmFerias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbEscalaM.Close;
    dbEscalaMD.Close;  //escala diaria medico
    dbEscalaCM.Close;  //escalas diarias da cobertura medico

    dbEscalaE.Close;
    dbEscalaED.Close;
    dbEscalaCE.Close;

    dbCoberturaM.Close;
    dbCoberturaE.Close;

    dbFMed.Close;
    dbFEnf.Close;
    dbFAdm.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbAdm.Close;
    dbFerias.Close;
    dbHospital.Close;
end;

procedure TfrmFerias.FormShow(Sender: TObject);
begin
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbAdm.Open;
    dbHospital.Open;
    dbFerias.Open;
    dbFMed.Open;
    dbFEnf.Open;
    dbFAdm.Open;

    dbEscalaM.Open;
    dbEscalaMD.Open;
    dbEscalaCM.Open;

    dbEscalaE.Open;
    dbEscalaED.Open;
    dbEscalaCE.Open;

    dbCoberturaM.Open;
    dbCoberturaE.Open;
    
    calendario.MultiSelect:=false;
    calendario.date:=date-30;
    calendario.MultiSelect:=true;
    calendario.Refresh;
end;

procedure TfrmFerias.dbFMedAfterInsert(DataSet: TDataSet);
var i:integer;
begin
    for i:=0 to 4 do
        grdMedico.Columns[i].ReadOnly:=false;
    dbFMedTipo.value:='M';
    dbFMedDataInclusao.value:=date;
end;

procedure TfrmFerias.dbFEnfAfterInsert(DataSet: TDataSet);
var i:integer;
begin
    for i:=0 to 4 do
        grdEnfermeiro.Columns[i].ReadOnly:=false;
    dbFEnfTipo.value:='E';
    dbFEnfDataInclusao.value:=date;
end;

procedure TfrmFerias.dbFAdmAfterInsert(DataSet: TDataSet);
begin
    dbFAdmTipo.value:='A';
    dbFAdmDataInclusao.value:=date;
    dbFAdmUsuario.value:=iUsuario;
end;

procedure TfrmFerias.cmdNovoMClick(Sender: TObject);
begin
    dbFMed.Tag:=0;
    dbFMed.Insert;
    grdMedico.SetFocus;
end;

procedure TfrmFerias.cmdProrrogaMClick(Sender: TObject);
begin
    dbFMed.Tag:=1;
    dbFMed.Edit;
    grdMedico.SetFocus;
end;

procedure TfrmFerias.cmdGravaMClick(Sender: TObject);
begin
    dbFMed.Post;
end;

procedure TfrmFerias.cmdExcluiMClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbCoberturaM.First;
    while not dbCoberturaM.eof do
    begin
        iAtual:=dbCoberturaMAuditor.value;
        iAnterior:=dbCoberturaMAuditor.Value;
        iNovo:=dbFMedAuditor.value;
        if iAnterior=999999 then
            iAtual:=dbFMedAuditor.value;
        iCobIni:=dbFMedDataInicio.value;
        iCobFim:=dbFMedDataFim.value;
        AtualizaAgendaMed;
        dbCoberturaM.Next;
    end;

    dbFMed.Delete;
end;

procedure TfrmFerias.cmdNovoEClick(Sender: TObject);
begin
    dbFEnf.Tag:=0;
    dbFEnf.Insert;
    grdEnfermeiro.SetFocus;
end;

procedure TfrmFerias.cmdProrrogaEClick(Sender: TObject);
begin
    dbFEnf.Tag:=1;
    dbFEnf.Edit;
    grdEnfermeiro.SetFocus;
end;

procedure TfrmFerias.cmdGravaEClick(Sender: TObject);
begin
    dbFEnf.Post;
end;

procedure TfrmFerias.cmdExcluiEClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    dbCoberturaE.First;
    while not dbCoberturaE.eof do
    begin
        iAtual:=dbCoberturaEAuditor.value;
        iAnterior:=dbCoberturaEAuditor.Value;
        iNovo:=dbFEnfAuditor.value;
        iCobIni:=dbFEnfDataInicio.value;
        iCobFim:=dbFEnfDataFim.value;
        if iAnterior=999999 then
            iAtual:=dbFEnfAuditor.value;
        AtualizaAgendaEnf;
        dbCoberturaE.Next;
    end;

    dbFEnf.Delete;
end;

procedure TfrmFerias.cmdNovoAClick(Sender: TObject);
begin
    dbAdm.Insert;
    grdAdm.SetFocus;
end;

procedure TfrmFerias.cmdGravaAClick(Sender: TObject);
begin
    dbFAdm.Post;
end;

procedure TfrmFerias.cmdExcluiAClick(Sender: TObject);
var iResultado:integer;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.', 'Aviso',mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then
        abort;

    iAtual:=dbFAdmAuditor.value;
    iAnterior:=dbFAdmAuditor.value;
    iNovo:=0;
    AtualizaAgendaAdm;

    dbFAdm.Delete;
end;

procedure TfrmFerias.dsFMedStateChange(Sender: TObject);
begin
     cmdNovoM.Default:=dbFMed.State in [dsBrowse];
     cmdExcluiM.Enabled:=(dbFMed.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFMed.RecordCount<>0);
     cmdGravaM.Enabled:=dbFMed.State in [dsEdit,dsInsert];
     cmdGravaM.Default:=dbFMed.State in [dsEdit,dsInsert];
end;

procedure TfrmFerias.dsFEnfStateChange(Sender: TObject);
begin
     cmdNovoE.Default:=dbFEnf.State in [dsBrowse];
     cmdExcluiE.Enabled:=(dbFEnf.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFEnf.RecordCount<>0);
     cmdGravaE.Enabled:=dbFEnf.State in [dsEdit,dsInsert];
     cmdGravaE.Default:=dbFEnf.State in [dsEdit,dsInsert];
end;

procedure TfrmFerias.qatateChange(Sender: TObject);
begin
     cmdNovoA.Default:=dbFAdm.State in [dsBrowse];
     cmdExcluiA.Enabled:=(dbFAdm.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFAdm.RecordCount<>0);
     cmdGravaA.Enabled:=dbFAdm.State in [dsEdit,dsInsert];
     cmdGravaA.Default:=dbFAdm.State in [dsEdit,dsInsert];
end;

procedure TfrmFerias.dbFMedAfterPost(DataSet: TDataSet);
var i,icli,ihosp,icob,iescala:integer;
var iid,itipo,iservico:string;
var a,m,d:word;
begin
    if not dbAuditor.Locate('Auditor',999999,[]) then
    begin
        dbAuditor.Insert;
        dbAuditorAuditor.value:=999999;
        dbAuditorNome.value:='COBERTURA';
        dbAuditorUsuario.value:='ANDROS';
        dbAuditorDataInclusao.value:=date;
        dbAuditor.Post;
    end;
    icob:=dbFMedCobertura.value;
    dbEscalaM.Refresh;
    dbEscalaMD.Refresh;
    dbEscalaCM.Refresh;

    if dbFMed.tag=0 then
    begin
        dbEscalaM.First;
        dbEscalaM.Locate('Auditor',dbFMedAuditor.value,[]);
        while (dbEscalaMAuditor.value=dbFMedAuditor.value) and
              (not dbEscalaM.eof) do
        begin
            dbEscalaMD.First;
            if not dbEscalaMD.eof then
            begin
                if (dbEscalaMDDataFim.IsNull) then
                begin
                    icli:=dbEscalaMCliente.value;
                    ihosp:=dbEscalaMHospital.value;
                    iid:=dbEscalaMClienteId.value;
                    itipo:=dbEscalaMTipo.value;
                    iservico:=dbEscalaMServico.value;

                    dbEscalaMD.Edit;
                    if dbEscalaMDDataInicio.value>dbFMedDataInicio.value then
                        dbEscalaMDDataInicio.value:=dbFMedDataInicio.value-2;
                    dbEscalaMDDataFim.value:=dbFMedDataInicio.value-1;
                    dbEscalaMDCobertura.value:=iCob;
                    dbEscalaMD.Post;

                    dbEscalaMD.Insert;
                    dbEscalaMDCliente.value:=iCli;
                    dbEscalaMDHospital.value:=iHosp;
                    dbEscalaMDClienteId.value:=iid;
                    dbEscalaMDTipo.value:=iTipo;
                    dbEscalaMDServico.value:=iServico;
                    dbEscalaMDAuditor.value:=999999;
                    dbEscalaMDCobertura.Value:=iCob;
                    dbEscalaMDDataInicio.value:=dbFMedDataInicio.Value;
                    dbEscalaMDDataFim.value:=dbFMedDataFim.value;
                    dbEscalaMDUsuario.value:=iUsuario;
                    dbEscalaMDDataInclusao.value:=date;
                    dbEscalaMD.Post;

                    dbEscalaMD.Insert;
                    dbEscalaMDCliente.value:=iCli;
                    dbEscalaMDHospital.value:=iHosp;
                    dbEscalaMDClienteId.value:=iid;
                    dbEscalaMDTipo.value:=iTipo;
                    dbEscalaMDServico.value:=iServico;
                    dbEscalaMDAuditor.value:=dbFMedAuditor.value;
                    dbEscalaMDCobertura.Value:=icob;
                    dbEscalaMDDataInicio.value:=dbFMedDataFim.Value+1;
                    dbEscalaMDUsuario.value:=iUsuario;
                    dbEscalaMDDataInclusao.value:=date;
                    dbEscalaMD.Post;
                end;
            end;
            dbEscalaM.Next;
        end;
    end;

    if dbFMed.Tag=1 then
    begin
        dbEscalaCM.First;
        while not dbEscalaCM.eof do
        begin
            dbEscalaCM.Edit;
            if dbEscalaCMDataFim.value=iDataFim then
                dbEscalaCMDataFim.value:=dbFMedDataFim.Value
            else
                if ((dbEscalaCMDataInicio.value-1)=iDataFim) and
                    (dbEscalaCMAuditor.value=dbFMedAuditor.value) and
                    (dbEscalaCMDataFim.IsNull) then
                        dbEscalaCMDataInicio.value:=dbFMedDataFim.value+1;
            dbEscalaCM.Post;
            dbEscalaCM.Next;
        end;

        dbCoberturaM.First;
        while not dbCoberturaM.eof do
        begin
            if dbCoberturaMAuditor.value<>999999 then
            begin
                if dbFMedDataFim.value>iDataFim then //prorrogando
                begin
                    iCobIni:=dbFMedDataInicio.value;
                    iCobFim:=dbFMedDataFim.value;
                    iNovo:=dbCoberturaMAuditor.Value;
                    iAtual:=dbFMedAuditor.Value;
                    AtualizaAgendaMed;
                end;
                if dbFMedDataFim.value<iDataFim then //retornando antes
                begin
                    DecodeDate(dbFMedDataFim.value+1,a,m,d);
                    DecodeDate(iDataFim,a,m,d);
                    iCobIni:=dbFMedDataFim.value+1;
                    iCobFim:=iDataFim;
                    iNovo:=dbFMedAuditor.Value;
                    iAtual:=dbCoberturaMAuditor.value;
                    AtualizaAgendaMed;
                end;
            end;
            dbCoberturaM.Next;
        end;
    end;

    for i:=0 to 4 do
        grdMedico.Columns[i].ReadOnly:=true;
    dbCoberturaM.Refresh;
    dbFMed.tag:=0;
end;

procedure TfrmFerias.txtClienteChange(Sender: TObject);
begin
    if dbFMed.Locate('Cobertura',StrToInt(txtCliente.Text),[]) then
        pagCob.ActivePageIndex:=0
    else
        if dbFEnf.Locate('Cobertura',StrToInt(txtCliente.Text),[]) then
            pagCob.ActivePageIndex:=1
        else
            if dbFAdm.Locate('Cobertura',StrToInt(txtCliente.Text),[]) then
                pagCob.ActivePageIndex:=2;
end;

procedure TfrmFerias.grdMedicoCellClick(Column: TColumn);
begin
    calendario.MultiSelect:=false;

    if dbFMedDataInicio.isnull then
        calendario.date:=date-30
    else
        calendario.date:=dbFMedDataInicio.value;

    calendario.MultiSelect:=true;
    if dbFMedDataFim.isnull then
        calendario.date:=date-30
    else
        calendario.EndDate:=dbFMedDataFim.value;
    calendario.Refresh;    
    dbCoberturaM.Refresh;

end;

procedure TfrmFerias.grdEnfermeiroCellClick(Column: TColumn);
begin
    calendario.MultiSelect:=false;
    if dbFEnfDataInicio.isnull then
        calendario.date:=date
    else
        calendario.date:=dbFEnfDataInicio.value;

    calendario.MultiSelect:=true;
    if dbFEnfDataFim.isnull then
        calendario.date:=date
    else
        calendario.EndDate:=dbFEnfDataFim.value;
    calendario.Refresh;
    dbCoberturaE.Refresh;

end;

procedure TfrmFerias.grdAdmCellClick(Column: TColumn);
begin
    calendario.MultiSelect:=false;
    if dbFAdmDataInicio.isnull then
        calendario.date:=date
    else
        calendario.date:=dbFAdmDataInicio.value;
    calendario.MultiSelect:=true;
    if dbFAdmDataFim.isnull then
        calendario.date:=date
    else
        calendario.EndDate:=dbFAdmDataFim.value;
    calendario.Refresh;    
end;

procedure TfrmFerias.dbFMedBeforePost(DataSet: TDataSet);
var itexto:string;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

    if dbFMed.Tag=0 then
    begin
        if dbFMedDataInicio.isnull then
        begin
            ShowMessage('Data Inicio inválida');
            abort;
        end;
        if dbFMedDataFim.isnull then
        begin
            ShowMessage('Data Fim inválida');
            abort;
        end;
        if dbFMedDataInicio.value>dbFMedDataFim.value then
        begin
            ShowMessage('Intervalo inválido');
            abort;
        end;
        if (dbFMedDataInicio.value)<date-60 then
        begin
            ShowMessage('Periodo inicial anterior a 60 dias');
            abort;
        end;

        dbEscalaM.Refresh;
        if not dbEscalaM.Locate('Auditor',dbFMedAuditor.value,[]) then
        begin
            ShowMessage('Médico Auditor não possui escalas cadastradas');
            abort;
        end;
        while (dbEscalaMAuditor.value=dbFMedAuditor.value) and
              (not dbEscalaM.eof) do
        begin
            dbEscalaMD.First;
            if dbEscalaMDDataInicio.value>=dbFMedDataInicio.value then    
            begin
                ShowMessage('Médico Auditor possui escala no Cliente '+dbEscalaMDClienteID.Value+', Hospital '+
                            dbEscalaMDHospitalNome.value+' que inicia em '+DatetoStr(dbEscalaMDDataInicio.value)+
                            ', apos o inicio desta cobertura');
                abort;
            end;
            dbEscalaM.Next;
        end;
    end;
    if dbFMed.Tag=1 then
    begin
        if dbFMedDataFim.value=iDataFim then
        begin
            ShowMessage('Nenhuma alteração efetuada');
            dbFMed.Cancel;
            abort;
        end;
        if dbFMedDataFim.value<dbFMedDataInicio.value then
        begin
            ShowMessage('Data Final menor que inicial');
            abort;
        end;
        if dbFMedDataFim.value<iDataFim then //voltando antes
        begin
            itexto:='Atenção! Os agendamentos do periodo antecipado '+DateToStr(dbFMedDataFim.Value+1)+' a '+DateToStr(iDataFim)+ ' dos prestadores'+#13+
                    'que fazem a cobertura serão TODOS revertidos para o prestador original ';
            ShowMessage(itexto);
        end;
    end;

    dbFMedUsuario.value:=iUsuario;
end;

procedure TfrmFerias.dbFEnfBeforePost(DataSet: TDataSet);
var itexto:string;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

    if dbFEnf.tag=0 then
    begin
        if dbFEnfDataInicio.isnull then
        begin
            ShowMessage('Data Inicio inválida');
            abort;
        end;
        if dbFEnfDataFim.isnull then
        begin
            ShowMessage('Data Fim inválida');
            abort;
        end;
        if dbFEnfDataInicio.value>dbFEnfDataFim.value then
        begin
            ShowMessage('Intervalo inválido');
            abort;
        end;
        if (dbFEnfDataInicio.value)<date-60 then
        begin
            ShowMessage('Periodo inicial anterior a 60 dias');
            abort;
        end;

        dbEscalaE.Refresh;
        if not dbEscalaE.Locate('Auditor',VarArrayof([dbFEnfAuditor.value]),[]) then
        begin
            ShowMessage('Enfermeiro não possui escala cadastrada');
            abort;
        end;
        while (dbEscalaEAuditor.value=dbFEnfAuditor.value) and
              (not dbEscalaE.eof) do
        begin
            dbEscalaED.First;
            if dbEscalaEDDataInicio.value>=dbFEnfDataInicio.value then
            begin
                ShowMessage('Enfermeiro Auditor possui escala no Cliente '+dbEscalaEDClienteID.Value+', Hospital '+
                            dbEscalaEDHospitalNome.value+' que inicia em '+DatetoStr(dbEscalaEDDataInicio.value)+
                            ', apos o inicio desta cobertura');
                abort;
            end;
            dbEscalaE.Next;
        end;
    end;
    if dbFEnf.Tag=1 then
    begin
        if dbFEnfDataFim.value=iDataFim then
        begin
            ShowMessage('Nenhuma alteração efetuada');
            dbFEnf.Cancel;
            abort;
        end;
        if dbFEnfDataFim.value<dbFEnfDataInicio.value then
        begin
            ShowMessage('Data Final menor que inicial');
            abort;
        end;
        if dbFEnfDataFim.value<iDataFim then //voltando antes
        begin
            itexto:='Atenção! Os agendamentos do periodo antecipado '+DateToStr(dbFMedDataFim.Value+1)+' a '+DateToStr(iDataFim)+ ' dos prestadores'+#13+
                    'que fazem a cobertura serão TODOS revertidos para o prestador original ';
            ShowMessage(itexto);
        end;
    end;

    dbFEnfUsuario.value:=iUsuario;
end;

procedure TfrmFerias.dbFMedBeforeDelete(DataSet: TDataSet);
var icli,ihosp,icob,iaud:integer;
var itipo,iservico:string;
var idata:Tdatetime;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    icob:=dbFMedCobertura.value;
    iaud:=dbFMedAuditor.value;
    idata:=dbFMedDataInicio.value; //inicio afastamento
    dbEscalaCM.Refresh;
    dbEscalaCM.Locate('Cobertura',icob,[]);
    while (dbEscalaCMCobertura.value=iCob) and (not dbEscalaCM.eof) do
    begin
        if dbEscalaCMAuditor.value<>iaud then
            dbEscalaCM.Delete
        else
            if dbEscalaCMDataInicio.value>idata then
                dbEscalaCM.Delete
            else
            begin
                dbEscalaCM.Edit;
                dbEscalaCMDataFim.Clear;
                dbEscalaCMCobertura.value:=0;
                dbEscalaCM.Post;
            end;
        dbEscalaCM.Locate('Cobertura',icob,[]);
    end;
end;

procedure TfrmFerias.dbFEnfAfterPost(DataSet: TDataSet);
var i,icli,ihosp,icob,iescala:integer;
var iid,itipo,iservico:string;
begin
    if not dbEnfermeiro.Locate('Enfermeiro',999999,[]) then
    begin
        dbEnfermeiro.Insert;
        dbEnfermeiroEnfermeiro.value:=999999;
        dbEnfermeiroNome.value:='COBERTURA';
        dbEnfermeiroUsuario.value:='ANDROS';
        dbEnfermeiroDataInclusao.value:=date;
        dbEnfermeiro.Post;
    end;
    icob:=dbFEnfCobertura.value;
    dbEscalaE.Refresh;

    if dbFEnf.Tag=0 then
    begin
        dbEscalaE.Locate('Auditor',VarArrayof([dbFEnfAuditor.value]),[]);
        while (dbEscalaEAuditor.value=dbFEnfAuditor.value) and
              (not dbEscalaE.eof) do
        begin
            dbEscalaED.First;
            if not dbEscalaED.eof then
            begin
                if (dbEscalaEDDataFim.IsNull) then
                begin
                    icli:=dbEscalaECliente.value;
                    ihosp:=dbEscalaEHospital.value;
                    iid:=dbEscalaEClienteId.value;
                    itipo:=dbEscalaETipo.value;
                    iservico:=dbEscalaEServico.value;

                    dbEscalaED.Edit;
                    if dbEscalaEDDataInicio.value>dbFEnfDataInicio.value then
                        dbEscalaEDDataInicio.value:=dbFEnfDataInicio.value-2;
                    dbEscalaEDDataFim.value:=dbFEnfDataInicio.value-1;
                    dbEscalaEDCobertura.value:=iCob;
                    dbEscalaED.Post;

                    dbEscalaED.Insert;
                    dbEscalaEDCliente.value:=iCli;
                    dbEscalaEDHospital.value:=iHosp;
                    dbEscalaEDClienteId.value:=iid;
                    dbEscalaEDTipo.value:=iTipo;
                    dbEscalaEDServico.value:=iServico;
                    dbEscalaEDAuditor.value:=999999;
                    dbEscalaEDCobertura.Value:=iCob;
                    dbEscalaEDDataInicio.value:=dbFEnfDataInicio.Value;
                    dbEscalaEDDataFim.value:=dbFEnfDataFim.value;
                    dbEscalaEDUsuario.value:=iUsuario;
                    dbEscalaEDDataInclusao.value:=date;
                    dbEscalaED.Post;

                    dbEscalaED.Insert;
                    dbEscalaEDCliente.value:=iCli;
                    dbEscalaEDHospital.value:=iHosp;
                    dbEscalaEDClienteId.value:=iid;
                    dbEscalaEDTipo.value:=iTipo;
                    dbEscalaEDServico.value:=iServico;
                    dbEscalaEDAuditor.value:=dbFEnfAuditor.value;
                    dbEscalaEDCobertura.Value:=icob;
                    dbEscalaEDDataInicio.value:=dbFEnfDataFim.Value+1;
                    dbEscalaEDUsuario.value:=iUsuario;
                    dbEscalaEDDataInclusao.value:=date;
                    dbEscalaED.Post;
                end;
           end;
           dbEscalaE.Next;
        end;
    end;

    if dbFEnf.Tag=1 then
    begin
        dbEscalaCE.First;
        while not dbEscalaCE.eof do
        begin
            dbEscalaCE.Edit;
            if dbEscalaCEDataFim.value=iDataFim then
                dbEscalaCEDataFim.value:=dbFEnfDataFim.Value
            else
                if ((dbEscalaCEDataInicio.value-1)=iDataFim) and
                    (dbEscalaCEAuditor.value=dbFEnfAuditor.value) and
                    (dbEscalaCEDataFim.IsNull) then
                        dbEscalaCEDataInicio.value:=dbFEnfDataFim.value+1;
            dbEscalaCE.Post;
            dbEscalaCE.Next;
        end;

        dbCoberturaE.First;
        while not dbCoberturaE.eof do
        begin
            if dbCoberturaEAuditor.value<>999999 then
            begin
                if dbFEnfDataFim.value>iDataFim then //prorrogando
                begin
                    iCobIni:=dbFEnfDataInicio.value;
                    iCobFim:=dbFEnfDataFim.value;
                    iNovo:=dbCoberturaEAuditor.Value;
                    iAtual:=dbFEnfAuditor.Value;
                    AtualizaAgendaEnf;
                end;
                if dbFEnfDataFim.value<iDataFim then //retornando antes
                begin
                    iCobIni:=dbFEnfDataFim.value+1;
                    iCobFim:=iDataFim;
                    iNovo:=dbFEnfAuditor.Value;
                    iAtual:=dbCoberturaEAuditor.value;
                    AtualizaAgendaEnf;
                end;
            end;
            dbCoberturaE.Next;
        end;
    end;

    for i:=0 to 4 do
        grdEnfermeiro.Columns[i].ReadOnly:=true;
    dbCoberturaE.Refresh;
    dbFEnf.Tag:=0;
end;

procedure TfrmFerias.dbFEnfBeforeDelete(DataSet: TDataSet);
var icli,ihosp,icob,iaud:integer;
var itipo,iservico:string;
var idata:Tdatetime;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    icob:=dbFEnfCobertura.value;
    iaud:=dbFEnfAuditor.value;
    idata:=dbFEnfDataInicio.value; //inicio afastamento
    dbEscalaCE.Refresh;
    dbEscalaCE.Locate('Cobertura',icob,[]);
    while (dbEscalaCECobertura.value=iCob) and (not dbEscalaCE.eof) do
    begin
        if dbEscalaCEAuditor.value<>iaud then
            dbEscalaCE.Delete
        else
            if dbEscalaCEDataInicio.value>idata then
                dbEscalaCE.Delete
            else
            begin
                dbEscalaCE.Edit;
                dbEscalaCEDataFim.Clear;
                dbEscalaCECobertura.value:=0;
                dbEscalaCE.Post;
            end;
        dbEscalaCE.Locate('Cobertura',icob,[]);
    end;
end;

procedure TfrmFerias.dbFAdmBeforeEdit(DataSet: TDataSet);
begin
    ShowMessage('Impossivel alterar. Exclua e recadastre o registro');
    abort;
end;

procedure TfrmFerias.dbFAdmBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    if dbFAdmDataInicio.isnull then
    begin
        ShowMessage('Data Inicio inválida');
        abort;
    end;
    if dbFAdmDataFim.isnull then
    begin
        ShowMessage('Data Fim inválida');
        abort;
    end;
    if dbFAdmDataInicio.value>dbFAdmDataFim.value then
    begin
        ShowMessage('Intervalo inválido');
        abort;
    end;
    if (dbFAdmDataInicio.value)<date-60 then
    begin
        ShowMessage('Periodo inicial anterior a 60 dias');
        abort;
    end;
end;

procedure TfrmFerias.dbCoberturaMFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if dbFMed.Active then
        accept:=dbCoberturaMAuditor.value<>dbFMedAuditor.value
    else
        accept:=true;
end;

procedure TfrmFerias.dbCoberturaEFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if dbFEnf.Active then
        accept:=dbCoberturaEAuditor.value<>dbFEnfAuditor.value
    else
        accept:=true;
end;

procedure TfrmFerias.dbCoberturaMBeforeInsert(DataSet: TDataSet);
begin
    abort;
end;

procedure TfrmFerias.dbCoberturaEBeforeInsert(DataSet: TDataSet);
begin
    abort;
end;

procedure TfrmFerias.dbCoberturaEBeforeDelete(DataSet: TDataSet);
begin
    abort;
end;

procedure TfrmFerias.dbCoberturaMBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    if dbCoberturaMAuditor.value=dbFMedAuditor.value then
    begin
        ShowMessage('Auditor não pode ser o mesmo da Cobertura');
        dbCoberturaM.Cancel;
        abort;
    end;
    dbFerias.Refresh;
    dbFerias.Locate('Tipo;Auditor',VarArrayof(['M',dbCoberturaMAuditor.value]),[]);
    while (dbFeriasTipo.value='M') and (dbFeriasAuditor.value=dbCoberturaMAuditor.value) and
          (not dbFerias.eof) do
    begin
        if ((dbFeriasDataInicio.value>=dbCoberturaMDataInicio.value) and
            (dbFeriasDataInicio.value<=dbCoberturaMDataFim.value)) or
           ((dbFeriasDataFim.value>=dbCoberturaMDataInicio.value) and
            (dbFeriasDataFim.value<=dbCoberturaMDataFim.value)) then
        begin
            ShowMessage('Médico afastado no periodo');
            dbCoberturaM.Cancel;
            abort;
        end;
        dbFerias.Next;
    end;

    if dbCoberturaMAuditor.value=999999 then
        dbCoberturaMLibera.value:='N';

    if dbCoberturaMLibera.value='' then
    begin
        ShowMessage('Selecione se o Médico libera ou não visitas');
        abort;
    end;


    dbCoberturaMDataCobertura.value:=date;
    dbCoberturaMUsuarioC.Value:=iUsuario;
end;

procedure TfrmFerias.dbCoberturaEBeforePost(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    if dbCoberturaEAuditor.value=dbFEnfAuditor.value then
    begin
        ShowMessage('Enfermeiro não pode ser o mesmo da Cobertura');
        dbCoberturaE.Cancel;
        abort;
    end;
    dbFerias.Refresh;
    dbFerias.Locate('Tipo;Auditor',VarArrayof(['E',dbCoberturaEAuditor.value]),[]);
    while (dbFeriasTipo.value='E') and (dbFeriasAuditor.value=dbCoberturaEAuditor.value) and
          (not dbFerias.eof) do
    begin
        if ((dbFeriasDataInicio.value>=dbCoberturaEDataInicio.value) and
            (dbFeriasDataInicio.value<=dbCoberturaEDataFim.value)) or
           ((dbFeriasDataFim.value>=dbCoberturaEDataInicio.value) and
            (dbFeriasDataFim.value<=dbCoberturaEDataFim.value)) then
        begin
            ShowMessage('Enfermeiro afastado no periodo');
            dbCoberturaE.Cancel;
            abort;
        end;
        dbFerias.Next;
    end;
    if dbCoberturaEAuditor.value=999999 then
        dbCoberturaELibera.value:='N';

    if dbCoberturaELibera.value='' then
    begin
        ShowMessage('Selecione se o Enfermeiro libera ou não visitas');
        abort;
    end;


    dbCoberturaEDataCobertura.value:=date;
    dbCoberturaEUsuarioC.Value:=iUsuario;
end;

procedure TfrmFerias.tabEChange(Sender: TObject);
begin
    case tabE.TabIndex of
    0:dbCoberturaE.IndexFieldNames:='Cobertura,Hospital,ClienteID,Auditor,Servico';
    1:dbCoberturaE.IndexFieldNames:='Cobertura,ClienteID,Hospital,Auditor,Servico';
    2:dbCoberturaE.IndexFieldNames:='Cobertura,Auditor,Hospital,ClienteID,Servico';
    3:dbCoberturaE.IndexFieldNames:='Cobertura,Servico,Hospital,ClienteID,Auditor';
    end;
end;

procedure TfrmFerias.tabMChange(Sender: TObject);
begin
    case tabM.TabIndex of
    0:dbCoberturaM.IndexFieldNames:='Cobertura,Hospital,ClienteID,Auditor,Servico';
    1:dbCoberturaM.IndexFieldNames:='Cobertura,ClienteID,Hospital,Auditor,Servico';
    2:dbCoberturaM.IndexFieldNames:='Cobertura,Auditor,Hospital,ClienteID,Servico';
    3:dbCoberturaM.IndexFieldNames:='Cobertura,Servico,Hospital,ClienteID,Auditor';
    end;
end;

procedure TfrmFerias.dbFMedBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmFerias.dbFEnfBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmFerias.dbFAdmBeforeDelete(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmFerias.dbFAdmBeforeInsert(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

end;

procedure TfrmFerias.dbCoberturaMBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
    iAnterior:=dbCoberturaMAuditor.value;
end;

procedure TfrmFerias.dbCoberturaEBeforeEdit(DataSet: TDataSet);
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;
end;

procedure TfrmFerias.grdMedicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmFerias.grdEnfermeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmFerias.grdAdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmFerias.grdCobMedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmFerias.grdCobEnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmFerias.FormCreate(Sender: TObject);
begin
    pagCob.ActivePage:=tabMed;
end;

procedure TfrmFerias.cmdExcluiCMClick(Sender: TObject);
var icli,ihosp,icob,iaud,iresultado:integer;
var itipo,iservico:string;
var idata:Tdatetime;
begin
    if not frmMenu.AcessoG('Escala')  then
       abort;
    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then
        abort;

     iAtual:=dbCoberturaMAuditor.value;
     iAnterior:=dbCoberturaMAuditor.Value;
     iNovo:=dbFMedAuditor.value;
     if iAnterior=999999 then
        iAtual:=dbFMedAuditor.value;
     iCobIni:=dbFMedDataInicio.value;
     iCobFim:=dbFMedDataFim.value;
     AtualizaAgendaMed;

    icob:=dbFMedCobertura.value;
    iaud:=dbFMedAuditor.value;
    idata:=dbFMedDataInicio.value; //inicio afastamento
    icli:=dbCoberturaMCliente.value;
    ihosp:=dbCoberturaMHospital.value;
    itipo:=dbCoberturaMTipo.value;
    iservico:=dbCoberturaMServico.value;

    dbEscalaCM.Refresh;
    while dbEscalaCM.Locate('Cobertura;Cliente;Hospital;Tipo;Servico',VarArrayof([icob,icli,ihosp,itipo,iservico]),[]) do
    begin
        if dbEscalaCMAuditor.value<>iaud then
            dbEscalaCM.Delete
        else
            if dbEscalaCMDataInicio.value>idata then
                dbEscalaCM.Delete
            else
            begin
                dbEscalaCM.Edit;
                dbEscalaCMDataFim.Clear;
                dbEscalaCMCobertura.value:=0;
                dbEscalaCM.Post;
            end;
    end;
    dbCoberturaM.Refresh;
    dbEscalaCM.Refresh;
end;

procedure TfrmFerias.dbCoberturaMBeforeDelete(DataSet: TDataSet);
begin
    abort;
end;

procedure TfrmFerias.cmdExcluiCEClick(Sender: TObject);
var icli,ihosp,icob,iaud,iresultado:integer;
var itipo,iservico:string;
var idata:Tdatetime;
begin
    if not frmMenu.AcessoG('Escala')  then
      abort;

    iResultado:=Application.MessageBox('Confirme a exclusão do registro.','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then
        abort;

     iAtual:=dbCoberturaEAuditor.value;
     iAnterior:=dbCoberturaEAuditor.Value;
     iNovo:=dbFEnfAuditor.value;
     if iAnterior=999999 then
        iAtual:=dbFEnfAuditor.value;
    iCobIni:=dbFEnfDataInicio.value;
    iCobFim:=dbFEnfDataFim.value;
     AtualizaAgendaEnf;

    icob:=dbFEnfCobertura.value;
    iaud:=dbFEnfAuditor.value;
    idata:=dbFEnfDataInicio.value; //inicio afastamento
    icli:=dbCoberturaECliente.value;
    ihosp:=dbCoberturaEHospital.value;
    itipo:=dbCoberturaETipo.value;
    iservico:=dbCoberturaEServico.value;
    dbEscalaCE.Refresh;
    while dbEscalaCE.Locate('Cobertura;Cliente;Hospital;Tipo;Servico',VarArrayof([icob,icli,ihosp,itipo,iservico]),[]) do
    begin
        if dbEscalaCEAuditor.value<>iaud then
            dbEscalaCE.Delete
        else
            if dbEscalaCEDataInicio.value>idata then
                dbEscalaCE.Delete
            else
            begin
                dbEscalaCE.Edit;
                dbEscalaCEDataFim.Clear;
                dbEscalaCECobertura.value:=0;
                dbEscalaCE.Post;
            end;
    end;
    dbCoberturaE.Refresh;
    dbEscalaCE.Refresh;
end;

procedure TfrmFerias.dbCoberturaMAfterPost(DataSet: TDataSet);
begin
   iNovo:=dbCoberturaMAuditor.Value;
   iCobIni:=dbFMedDataInicio.value;
   iCobFim:=dbFMedDataFim.value;
   if iNovo=999999 then
   begin
        iAtual:=iAnterior;
        iNovo:=dbFMedAuditor.value;
   end
   else
        if iAnterior=999999 then
            iAtual:=dbFMedAuditor.value
        else
            iAtual:=iAnterior;
    AtualizaAgendaMed;
end;

procedure TfrmFerias.dbCoberturaEAfterPost(DataSet: TDataSet);
begin
   iNovo:=dbCoberturaEAuditor.Value;
   iCobIni:=dbFEnfDataInicio.value;
   iCobFim:=dbFEnfDataFim.value;
   if iNovo=999999 then
   begin
        iAtual:=iAnterior;
        iNovo:=dbFEnfAuditor.value;
   end
   else
        if iAnterior=999999 then
            iAtual:=dbFEnfAuditor.value
        else
            iAtual:=iAnterior;
    AtualizaAgendaEnf;
end;

procedure TfrmFerias.dbFMedAfterCancel(DataSet: TDataSet);
var i:integer;
begin
    for i:=0 to 4 do
        grdMedico.Columns[i].ReadOnly:=true;
    dbFMed.tag:=0;
end;

procedure TfrmFerias.dbFEnfAfterCancel(DataSet: TDataSet);
var i:integer;
begin
    for i:=0 to 4 do
        grdEnfermeiro.Columns[i].ReadOnly:=true;
    dbFEnf.Tag:=0;
end;



procedure TfrmFerias.dbFMedAfterEdit(DataSet: TDataSet);
begin
    if dbFMed.Tag=1 then
        grdMedico.Columns[3].ReadOnly:=false;
end;

procedure TfrmFerias.dbFEnfAfterEdit(DataSet: TDataSet);
begin
    if dbFEnf.Tag=1 then
        grdEnfermeiro.Columns[3].ReadOnly:=false;
end;


procedure TfrmFerias.dbFMedBeforeEdit(DataSet: TDataSet);
begin
    iDataFim:=dbFMedDataFim.value;
end;

procedure TfrmFerias.dbFEnfBeforeEdit(DataSet: TDataSet);
begin
    iDataFim:=dbFEnfDataFim.value;
end;

procedure TfrmFerias.BitBtn1Click(Sender: TObject);
begin
    if frmRelCobertura=nil then
        Application.CreateForm(TfrmRelCobertura, frmRelCobertura);
    frmRelCobertura.ShowModal;
end;

procedure TfrmFerias.BitBtn2Click(Sender: TObject);
begin
    ShowMessage('Defina o final do primeiro periodo para a divisão');
    grdCobMed.Columns[3].ReadOnly:=true;
    grdCobMed.Columns[5].ReadOnly:=false;
    dbCoberturaM.tag:=1;
    dbCoberturaM.Edit;
end;

procedure TfrmFerias.dbCoberturaMLiberaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbCoberturaMLibera.value='S' then
        text:='Sim';
    if dbCoberturaMLibera.value='N' then
        text:='Não';
end;


procedure TfrmFerias.dbCoberturaMLiberaSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
        dbCoberturaMLibera.value:='S';
    if text='Não' then
        dbCoberturaMLibera.value:='N';

end;

procedure TfrmFerias.dbCoberturaELiberaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbCoberturaELibera.value='S' then
        text:='Sim';
    if dbCoberturaELibera.value='N' then
        text:='Não';

end;

procedure TfrmFerias.dbCoberturaELiberaSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
        dbCoberturaELibera.value:='S';
    if text='Não' then
        dbCoberturaELibera.value:='N';

end;

procedure TfrmFerias.dbCoberturaMAfterEdit(DataSet: TDataSet);
begin
    if (dbCoberturaMServico.value='V') or (dbCoberturaMServico.value='VE') then
        dbCoberturaMLibera.value:=''
    else
        dbCoberturaMLibera.value:='N';

end;

procedure TfrmFerias.dbCoberturaEAfterEdit(DataSet: TDataSet);
begin
    if (dbCoberturaEServico.value='V') or (dbCoberturaEServico.value='VE') then
        dbCoberturaELibera.value:=''
    else
        dbCoberturaELibera.value:='N';

end;

end.
