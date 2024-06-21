unit frmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, 
  StdCtrls, Buttons, DBCtrls, ImgList, ComCtrls,
  ToolWin, RpRenderPDF, RpRender, RpRenderHTML, RpBase, RpSystem, RpDefine,
  RpRave, RpFiler, RpRenderRTF, RpRenderText, RpCon, ExcelExport, Variants,
  NetGradient, WinSkinData, DASQLMonitor, MSSQLMonitor, Grids, DBGrids;

type
  TfrmMenu = class(TForm)
    mnuMenu: TMainMenu;
    cmdEscala: TMenuItem;
    Tabelas1: TMenuItem;
    AdmSistema1: TMenuItem;
    Sobre1: TMenuItem;
    ControledeAcesso1: TMenuItem;
    Proprietria1: TMenuItem;
    Sair1: TMenuItem;
    barPrincipal: TToolBar;
    butProgramacao: TToolButton;
    lkuUsuario: TDBLookupComboBox;
    lblSenha: TEdit;
    cmdSenha: TBitBtn;
    dsUsuario: TDataSource;
    dbAcesso: TMSTable;
    dbAcessoUsuario: TStringField;
    dbAcessoModulo: TStringField;
    dbAcessoGravacao: TBooleanField;
    dsAcesso: TDataSource;
    cmdSenhaok: TBitBtn;
    cmdAgenda: TMenuItem;
    mnuCorrecao: TMenuItem;
    dadosaud: TMSConnection;
    RvBBAgenda: TRvProject;
    RvSystem: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    butAgenda: TToolButton;
    ExcelExport: TExcelExport;
    Log1: TMenuItem;
    NetGradient1: TNetGradient;
    NetGradient2: TNetGradient;
    ImageList1: TImageList;
    SkinData: TSkinData;
    MSSQLMonitor: TMSSQLMonitor;
    dbLog: TMSQuery;
    dbLogRegistro: TIntegerField;
    dbLogModulo: TStringField;
    dbLogCliente: TIntegerField;
    dbLogCodigo1: TIntegerField;
    dbLogCodigo2: TIntegerField;
    dbLogCodigo3: TStringField;
    dbLogOperacao: TStringField;
    dbLogUsuario: TStringField;
    dbLogData: TDateTimeField;
    dbLogHora: TDateTimeField;
    dbLogCampos: TStringField;
    butEscala: TToolButton;
    ToolButton1: TToolButton;
    N1Cadastros1: TMenuItem;
    N2Frias1: TMenuItem;
    dbUsuario: TMSQuery;
    dbUsuarioUsuario: TStringField;
    dbUsuarioNomeUsuario: TStringField;
    dbUsuarioSenha: TStringField;
    dbUsuarioTipo: TStringField;
    dbUsuarioBBAud: TBooleanField;
    dbUsuarioMasterAud: TBooleanField;
    dbUsuarioDataInicio: TDateTimeField;
    dbUsuarioDataFim: TDateTimeField;
    dbUsuarioUsuarioI: TStringField;
    dbUsuarioDataInclusao: TDateTimeField;
    dbUsuarioUsuarioA: TStringField;
    dbUsuarioDataAlteracao: TDateTimeField;
    dbUsuarioUsuarioE: TStringField;
    dbUsuarioDataExclusao: TDateTimeField;
    dbUsuarioBBFin: TBooleanField;
    dbUsuarioMasterFin: TBooleanField;
    dbUsuarioBBAgenda: TBooleanField;
    dbUsuarioMasterAgenda: TBooleanField;
    dbUsuarioBBISO: TBooleanField;
    dbUsuarioMasterISO: TBooleanField;
    dbAcessoTipo: TStringField;
    ExcelExport1: TExcelExport;
    procedure ControledeAcesso1Click(Sender: TObject);
    procedure Proprietria1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdSenhaClick(Sender: TObject);
    procedure cmdSenhaokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Log1Click(Sender: TObject);
    procedure cmdEscalaClick(Sender: TObject);
    procedure N2Frias1Click(Sender: TObject);
    procedure N1Cadastros1Click(Sender: TObject);
    procedure cmdAgendaClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure dbAcessoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
     function Acesso(iModulo: string):boolean;
     function AcessoG(iModulo: string):boolean;
     function Log(xModulo: string; xcliente:integer; xCampo:string; xCodigo1:integer;xCodigo2:integer;xCodigo3:string;xOperacao:string):boolean;
  end;

var
  frmMenu: TfrmMenu;
  iUsuario,iDir, _Empresa,iDirA:string;
  iMaster:boolean;

implementation

uses frmSenhas, frmProprietarias, frmCadastros, dmRelatorios, frmLogs,
  frmAgendas, frmEscalas, frmFeriass, frmSobres;


{$R *.DFM}

function Encrypt( Senha:String ): String;
Const
    Chave : String = 'Jesus';
