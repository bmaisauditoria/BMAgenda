unit frmCadastros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ExtCtrls, DBImgAsp, ToolWin, Menus, RpDefine, RpBase, RpSystem, ImgList;

type
  TfrmCadastro = class(TForm)
    pagCadastro: TPageControl;
    tabCliente: TTabSheet;
    tabAuditor: TTabSheet;
    tabHospital: TTabSheet;
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteEndereco: TStringField;
    dbClienteBairro: TStringField;
    dbClienteCidade: TStringField;
    dbClienteUF: TStringField;
    dbClienteCep: TStringField;
    dbClienteFone1: TStringField;
    dbClienteFone2: TStringField;
    dbClienteFax: TStringField;
    dbClienteCGC: TStringField;
    dbClienteContato: TStringField;
    dbClienteEmail: TStringField;
    dbClienteHomePage: TStringField;
    dbClienteUsuario: TStringField;
    dsCliente: TDataSource;
    dbAuditor: TMSTable;
    dsAuditor: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    tabRegiao: TTabSheet;
    dbRegiao: TMSTable;
    dsRegiao: TDataSource;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    Panel12: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    cmpRegiao: TDBEdit;
    cmpRegiaoNome: TDBEdit;
    dbHospitalRegiao: TIntegerField;
    dbHospitalRegiaoNome: TStringField;
    dbHospitalBusca: TMSTable;
    dbHospitalBuscaHospital: TIntegerField;
    dbHospitalBuscaNome: TStringField;
    dbHospitalBuscaRegiao: TIntegerField;
    tabEnfermeiro: TTabSheet;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    tabOrdemAuditor: TTabControl;
    grdAuditor: TDBGrid;
    CoolBar3: TCoolBar;
    txtAuditor: TEdit;
    tabOrdemEnfermeiro: TTabControl;
    grdEnfermeiro: TDBGrid;
    CoolBar5: TCoolBar;
    txtEnfermeiro: TEdit;
    Label76: TLabel;
    Label83: TLabel;
    CoolBar7: TCoolBar;
    txtHospital: TEdit;
    tabOrdemHospital: TTabControl;
    grdHospital: TDBGrid;
    CoolBar11: TCoolBar;
    txtRegiao: TEdit;
    Label86: TLabel;
    tabOrdemRegiao: TTabControl;
    DBGrid3: TDBGrid;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalCNPJ: TStringField;
    dbHospitalBuscaCidade: TStringField;
    dbHospitalBuscaUF: TStringField;
    dbHospitalBuscaCNPJ: TStringField;
    dbHospitalEnfermeiroNome: TStringField;
    dbHospitalEnfermeiro: TIntegerField;
    CoolBar1: TCoolBar;
    txtCliente: TEdit;
    tabOrdemCliente: TTabControl;
    Label74: TLabel;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipalTexto: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dbAuditorBusca: TMSTable;
    dbAuditorBuscaAuditor: TIntegerField;
    dbAuditorBuscaNome: TStringField;
    dbAuditorBuscaCRM: TIntegerField;
    dbEnfermeiroBusca: TMSTable;
    dbEnfermeiroBuscaEnfermeiro: TIntegerField;
    dbEnfermeiroBuscaNome: TStringField;
    dbEnfermeiroBuscaCOREN: TIntegerField;
    TabSheet5: TTabSheet;
    dbServico: TMSTable;
    dsServico: TDataSource;
    grdServico: TDBGrid;
    dbHospitalCodBradesco: TIntegerField;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorFone: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorEmail: TStringField;
    dbAuditorUsuario: TStringField;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroFone: TStringField;
    dbEnfermeiroFone1: TStringField;
    dbEnfermeiroFone2: TStringField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroUsuario: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoServico: TStringField;
    dbServicoValorizadoTexto: TStringField;
    dbServicoVinculado: TStringField;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    Panel24: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    cmdCancelaSv: TBitBtn;
    cmdExcluiSv: TBitBtn;
    cmdGravaSv: TBitBtn;
    cmdNovoSv: TBitBtn;
    cmdNovoR: TBitBtn;
    cmdAlteraR: TBitBtn;
    cmdGravaR: TBitBtn;
    cmdCancelaR: TBitBtn;
    cmdExcluiR: TBitBtn;
    dbEnfermeiroNascimento: TDateTimeField;
    dbClienteClienteID: TStringField;
    tabAdm: TTabSheet;
    Button2: TButton;
    grdCliente: TDBGrid;
    Label16: TLabel;
    dbClienteBusca: TMSTable;
    dbAdm: TMSTable;
    dsAdm: TDataSource;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmFone: TStringField;
    dbAdmFone1: TStringField;
    dbAdmFone2: TStringField;
    dbAdmemail: TStringField;
    dbAdmNascimento: TDateTimeField;
    dbAdmCPF: TStringField;
    dbAdmDataInclusao: TDateTimeField;
    dbAdmUsuario: TStringField;
    dbAdmDataInicio: TDateTimeField;
    dbAdmDataFim: TDateTimeField;
    dbClienteBuscaCliente: TIntegerField;
    dbClienteBuscaNome: TStringField;
    dbClienteBuscaCGC: TStringField;
    dbClienteBuscaClienteID: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    cmdNovoA: TBitBtn;
    cmdAlteraA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdCancelaA: TBitBtn;
    cmdExcluiA: TBitBtn;
    Panel4: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText1: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    cmpAdm: TDBEdit;
    cmpNomeAdm: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Panel6: TPanel;
    Label29: TLabel;
    DBText2: TDBText;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label43: TLabel;
    tabOrdemAdm: TTabControl;
    grdAdm: TDBGrid;
    CoolBar2: TCoolBar;
    txtAdm: TEdit;
    rdgCliente: TRadioGroup;
    rdgMedico: TRadioGroup;
    rdgEnfermeiro: TRadioGroup;
    rdgAdm: TRadioGroup;
    dbAdmBusca: TMSTable;
    dbAdmBuscaAdministrativo: TIntegerField;
    dbAdmBuscaNome: TStringField;
    dbAuditorNascimento: TDateTimeField;
    dbHospitalAuditorado: TBooleanField;
    dbHospitalAuditoradoTexto: TStringField;
    rdgHospital: TRadioGroup;
    dbClienteEscala: TBooleanField;
    dbClienteProrrogaV: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdNovoRClick(Sender: TObject);
    procedure cmdAlteraRClick(Sender: TObject);
    procedure cmdGravaRClick(Sender: TObject);
    procedure cmdCancelaRClick(Sender: TObject);
    procedure cmdExcluiRClick(Sender: TObject);
    procedure dsRegiaoStateChange(Sender: TObject);
    procedure dbRegiaoAfterCancel(DataSet: TDataSet);
    procedure dbRegiaoAfterInsert(DataSet: TDataSet);
    procedure dbRegiaoAfterPost(DataSet: TDataSet);
    procedure dbRegiaoBeforeInsert(DataSet: TDataSet);
    procedure dbRegiaoBeforePost(DataSet: TDataSet);
    procedure pagCadastroChange(Sender: TObject);
    procedure dbRegiaoBeforeEdit(DataSet: TDataSet);
    procedure dbRegiaoBeforeDelete(DataSet: TDataSet);
    procedure tabOrdemClienteChange(Sender: TObject);
    procedure txtClienteChange(Sender: TObject);
    procedure txtAuditorChange(Sender: TObject);
    procedure tabOrdemAuditorChange(Sender: TObject);
    procedure tabOrdemEnfermeiroChange(Sender: TObject);
    procedure txtEnfermeiroChange(Sender: TObject);
    procedure txtHospitalChange(Sender: TObject);
    procedure tabOrdemHospitalChange(Sender: TObject);
    procedure txtRegiaoChange(Sender: TObject);
    procedure tabOrdemRegiaoChange(Sender: TObject);
    procedure dsServicoStateChange(Sender: TObject);
    procedure cmdNovoSvClick(Sender: TObject);
    procedure cmdGravaSvClick(Sender: TObject);
    procedure cmdCancelaSvClick(Sender: TObject);
    procedure cmdExcluiSvClick(Sender: TObject);
    procedure dbServicoAfterPost(DataSet: TDataSet);
    procedure dbServicoAfterCancel(DataSet: TDataSet);
    procedure dbServicoAfterInsert(DataSet: TDataSet);
    procedure grdServicoDblClick(Sender: TObject);
    procedure dbServicoCalcFields(DataSet: TDataSet);
    procedure grdServicoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbServicoVinculadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbServicoVinculadoSetText(Sender: TField;
      const Text: String);
    procedure Button2Click(Sender: TObject);
    procedure tabOrdemAdmChange(Sender: TObject);
    procedure grdClienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdAlteraAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdCancelaAClick(Sender: TObject);
    procedure cmdExcluiAClick(Sender: TObject);
    procedure txtAdmChange(Sender: TObject);
    procedure grdAuditorDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdEnfermeiroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdAdmDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsAdmStateChange(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure rdgClienteClick(Sender: TObject);
    procedure rdgMedicoClick(Sender: TObject);
    procedure rdgEnfermeiroClick(Sender: TObject);
    procedure rdgAdmClick(Sender: TObject);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbAdmFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbAdmAfterCancel(DataSet: TDataSet);
    procedure dbAdmAfterInsert(DataSet: TDataSet);
    procedure dbAdmBeforeInsert(DataSet: TDataSet);
    procedure dbAdmBeforePost(DataSet: TDataSet);
    procedure dbHospitalCalcFields(DataSet: TDataSet);
    procedure grdHospitalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rdgHospitalClick(Sender: TObject);
    procedure dbHospitalFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbAdmAfterEdit(DataSet: TDataSet);
    procedure dbAdmBeforeDelete(DataSet: TDataSet);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbAdmBeforeEdit(DataSet: TDataSet);
    procedure dbClienteProrrogaVGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbClienteProrrogaVSetText(Sender: TField;
      const Text: String);
  private
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;
  iUltimoCliente,iUltimaEmpresa,iUltimoAuditor,iUltimaRegiao,
  iUltimoHospital,iUltimoDiagnostico,iUltimoEnfermeiro,iUltimoAdm:integer;

implementation

uses frmPrincipal;

{$R *.DFM}

procedure TfrmCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbCliente.Close;
     dbClienteBusca.Close;
     dbClienteID.close;
     dbAuditor.Close;
     dbAuditorBusca.Close;
     dbEnfermeiro.Close;
     dbEnfermeiroBusca.Close;
     dbAdm.Close;
     dbAdmBusca.Close;
     dbHospital.Close;
     dbHospitalBusca.Close;
     dbRegiao.close;
     dbServico.Close;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
     dbCliente.Open;
     dbCliente.IndexFieldNames:='Cliente';
     dbClienteBusca.Open;
     tabOrdemCliente.TabIndex:=0;
     dbClienteID.Open;

     dbAuditor.Open;
     tabOrdemAuditor.TabIndex:=0;
     dbAuditorBusca.Open;

     dbEnfermeiro.Open;
     tabOrdemEnfermeiro.TabIndex:=0;
     dbEnfermeiroBusca.Open;

     dbHospital.Open;
     dbHospitalBusca.Open;
     tabOrdemHospital.TabIndex:=0;

     dbAdm.Open;
     tabOrdemAdm.TabIndex:=0;
     cmpAdm.Enabled:=false;
     dbAdmBusca.Open;

     dbRegiao.Open;
     tabOrdemRegiao.TabIndex:=0;
     cmpRegiao.Enabled:=false;
     dbRegiao.First;
     if dbRegiaoRegiao.Value<>0 then
     begin
        dbRegiao.Insert;
        dbRegiaoRegiao.Value:=0;
        dbRegiaoDescricao.Value:='Não informado';
        dbRegiao.Post;
     end;

     dbServico.Open;
   finally
     pagCadastro.ActivePage:=tabCliente;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmCadastro.cmdNovoRClick(Sender: TObject);
begin
    dbRegiao.Insert;
    cmpRegiao.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraRClick(Sender: TObject);
begin
    dbRegiao.Edit;
    cmpRegiaoNome.SetFocus;
end;

procedure TfrmCadastro.cmdGravaRClick(Sender: TObject);
begin
    dbRegiao.Post;
end;

procedure TfrmCadastro.cmdCancelaRClick(Sender: TObject);
begin
    dbRegiao.Cancel;
end;

procedure TfrmCadastro.cmdExcluiRClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbRegiao.Delete;
end;

procedure TfrmCadastro.dsRegiaoStateChange(Sender: TObject);
begin
     cmdNovoR.Default:=dbRegiao.State in [dsBrowse];
     cmdExcluiR.Enabled:=(dbRegiao.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbRegiao.RecordCount<>0);
     cmdGravaR.Enabled:=dbRegiao.State in [dsEdit,dsInsert];
     cmdGravaR.Default:=dbRegiao.State in [dsEdit,dsInsert];
     cmdAlteraR.Enabled:=(dbRegiao.State=dsBrowse)
                         and (dbRegiao.RecordCount<>0);
     cmdCancelaR.Enabled:=dbRegiao.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbRegiaoAfterCancel(DataSet: TDataSet);
begin
     cmpRegiao.Enabled:=false;
end;

procedure TfrmCadastro.dbRegiaoAfterInsert(DataSet: TDataSet);
begin
     cmpRegiao.Enabled:=true;
     dbRegiaoRegiao.Value:=iUltimaRegiao+1;
end;

procedure TfrmCadastro.dbRegiaoAfterPost(DataSet: TDataSet);
begin
    cmpRegiao.Enabled:=false;
end;

procedure TfrmCadastro.dbRegiaoBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemRegiao.TabIndex:=0;
    dbRegiao.Last;
    iUltimaRegiao:=dbRegiaoRegiao.Value;
end;

procedure TfrmCadastro.dbRegiaoBeforePost(DataSet: TDataSet);
begin
     if dbRegiaoRegiao.Value<0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbRegiaoDescricao.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;

end;

procedure TfrmCadastro.pagCadastroChange(Sender: TObject);
begin
    if pagCadastro.ActivePage=tabHospital then
       tabOrdemRegiao.TabIndex:=1;
    if pagCadastro.ActivePage=tabRegiao then
       tabOrdemRegiao.TabIndex:=0;
end;


procedure TfrmCadastro.dbRegiaoBeforeEdit(DataSet: TDataSet);
begin
    if dbRegiaoRegiao.Value=0 then
    begin
        showmessage('Registro de controle. Impossivel alterar');
        abort;
    end;
end;
procedure TfrmCadastro.dbRegiaoBeforeDelete(DataSet: TDataSet);
begin
    if dbRegiaoRegiao.Value=0 then
    begin
        showmessage('Registro de controle. Impossivel excluir');
        abort;
    end;
end;

procedure TfrmCadastro.tabOrdemClienteChange(Sender: TObject);
begin
     case tabOrdemCliente.TabIndex of
     0: dbCliente.IndexFieldNames:='Cliente';
     1: dbCliente.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.txtClienteChange(Sender: TObject);
begin
    if txtCliente.text<>'' then
        case tabOrdemCliente.TabIndex of
        0:dbCliente.Locate('Cliente',StrtoInt(Trim(TxtCliente.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbCliente.Locate('Nome',Trim(TxtCliente.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.txtAuditorChange(Sender: TObject);
begin
    if txtAuditor.Text<>'' then
        case TabOrdemAuditor.TabIndex of
        0:dbAuditor.Locate('Auditor',StrtoInt(Trim(TxtAuditor.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbAuditor.Locate('Nome',Trim(TxtAuditor.Text),[loCaseInsensitive,loPartialKey]);
        2:dbAuditor.Locate('CRM',StrToInt(Trim(TxtAuditor.Text)),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemAuditorChange(Sender: TObject);
begin
     case tabOrdemAuditor.TabIndex of
     0:dbAuditor.IndexFieldNames:='Auditor';
     1:dbAuditor.IndexFieldNames:='Nome';
     2:dbAuditor.IndexFieldNames:='CRM';
     end;
end;

procedure TfrmCadastro.tabOrdemEnfermeiroChange(Sender: TObject);
begin
     case tabOrdemEnfermeiro.TabIndex of
     0:dbEnfermeiro.IndexFieldNames:='Enfermeiro';
     1:dbEnfermeiro.IndexFieldNames:='Nome';
     2:dbEnfermeiro.IndexFieldNames:='COREN';
     end;
end;

procedure TfrmCadastro.txtEnfermeiroChange(Sender: TObject);
begin
    if txtEnfermeiro.text<>'' then
        case TabOrdemEnfermeiro.TabIndex of
        0:dbEnfermeiro.Locate('Enfermeiro',StrtoInt(Trim(TxtEnfermeiro.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbEnfermeiro.Locate('Nome',Trim(TxtEnfermeiro.Text),[loCaseInsensitive,loPartialKey]);
        2:dbEnfermeiro.Locate('Coren',StrToInt(Trim(TxtEnfermeiro.Text)),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.txtHospitalChange(Sender: TObject);
begin
    if txtHospital.text<>'' then
        case tabOrdemHospital.TabIndex of
        0:dbHospital.Locate('Hospital',StrtoInt(Trim(TxtHospital.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbHospital.Locate('Nome',Trim(TxtHospital.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemHospitalChange(Sender: TObject);
begin
    case tabOrdemHospital.TabIndex of
     0:begin
       dbHospital.IndexFieldNames:='Hospital';
       txtHospital.Enabled:=true;
       end;
     1: begin
        dbHospital.IndexFieldNames:='Nome';
        txtHospital.Enabled:=true;
        end;
     2: begin
        dbHospital.IndexFieldNames:='Regiao;Nome';
        txtHospital.Enabled:=false;
        end;
     end;
end;

procedure TfrmCadastro.txtRegiaoChange(Sender: TObject);
begin
    if txtRegiao.text<>'' then
        case tabOrdemRegiao.TabIndex of
        0:dbRegiao.Locate('Regiao',StrtoInt(Trim(TxtRegiao.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbRegiao.Locate('Descricao',Trim(TxtRegiao.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemRegiaoChange(Sender: TObject);
begin
    case tabOrdemRegiao.TabIndex of
     0:dbRegiao.IndexFieldNames:='Regiao';
     1:dbRegiao.IndexFieldNames:='Descricao';
     end;
end;

procedure TfrmCadastro.dsServicoStateChange(Sender: TObject);
begin
     cmdNovoSv.Default:=dbServico.State in [dsBrowse];
     cmdExcluiSv.Enabled:=(dbServico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbServico.RecordCount<>0);
     cmdGravaSv.Enabled:=dbServico.State in [dsEdit,dsInsert];
     cmdGravaSv.Default:=dbServico.State in [dsEdit,dsInsert];
     cmdCancelaSv.Enabled:=dbServico.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdNovoSvClick(Sender: TObject);
begin
    dbServico.Insert;
    grdServico.SetFocus;
end;

procedure TfrmCadastro.cmdGravaSvClick(Sender: TObject);
begin
    dbServico.Post;
end;

procedure TfrmCadastro.cmdCancelaSvClick(Sender: TObject);
begin
    dbServico.Cancel;
end;

procedure TfrmCadastro.cmdExcluiSvClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbServico.Delete;
end;

procedure TfrmCadastro.dbServicoAfterPost(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoAfterCancel(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoAfterInsert(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=false;
    dbServicoValorizado.value:=true;
    dbServicoVinculado.value:='N';
end;

procedure TfrmCadastro.grdServicoDblClick(Sender: TObject);
begin
    dbServico.Edit;
    if dbServicoValorizado.value=true then
       dbServicoValorizado.value:=false
    else
       dbServicoValorizado.value:=true;
    dbServico.Post;
end;

procedure TfrmCadastro.dbServicoCalcFields(DataSet: TDataSet);
begin
    if dbServicoValorizado.value=true then
        dbServicoValorizadoTexto.value:='Sim'
    else
        dbServicoValorizadoTexto.value:='Não';
end;

procedure TfrmCadastro.grdServicoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbServicoValorizado.Value=true then
        grdServico.Canvas.Font.Color:=clBlue;
     grdServico.DefaultDrawDataCell(Rect,grdServico.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.dbServicoVinculadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbServicoVinculado.value='N' then
       text:='Nenhum (lançado)';
    if dbServicoVinculado.value='P' then
       text:='Pré-Análise';
    if dbServicoVinculado.value='H' then
        text:='Home Care';
    if dbServicoVinculado.value='S' then
       text:='Pronto Socorro';
end;

procedure TfrmCadastro.dbServicoVinculadoSetText(Sender: TField;
  const Text: String);
begin
    if text='Nenhum (lançado)' then
       dbServicoVinculado.value:='N';
    if text='Pré-Análise' then
       dbServicoVinculado.value:='P';
    if text='Home Care' then
       dbServicoVinculado.value:='H';
    if text='Pronto Socorro' then
       dbServicoVinculado.value:='S';

end;

procedure TfrmCadastro.Button2Click(Sender: TObject);
begin
    dbCliente.First;
    while not dbCliente.eof do
    begin
        dbCliente.Edit;
        dbClienteClienteId.value:=dbClienteIDID.value;
        dbCliente.Post;
        dbCliente.Next;
   end;
end;

procedure TfrmCadastro.tabOrdemAdmChange(Sender: TObject);
begin
     case tabOrdemAdm.TabIndex of
     0:dbAdm.IndexFieldNames:='Administrativo';
     1:dbAdm.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.grdClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbClienteDataFim.isnull then
        grdCliente.Canvas.Font.Color:=clRed;

     grdCliente.DefaultDrawDataCell(Rect,grdCliente.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.cmdNovoAClick(Sender: TObject);
begin
     dbAdm.Insert;
     cmpAdm.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraAClick(Sender: TObject);
begin
     dbAdm.Edit;
     cmpNomeAdm.SetFocus;
end;

procedure TfrmCadastro.cmdGravaAClick(Sender: TObject);
begin
     dbAdm.Post;
end;

procedure TfrmCadastro.cmdCancelaAClick(Sender: TObject);
begin
     dbAdm.Cancel;
end;

procedure TfrmCadastro.cmdExcluiAClick(Sender: TObject);
var iResultado:integer;
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para Usuários Master');
        abort;
    end;
    iResultado:=Application.MessageBox('Tem cereteza que deseja excluir o Registro?',
               'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_yes) then
     dbAdm.Delete;
end;

procedure TfrmCadastro.txtAdmChange(Sender: TObject);
begin
    if txtAdm.text<>'' then
        case TabOrdemAdm.TabIndex of
        0:dbAdm.Locate('Administrativo',StrtoInt(Trim(TxtAdm.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbAdm.Locate('Nome',Trim(TxtAdm.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.grdAuditorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbAuditorDataFim.IsNull then
        grdAuditor.Canvas.Font.Color:=clRed;

     grdAuditor.DefaultDrawDataCell(Rect,grdAuditor.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.grdEnfermeiroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbEnfermeiroDataFim.IsNull then
        grdEnfermeiro.Canvas.Font.Color:=clRed;

     grdEnfermeiro.DefaultDrawDataCell(Rect,grdEnfermeiro.Columns[DataCol].field,State);

end;

procedure TfrmCadastro.grdAdmDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbAdmDataFim.IsNull then
        grdAdm.Canvas.Font.Color:=clRed;

     grdAdm.DefaultDrawDataCell(Rect,grdAdm.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.dsAdmStateChange(Sender: TObject);
begin
     cmdNovoA.Default:=dbAdm.State in [dsBrowse];
     cmdExcluiA.Enabled:=(dbAdm.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbAdm.RecordCount<>0);
     cmdGravaA.Enabled:=dbAdm.State in [dsEdit,dsInsert];
     cmdGravaA.Default:=dbAdm.State in [dsEdit,dsInsert];
     cmdAlteraA.Enabled:=(dbAdm.State=dsBrowse)
                         and (dbAdm.RecordCount<>0);
     cmdCancelaA.Enabled:=dbAdm.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgCliente.ItemIndex of
    0:accept:=dbClienteDataFim.isnull;
    1:accept:=not dbClienteDataFim.isnull;
    2:accept:=true;
    end;
end;

procedure TfrmCadastro.rdgClienteClick(Sender: TObject);
begin
    dbCliente.Refresh;
end;

procedure TfrmCadastro.rdgMedicoClick(Sender: TObject);
begin
    dbAuditor.Refresh;
end;

procedure TfrmCadastro.rdgEnfermeiroClick(Sender: TObject);
begin
    dbEnfermeiro.Refresh;
end;

procedure TfrmCadastro.rdgAdmClick(Sender: TObject);
begin
    dbAdm.Refresh;
end;

procedure TfrmCadastro.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgMedico.ItemIndex of
    0:accept:=dbAuditorDataFim.isnull;
    1:accept:=not dbAuditorDataFim.isnull;
    2:accept:=true;
    end;

end;

procedure TfrmCadastro.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgEnfermeiro.ItemIndex of
    0:accept:=dbEnfermeiroDataFim.isnull;
    1:accept:=not dbEnfermeiroDataFim.isnull;
    2:accept:=true;
    end;
end;

procedure TfrmCadastro.dbAdmFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgAdm.ItemIndex of
    0:accept:=dbAdmDataFim.isnull;
    1:accept:=not dbAdmDataFim.isnull;
    2:accept:=true;
    end;
end;

procedure TfrmCadastro.dbAdmAfterCancel(DataSet: TDataSet);
begin
     cmpAdm.Enabled:=false;
end;

procedure TfrmCadastro.dbAdmAfterInsert(DataSet: TDataSet);
begin
    cmpAdm.Enabled:=true;
    dbAdmAdministrativo.Value:=iUltimoAdm+1;
    dbAdmDataInclusao.Value:=date;
    dbAdmDataInicio.Value:=date;
end;

procedure TfrmCadastro.dbAdmBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemAdm.TabIndex:=0;
    dbAdm.Last;
    if dbAdmAdministrativo.value=999999 then
        dbAdm.Prior;
    iUltimoAdm:=dbAdmAdministrativo.Value;
end;

procedure TfrmCadastro.dbAdmBeforePost(DataSet: TDataSet);
begin
     if dbAdmAdministrativo.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbAdmNome.Value='' then
     begin
        ShowMessage('Nome inválida');
        abort;
     end;

     if dbAdmCPF.Value='' then
     begin
        ShowMessage('CPF inválido');
        abort;
     end;

     if (dbAdmBusca.Locate('CPF',dbAdmCPF.value,[])) and
        (dbAdmBuscaAdministrativo.value<>dbAdmAdministrativo.value) then
     begin
        ShowMessage('CPF já cadastrado');
        abort;
     end;

     if (dbAdmBusca.Locate('Nome',dbAdmNome.value,[])) and
        (dbAdmBuscaAdministrativo.value<>dbAdmAdministrativo.value) then
        ShowMessage('Atenção! Nome já cadastrado, por favor verifique');

     dbAdmUsuario.Value:=iUsuario;
end;

procedure TfrmCadastro.dbHospitalCalcFields(DataSet: TDataSet);
begin
    if dbHospitalAuditorado.value=true then
        dbHospitalAuditoradoTexto.value:='Sim';
    if dbHospitalAuditorado.value=false then
        dbHospitalAuditoradoTexto.value:='Não';
end;

procedure TfrmCadastro.grdHospitalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbHospitalAuditorado.value=false then
        grdHospital.Canvas.Font.Color:=clRed;

     grdHospital.DefaultDrawDataCell(Rect,grdHospital.Columns[DataCol].field,State);

end;

procedure TfrmCadastro.rdgHospitalClick(Sender: TObject);
begin
    dbHospital.Refresh;
end;

procedure TfrmCadastro.dbHospitalFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgHospital.ItemIndex of
    0:accept:=dbHospitalAuditorado.value=true;
    1:accept:=dbHospitalAuditorado.value=false;
    2:accept:=true;
    end;

end;

procedure TfrmCadastro.dbAdmAfterEdit(DataSet: TDataSet);
begin
    if dbAdmAdministrativo.value=999999 then
    begin
        ShowMessage('Administrativo de controle do sistema. Impossivel alterar');
        dbAdm.Cancel;
        abort;
    end;
end;

procedure TfrmCadastro.dbAdmBeforeDelete(DataSet: TDataSet);
begin
    if dbAdmAdministrativo.value=999999 then
    begin
        ShowMessage('Administrativo de controle do sistema. Impossivel excluir');
        abort;
    end;
end;

procedure TfrmCadastro.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoValorizado.value=true;
end;

procedure TfrmCadastro.dbAdmBeforeEdit(DataSet: TDataSet);
begin
    if dbAdmAdministrativo.value=999999 then
    begin
        ShowMessage('Administrativo de controle do sistema. Impossivel alterar');
        abort;
    end;

end;

procedure TfrmCadastro.dbClienteProrrogaVGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbClienteProrrogaV.value=false then
       text:='Não';
    if dbClienteProrrogaV.value=true then
       text:='Sim';
end;


procedure TfrmCadastro.dbClienteProrrogaVSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
       dbClienteProrrogaV.value:=true;
    if text='Não' then
       dbClienteProrrogaV.value:=false;

end;

end.