Var
    x,y : Integer;
    NovaSenha : String;
begin
   for x := 1 to Length( Chave ) do begin
      NovaSenha := '';
      for y := 1 to Length( Senha ) do
         NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
      Senha := NovaSenha;
   end;
   result := Senha;
end;

function TfrmMenu.Acesso(iModulo: string):boolean;
var iOk: boolean;
begin
     iOk:=false;
     if lkuUsuario.Enabled=true then
     begin
        ShowMessage('Acesso não Permitido!');
        iOk:=false;
     end
     else
     begin
         if dbUsuarioUsuario.Text='Convidado' then
         begin
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
            begin
               ShowMessage('Acesso não Permitido!');
                iOk:=false;
            end;
         end
         else
         begin
            if dbUsuarioMasterAgenda.Value=true then
               iOk:=true
            else
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
               begin
                  ShowMessage('Acesso não Permitido!');
                  Log('Acesso NP',0,'',0,0,'','A');
                  iOk:=false;
               end
               else
                  iOk:=true;
         end;
     end;
     Result:=iok;
end;

function TfrmMenu.AcessoG(iModulo: string):boolean;
var iOk: boolean;
begin
     iOk:=false;
     if lkuUsuario.Enabled=true then
     begin
        ShowMessage('Acesso não Permitido!');
        iOk:=false;
     end
     else
     begin
         if dbUsuarioUsuario.Text='Convidado' then
         begin
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
            begin
               ShowMessage('Acesso não Permitido!');
                iOk:=false;
            end;
         end
         else
         begin
            if dbUsuarioMasterAgenda.Value=true then
               iOk:=true
            else
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
               begin
                  ShowMessage('Acesso não Permitido!');
                  Log('Acesso NP',0,'',0,0,'','A');
                  iOk:=false;
               end
               else
                  if dbAcessoGravacao.Value=false then
                  begin
                    ShowMessage('Acesso permitido apenas para consultas!');
                    iOk:=false;
                  end
                  else
                      iOk:=true;
         end;
     end;
     Result:=iok;
end;

function TfrmMenu.Log(xModulo: string;
                      xcliente:integer;
                      xCampo:string;
                      xCodigo1:integer;
                      xCodigo2:integer;
                      xCodigo3:string;
                      xOperacao:string):boolean;
begin
try
    dbLog.Insert;
    dbLogModulo.value:=xModulo;
    dbLogCliente.value:=xCliente;
    dbLogCampos.value:=xCampo;
    dbLogCodigo1.value:=xCodigo1;
    dbLogCodigo2.value:=xCodigo2;
    dbLogCodigo3.value:=xCodigo3;
    dbLogOperacao.value:=xOperacao;
    dbLogUsuario.value:=iUsuario;
    dbLogData.value:=date;
    dbLogHora.value:=time;
    dbLog.Post;
    Result:=true;
except
    ShowMessage('Houve uma falha ao tentar gravar o Log desta operaçao');
    Result:=false;
end;
end;

procedure TfrmMenu.ControledeAcesso1Click(Sender: TObject);
begin
    if dbUsuarioMasterAgenda.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if frmSenha=nil then
       Application.CreateForm(TfrmSenha, frmSenha);
    frmSenha.ShowModal;
end;

procedure TfrmMenu.Proprietria1Click(Sender: TObject);
begin
    if frmProprietaria=nil then
       Application.CreateForm(TfrmProprietaria, frmProprietaria);
    frmProprietaria.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Deseja realmente sair?',
     'Aviso', mb_yesno+ mb_iconExclamation);
     if(iResultado=id_no) then abort;

     if iUsuario<>'Convidado' then
         Log('Fim de Sessão',0,'',0,0,'','S');
     rvBBAgenda.Close;
     Application.Terminate;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
var iservidor:Tstringlist;
var iconexao,idirSql:string;
begin
   Top:=0;
   Left:=0;
   Screen.Cursor := crHourGlass;
   Align:=alTop;
   CurrencyString:='R$';
   CurrencyFormat:=0; //simbolo a esquerda
   ThousandSeparator:='.';
   DecimalSeparator:=',';
   ShortDateFormat:='dd/mm/yyyy';
   LongMonthNames[1]:='Janeiro';
   LongMonthNames[2]:='Fevereiro';
   LongMonthNames[3]:='Março';
   LongMonthNames[4]:='Abril';
   LongMonthNames[5]:='Maio';
   LongMonthNames[6]:='Junho';
   LongMonthNames[7]:='Julho';
   LongMonthNames[8]:='Agosto';
   LongMonthNames[9]:='Setembro';
   LongMonthNames[10]:='Outubro';
   LongMonthNames[11]:='Novembro';
   LongMonthNames[12]:='Dezembro';
   LongDateFormat:='dd mmmm yyyy';

   iDir:=ExtractFilePath(Application.ExeName);
   iDirA:=iDir+'Agenda';
   if not directoryexists(iDir+'Agenda')then
        createdir(iDir+'\Agenda');
   iservidor:=tstringlist.create;
   iservidor.clear;
   Screen.Cursor := crHourGlass;

    if not FileExists(idirSql+'servidor.ini') then
    begin
        ShowMessage('Identificação do Servidor não encontrada');
        abort;
    end
    else iServidor.LoadFromFile(idirSql+'servidor.ini');

    iconexao:='Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;'+
              'Data Source='+iservidor.values['SERVIDOR']+';'+
              'Initial Catalog=BBAud;'+
              'Persist Security Info=True';

//Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;
//Data Source=ANDROS-VOSTRO\SQLEXPRESS;Initial Catalog=BBAud;Persist Security Info=True
   try
      dadosaud.ConnectString:=iconexao;
      dadosaud.Connected:=true;

      ShortDateFormat:='dd/mm/yyyy';

      _Empresa:='B+ Auditoria Médica';
     rvBBAgenda.ProjectFile:=idir+'\BBAgenda.rav';
     rvBBAgenda.Open;

      dbUsuario.Open;
      dbUsuario.Locate('Usuario','Convidado',[]);
      iUsuario:=dbUsuarioUsuario.Text;
      iMaster:=dbUsuarioMasterAgenda.Value;
      dbAcesso.Open;
      dbLog.SQL.Text:='Select * from LogA where Data=:iData ';
      dbLog.ParamByName('iData').asdate:=date;
      dbLog.Open;
   finally
     Application.CreateForm(TdmRelatorio, dmRelatorio);
     Screen.Cursor := crDefault;
     lkuUsuario.KeyValue:='Convidado';
     lkuUsuario.Enabled:=false;
     lblSenha.Enabled:=false;
     cmdSenhaok.Visible:=false;
   end;
end;

procedure TfrmMenu.cmdSenhaClick(Sender: TObject);
begin
     lkuUsuario.Enabled:=true;
     lblSenha.Enabled:=true;
     cmdSenha.Visible:=false;
     cmdSenhaok.Visible:=true;
     lkuUsuario.SetFocus;
end;

procedure TfrmMenu.cmdSenhaokClick(Sender: TObject);
var iSenha:string;
begin
     dbUsuario.Refresh;
     dbAcesso.Refresh;
     dbUsuario.Locate('Usuario',lkuUsuario.KeyValue,[]);
     iSenha:=Encrypt(dbUsuarioSenha.Text);

     if iSenha<>lblSenha.Text then
     begin
        ShowMessage('Senha inválida!');
        Log('Senha inválida',0,'',0,0,'','A');
        dbUsuario.Locate('Usuario','Convidado',[]);
     end;
     iUsuario:=dbUsuarioUsuario.Text;
     iMaster:=dbUsuarioMasterAgenda.Value;
     lkuUsuario.Enabled:=false;
     lblSenha.Text:='';
     lblSenha.Enabled:=false;
     cmdSenha.Visible:=true;
     cmdSenhaok.Visible:=false;
     if iUsuario<>'Convidado' then
         Log('Início de Sessão',0,'',0,0,'','S');
end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dbUsuario.Close;
     dbAcesso.Close;
     dbLog.Close;
     rvBBAgenda.Close;
end;

procedure TfrmMenu.Log1Click(Sender: TObject);
begin
    if not iMaster then
    begin
        ShowMessage('Acesso apenas para usuários Master');
        abort;
    end;
    if frmLog=nil then
       Application.CreateForm(TfrmLog, frmLog);
    frmLog.ShowModal;
end;

procedure TfrmMenu.cmdEscalaClick(Sender: TObject);
begin
  if not Acesso('Escala')  then
      abort;
  if frmEscala=nil then
      Application.CreateForm(TfrmEscala, frmEscala);
    frmEscala.Show;
end;

procedure TfrmMenu.N2Frias1Click(Sender: TObject);
begin
    if not Acesso('Agenda') then
       abort;
    if frmFerias=nil then
      Application.CreateForm(TfrmFerias, frmFerias);
    frmFerias.Show;
end;

procedure TfrmMenu.N1Cadastros1Click(Sender: TObject);
begin
    if not Acesso('Agenda') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.Show;
end;

procedure TfrmMenu.cmdAgendaClick(Sender: TObject);
begin
    if not Acesso('Agenda') then
       abort;
    if frmAgenda=nil then
        Application.CreateForm(TfrmAgenda, frmAgenda);
    frmAgenda.Show;   
end;

procedure TfrmMenu.Sobre1Click(Sender: TObject);
begin
    if frmSobre=nil then
      Application.CreateForm(TfrmSobre, frmSobre);
    frmSobre.ShowModal;
end;

procedure TfrmMenu.dbAcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAcessoTipo.value='E';
end;

end.
