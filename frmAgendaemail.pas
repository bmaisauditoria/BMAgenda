unit frmAgendaemail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  MSAccess, DB, MemDS, DBAccess, ToolWin, Menus,Shellapi, RpDefine, RpCon,
  RpConDS;

type
  TfrmAgendamail = class(TForm)
    Panel9: TPanel;
    Label4: TLabel;
    DtpFim: TLabel;
    dbCliente: TMSTable;
    dbClienteClienteID: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dsCliente: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dbMedico: TMSTable;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dsMedico: TDataSource;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dsEnfermeiro: TDataSource;
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmemail: TStringField;
    dbAdmDataFim: TDateTimeField;
    dsAdm: TDataSource;
    dbMailMed: TMSQuery;
    pagMail: TPageControl;
    tabMed: TTabSheet;
    tabEnf: TTabSheet;
    tabAdm: TTabSheet;
    pnlMedico: TPanel;
    dbMailMedDataIni: TDateTimeField;
    dbMailMedTipo: TStringField;
    dbMailMedAuditor: TIntegerField;
    dbMailMedDataEnvio: TDateTimeField;
    dbMailMedEnviado: TBooleanField;
    dbMailMedNome: TStringField;
    dbMailMedFone: TStringField;
    dbMailMedFone1: TStringField;
    dbMailMedFone2: TStringField;
    dbMailMedEmail: TStringField;
    dbMailMedQtd: TIntegerField;
    dsMailMed: TDataSource;
    CoolBar1: TCoolBar;
    cmbMedico: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    qryAgenda: TMSQuery;
    qryAgendaData: TDateTimeField;
    qryAgendaCliente: TIntegerField;
    qryAgendaHospital: TIntegerField;
    qryAgendaServico: TStringField;
    qryAgendaAuditor: TIntegerField;
    qryAgendaEnfermeiro: TIntegerField;
    qryAgendaAdministrativo: TIntegerField;
    qryAgendaQtdContas: TIntegerField;
    qryAgendaDataConta: TDateTimeField;
    qryAgendaClienteID: TStringField;
    dbMailEnf: TMSQuery;
    dsMailEnf: TDataSource;
    dbMailAdm: TMSQuery;
    dsMailAdm: TDataSource;
    dbMailAdmDataIni: TDateTimeField;
    dbMailAdmTipo: TStringField;
    dbMailAdmAuditor: TIntegerField;
    dbMailAdmDataEnvio: TDateTimeField;
    dbMailAdmEnviado: TBooleanField;
    dbMailAdmQtd: TIntegerField;
    dbMailAdmAdministrativo: TIntegerField;
    dbMailAdmNome: TStringField;
    dbMailAdmFone: TStringField;
    dbMailAdmFone1: TStringField;
    dbMailAdmFone2: TStringField;
    dbMailAdmemail: TStringField;
    CoolBar2: TCoolBar;
    CoolBar3: TCoolBar;
    cmbEnfermeiro: TDBLookupComboBox;
    cmbAdm: TDBLookupComboBox;
    grdEnf: TDBGrid;
    grdAdm: TDBGrid;
    dbMailMedAuditor_1: TIntegerField;
    dbMailMedEndereco: TStringField;
    dbMailMedBairro: TStringField;
    dbMailMedCidade: TStringField;
    dbMailMedUF: TStringField;
    dbMailMedCep: TStringField;
    dbMailMedCRM: TIntegerField;
    dbMailMedCPF: TStringField;
    dbMailMedRG: TStringField;
    dbMailMedRGEmissor: TStringField;
    dbMailMedNascimento: TDateTimeField;
    dbMailMedCliente: TIntegerField;
    dbMailMedClienteTipo: TStringField;
    dbMailMedObservacao: TMemoField;
    dbMailMedDataInicio: TDateTimeField;
    dbMailMedDataFim: TDateTimeField;
    dbMailMedUsuario: TStringField;
    dbMailMedDataInclusao: TDateTimeField;
    dbAgendaMed: TMSQuery;
    dbAgendaMedData: TDateTimeField;
    dbAgendaMedCliente: TIntegerField;
    dbAgendaMedHospital: TIntegerField;
    dbAgendaMedServico: TStringField;
    dbAgendaMedAuditor: TIntegerField;
    dbAgendaMedEnfermeiro: TIntegerField;
    dbAgendaMedAdministrativo: TIntegerField;
    dbAgendaMedQtdContas: TIntegerField;
    dbAgendaMedDataConta: TDateTimeField;
    dbAgendaMedClienteID: TStringField;
    dbAgendaMedNome: TStringField;
    dbAgendaEnf: TMSQuery;
    dbAgendaAdm: TMSQuery;
    dbAgendaEnfData: TDateTimeField;
    dbAgendaEnfCliente: TIntegerField;
    dbAgendaEnfHospital: TIntegerField;
    dbAgendaEnfServico: TStringField;
    dbAgendaEnfAuditor: TIntegerField;
    dbAgendaEnfEnfermeiro: TIntegerField;
    dbAgendaEnfAdministrativo: TIntegerField;
    dbAgendaEnfQtdContas: TIntegerField;
    dbAgendaEnfDataConta: TDateTimeField;
    dbAgendaEnfClienteID: TStringField;
    dbAgendaEnfNome: TStringField;
    dbAgendaAdmData: TDateTimeField;
    dbAgendaAdmCliente: TIntegerField;
    dbAgendaAdmHospital: TIntegerField;
    dbAgendaAdmServico: TStringField;
    dbAgendaAdmAuditor: TIntegerField;
    dbAgendaAdmEnfermeiro: TIntegerField;
    dbAgendaAdmAdministrativo: TIntegerField;
    dbAgendaAdmQtdContas: TIntegerField;
    dbAgendaAdmDataConta: TDateTimeField;
    dbAgendaAdmClienteID: TStringField;
    dbAgendaAdmNome: TStringField;
    dtpIni: TLabel;
    BitBtn1: TBitBtn;
    grdMed: TDBGrid;
    cmdAtualizaP: TBitBtn;
    dbMailAdmNascimento: TDateTimeField;
    dbMailAdmCPF: TStringField;
    dbMailAdmDataInclusao: TDateTimeField;
    dbMailAdmUsuario: TStringField;
    dbMailAdmDataInicio: TDateTimeField;
    dbMailAdmDataFim: TDateTimeField;
    dbMailEnfDataIni: TDateTimeField;
    dbMailEnfTipo: TStringField;
    dbMailEnfAuditor: TIntegerField;
    dbMailEnfDataEnvio: TDateTimeField;
    dbMailEnfQtd: TIntegerField;
    dbMailEnfEnviado: TBooleanField;
    dbMailEnfNome: TStringField;
    dbMailEnfCOREN: TIntegerField;
    dbMailEnfEndereco: TStringField;
    dbMailEnfBairro: TStringField;
    dbMailEnfCidade: TStringField;
    dbMailEnfUF: TStringField;
    dbMailEnfCep: TStringField;
    dbMailEnfFone: TStringField;
    dbMailEnfFone1: TStringField;
    dbMailEnfFone2: TStringField;
    dbMailEnfRG: TStringField;
    dbMailEnfRGEmissor: TStringField;
    dbMailEnfCPF: TStringField;
    dbMailEnfNascimento: TDateTimeField;
    dbMailEnfEmail: TStringField;
    dbMailEnfDataInicio: TDateTimeField;
    dbMailEnfDataFim: TDateTimeField;
    dbMailEnfCliente: TIntegerField;
    dbMailEnfClienteTipo: TStringField;
    dbMailEnfUsuario: TStringField;
    dbMailEnfObservacao: TMemoField;
    dbMailEnfDataInclusao: TDateTimeField;
    dbMailEnfEnfermeiro: TIntegerField;
    BitBtn3: TBitBtn;
    dbAgendaMedObservacao: TStringField;
    dbAgendaEnfObservacao: TStringField;
    dbAgendaAdmObservacao: TStringField;
    rvAgendaMed: TRvDataSetConnection;
    BitBtn4: TBitBtn;
    rvAgendaEnf: TRvDataSetConnection;
    rvAgendaAdm: TRvDataSetConnection;
    procedure FormShow(Sender: TObject);
    procedure Semana(idata:Tdate);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbMedicoCloseUp(Sender: TObject);
    procedure cmbEnfermeiroCloseUp(Sender: TObject);
    procedure cmbAdmCloseUp(Sender: TObject);
    procedure grdMedDblClick(Sender: TObject);
    procedure dbMailMedEnviadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbMailMedEnviadoSetText(Sender: TField; const Text: String);
    procedure dbMailEnfEnviadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbMailEnfEnviadoSetText(Sender: TField; const Text: String);
    procedure dbMailAdmEnviadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbMailAdmEnviadoSetText(Sender: TField; const Text: String);
    procedure grdMedDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdAtualizaPClick(Sender: TObject);
    procedure grdEnfDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdAdmDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdEnfDblClick(Sender: TObject);
    procedure grdAdmDblClick(Sender: TObject);
    procedure dbAgendaEnfFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure grdMedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdEnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    iDataIni,iDataFim:Tdate;
  end;

var
  frmAgendamail: TfrmAgendamail;


implementation

uses frmPrincipal, frmAgendas, frmCadastros, frmAgendamailcopia;

{$R *.dfm}

Function LimpaAcento(A:String):string;
var i:Integer;
begin
    for i:=1 to length(a) do
        case a[i] of
            '&':a[i]            :='e';
{            'ã','á','à','â':a[i]:='a';
            'è','é','ê':a[i]    :='e';
            'õ','ô','ò','ó':a[i]:='o';
            'í':a[i]            :='i';
            'ü','ú':a[i]        :='u';
            'ç':a[i]            :='c';
            'º':a[i]            :='o';
            'ª':a[i]            :='a';}
        end;
    result:=a;
end;

Function DiaSemana(idata:TDate):string;
var dia:string;
var a:integer;
begin
    a:=DayOfWeek(idata);
    case a of
    1:dia:='Dom';
    2:dia:='Seg';
    3:dia:='Ter';
    4:dia:='Qua';
    5:dia:='Qui';
    6:dia:='Sex';
    7:dia:='Sab';
    end;
    result:=dia;
end;


procedure TfrmAgendaMail.Semana(idata:Tdate);
var i:integer;
begin
    dbAgendaMed.Close;
    dbMailMed.Close;
    dbMailMed.SQL.Text:='Select * from Agenda_mail,Auditores '+
                        'where Agenda_mail.Auditor=Auditores.Auditor and '+
                        ' Agenda_mail.Tipo='+QuotedStr('M')+' and '+
                        ' Agenda_mail.DataIni=:iData '+
                        'order by Nome ';

    dbMailMed.ParamByName('iData').asdate:=iDataIni;
    dbMailMed.Open;

    dbAgendaMed.SQL.Text:='Select * from Agenda, Hospital '+
                          'where Agenda.Hospital=Hospital.Hospital and '+
                          'Data>=:iDataIni and Data<=:iDataFim '+
                          'order by Data,Hospital.Nome ';
    dbAgendaMed.ParamByName('iDataIni').asdate:=iDataIni;
    dbAgendaMed.ParamByName('iDataFim').asdate:=iDataFim;
    dbAgendaMed.Open;

    dbAgendaEnf.Close;
    dbMailEnf.Close;
    dbMailEnf.SQL.Text:='Select * from Agenda_mail,Enfermeiros '+
                        'where Agenda_mail.Auditor=Enfermeiros.Enfermeiro and '+
                        ' Agenda_mail.Tipo='+QuotedStr('E')+' and '+
                        ' Agenda_mail.DataIni=:iData '+
                        'order by Nome ';

    dbMailEnf.ParamByName('iData').asdate:=iDataIni;
    dbMailEnf.Open;
    dbAgendaEnf.SQL.Text:='Select * from Agenda, Hospital '+
                          'where Agenda.Hospital=Hospital.Hospital and '+
                          'Data>=:iDataIni and Data<=:iDataFim '+
                          'order by Data,Hospital.Nome ';
    dbAgendaEnf.ParamByName('iDataIni').asdate:=iDataIni;
    dbAgendaEnf.ParamByName('iDataFim').asdate:=iDataFim;
    dbAgendaEnf.Open;

    dbAgendaAdm.Close;
    dbMailAdm.Close;
    dbMailAdm.SQL.Text:='Select * from Agenda_mail,Administrativos '+
                        'where Agenda_mail.Auditor=Administrativos.Administrativo and '+
                        ' Agenda_mail.Tipo='+QuotedStr('A')+' and '+
                        ' Agenda_mail.DataIni=:iData '+
                        'order by Nome ';

    dbMailAdm.ParamByName('iData').asdate:=iDataIni;
    dbMailAdm.Open;
    dbAgendaAdm.SQL.Text:='Select * from Agenda, Hospital '+
                          'where Agenda.Hospital=Hospital.Hospital and '+
                          'Data>=:iDataIni and Data<=:iDataFim '+
                          'order by Data,Hospital.Nome ';
    dbAgendaAdm.ParamByName('iDataIni').asdate:=iDataIni;
    dbAgendaAdm.ParamByName('iDataFim').asdate:=iDataFim;
    dbAgendaAdm.Open;
end;

procedure TfrmAgendamail.FormShow(Sender: TObject);
begin
    iDataIni:=frmAgenda.dtpIni.date;
    iDataFim:=frmAgenda.dtpIni.date+4;

    DtpIni.Caption:=DateToStr(iDataIni);
    DtpFim.Caption:=DateToStr(iDataFim);

    dbCliente.Open;
    dbHospital.Open;
    dbMedico.Open;
    dbEnfermeiro.Open;
    dbAdm.Open;

    Semana(date);

    cmbMedico.KeyValue:=dbMedicoAuditor.value;
    cmbEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.value;
    cmbAdm.KeyValue:=dbAdmAdministrativo.value;
    pagMail.ActivePageIndex:=0;
end;

procedure TfrmAgendamail.BitBtn2Click(Sender: TObject);
begin
    qryAgenda.SQL.Clear;
    qryAgenda.SQL.Text:='Select * from Agenda '+
                       'where Data>=:Ini and Data<=:Fim  ';

    qryAgenda.ParamByName('Ini').asdate:=iDataIni;
    qryAgenda.ParamByName('Fim').asdate:=iDataFim;
    qryAgenda.Open;

    qryAgenda.First;
    while not qryAgenda.eof do
    begin
        if qryAgendaAuditor.value>0 then
        begin
            if not dbMailMed.Locate('Tipo;Auditor',VarArrayof(['M',qryAgendaAuditor.value]),[]) then
            begin
                dbMailMed.Insert;
                dbMailMedDataIni.value:=iDataIni;
                dbMailMedTipo.value:='M';
                dbMailMedAuditor.value:=qryAgendaAuditor.value;
                dbMailMedQtd.value:=0;
                dbMailMedEnviado.value:=false;
                dbMailMed.Post;
            end;
        end;
        if qryAgendaEnfermeiro.value>0 then
        begin
            if not dbMailEnf.Locate('Tipo;Auditor',VarArrayof(['E',qryAgendaEnfermeiro.value]),[]) then
            begin
                dbMailEnf.Insert;
                dbMailEnfDataIni.value:=iDataIni;
                dbMailEnfTipo.value:='E';
                dbMailEnfAuditor.value:=qryAgendaEnfermeiro.value;
                dbMailEnfQtd.value:=0;
                dbMailEnfEnviado.value:=false;
                dbMailEnf.Post;
            end;
        end;
        if qryAgendaAdministrativo.value>0 then
        begin
            if not dbMailAdm.Locate('Tipo;Auditor',VarArrayof(['A',qryAgendaAdministrativo.value]),[]) then
            begin
                dbMailAdm.Insert;
                dbMailAdmDataIni.value:=iDataIni;
                dbMailAdmTipo.value:='A';
                dbMailAdmAuditor.value:=qryAgendaAdministrativo.value;
                dbMailAdmQtd.value:=0;
                dbMailAdmEnviado.value:=false;
                dbMailAdm.Post;
            end;
        end;
        qryAgenda.Next;
    end;
    dbMailMed.Refresh;
    dbMailEnf.Refresh;
    dbMailAdm.Refresh;
    ShowMessage('Listagem de e-mails atualizada com sucesso');
end;

procedure TfrmAgendamail.cmbMedicoCloseUp(Sender: TObject);
begin
    dbMailMed.Locate('Nome',dbMedicoNome.value,[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmAgendamail.cmbEnfermeiroCloseUp(Sender: TObject);
begin
    dbMailEnf.Locate('Nome',dbEnfermeiroNome.value,[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmAgendamail.cmbAdmCloseUp(Sender: TObject);
begin
    dbMailAdm.Locate('Nome',dbAdmNome.value,[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmAgendamail.dbMailMedEnviadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbMailMedEnviado.value=false then
        text:='Não';
    if dbMailMedEnviado.value=true then
       text:='Sim';
end;

procedure TfrmAgendamail.dbMailMedEnviadoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbMailMedEnviado.value:=false;
    if text='Sim' then
       dbMailMedEnviado.value:=true;
end;

procedure TfrmAgendamail.dbMailEnfEnviadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbmailenfEnviado.value=false then
        text:='Não';
    if dbmailenfEnviado.value=true then
       text:='Sim';
end;

procedure TfrmAgendamail.dbMailEnfEnviadoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbmailenfEnviado.value:=false;
    if text='Sim' then
       dbmailenfEnviado.value:=true;
end;

procedure TfrmAgendamail.dbMailAdmEnviadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbMailAdmEnviado.value=false then
        text:='Não';
    if dbMailAdmEnviado.value=true then
       text:='Sim';
end;

procedure TfrmAgendamail.dbMailAdmEnviadoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbMailAdmEnviado.value:=false;
    if text='Sim' then
       dbMailAdmEnviado.value:=true;

end;

procedure TfrmAgendamail.grdMedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMailMedEnviado.value=false then
        grdMed.Canvas.Font.Color:=clRed;

     grdMed.DefaultDrawDataCell(Rect,grdMed.Columns[DataCol].field,State);

end;

procedure TfrmAgendamail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMenu.RvSystem.DefaultDest := rdPreview;
    dbAgendaMed.Close;
    dbMailMed.Close;
    dbAgendaEnf.Close;
    dbMailEnf.Close;
    dbAgendaAdm.Close;
    dbMailAdm.Close;
    dbCliente.Close;
    dbHospital.Close;
    dbMedico.Close;
    dbEnfermeiro.Close;
    dbAdm.Close;
end;

procedure TfrmAgendamail.BitBtn1Click(Sender: TObject);
begin
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.Show;
with frmCadastro do
begin
    case pagMail.TabIndex of
    0:begin
      pagCadastro.TabIndex:=1;
      txtAuditor.Text:=dbMailMedAuditor.asstring;
      end;
    1:begin
      pagCadastro.TabIndex:=2;
      txtEnfermeiro.Text:=dbMailEnfAuditor.asstring;
      end;
    2:begin
      pagCadastro.TabIndex:=3;
      txtAdm.Text:=dbMailAdmAuditor.asstring;
      end;
   end;
   cmdAtualizaPClick(sender);
end;

end;

procedure TfrmAgendamail.cmdAtualizaPClick(Sender: TObject);
begin
    dbMailMed.Refresh;
    dbMailEnf.Refresh;
    dbMailAdm.Refresh;
end;

procedure TfrmAgendamail.grdEnfDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMailEnfEnviado.value=false then
        grdEnf.Canvas.Font.Color:=clRed;

     grdEnf.DefaultDrawDataCell(Rect,grdEnf.Columns[DataCol].field,State);

end;

procedure TfrmAgendamail.grdAdmDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMailAdmEnviado.value=false then
        grdAdm.Canvas.Font.Color:=clRed;

     grdAdm.DefaultDrawDataCell(Rect,grdAdm.Columns[DataCol].field,State);
end;

procedure TfrmAgendamail.grdMedDblClick(Sender: TObject);
var email,texto,icopiatexto:string;
var itotal:variant;
var idata:Tdate;
var icopia:Tstringlist;
var i,iadm,ihospital:integer;
begin
   icopia:=tstringlist.create;
   icopiatexto:='';

    if FileExists(idir+'mail.txt') then
        icopia.LoadFromFile(idir+'mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    if dbMailMedemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    if dbAgendaMed.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaMed.Delete;
        abort;
    end;
    iAdm:=0;
    dbAgendaMed.First;
    while not dbAgendaMed.eof do
    begin
        if (dbAgendaMedAdministrativo.value>0) and (dbAgendaMedAdministrativo.value<999999) then
        begin
            iadm:=1;
            break;
        end;
        dbAgendaMed.Next;
    end;

    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A';
     if iadm=1 then
           texto:=texto+'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A';

     texto:=texto+'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta.' +'%0D%0A'+'%0D%0A';

    dbAgendaMed.First;
    itotal:=0;
    while not dbAgendaMed.eof do
    begin
        ihospital:=dbAgendaMedHospital.value;
        iData:=dbAgendaMedData.value;
        texto:=texto+'** '+DateToStr(dbAgendaMedData.value)+' - '+DiaSemana(dbAgendaMedData.value)+'%0D%0A';
        itotal:=itotal+1;
        while (not dbAgendaMed.eof) and (dbAgendaMedData.value=iData) do
        begin
            texto:=texto+'     '+LimpaAcento(dbAgendaMedNome.value)+'-'+LimpaAcento(dbAgendaMedClienteID.value)+' - '+LimpaAcento(dbAgendaMedObservacao.Value)+'%0D%0A';
            itotal:=itotal+1;
            dbAgendaMed.Next;
            if dbAgendaMedHospital.value<>ihospital  then
                texto:=texto+'%0D%0A';
        end;
        texto:=texto+'%0D%0A'
    end;

{    if itotal>40 then
    begin
        ShowMessage('Texto muito extenso para envio direto de email. Gere o relatorio e envie como anexo');
        abort;
    end;}

    email:= 'mailto:'+trim(dbMailMedemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailMed.Edit;
    dbMailMedQtd.value:=dbMailMedQtd.value+1;
    dbMailMedEnviado.value:=true;
    dbMailMedDataEnvio.Value:=date;
    dbMailMed.Post;
end;


procedure TfrmAgendamail.grdEnfDblClick(Sender: TObject);
var email,texto,icopiatexto:string;
var itotal:variant;
var idata:Tdate;
var icopia:Tstringlist;
var i,iadm,ihospital:integer;
begin
   icopia:=tstringlist.create;
   icopiatexto:='';

    if FileExists(idir+'mail.txt') then
        icopia.LoadFromFile(idir+'mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    dbMailEnf.Refresh;
    if dbMailEnfemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    if dbAgendaEnf.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaEnf.Delete;
        abort;
    end;

    iAdm:=0;
    dbAgendaEnf.First;
    while not dbAgendaEnf.eof do
    begin
        if (dbAgendaEnfAdministrativo.value>0) and (dbAgendaEnfAdministrativo.value<999999) then
        begin
            iadm:=1;
            break;
        end;
        dbAgendaEnf.Next;
    end;

// sem  master/detail e com filtro diferente dos auditores e administrativos pq nao funciona
    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A';
    if iadm=1 then
        texto:=texto+'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A';
    texto:=texto+'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta.' +'%0D%0A'+'%0D%0A';

    dbAgendaEnf.First;
    itotal:=0;
    while not dbAgendaEnf.eof do
    begin
        ihospital:=dbAgendaEnfHospital.value;
        iData:=dbAgendaEnfData.value;
        texto:=texto+'** '+DateToStr(dbAgendaEnfData.value)+' - '+DiaSemana(dbAgendaEnfData.value)+'%0D%0A';
        while (not dbAgendaEnf.eof) and (dbAgendaEnfData.value=iData) do
        begin
            texto:=texto+'     '+LimpaAcento(dbAgendaEnfNome.value)+'-'+LimpaAcento(dbAgendaEnfClienteID.value)+' - '+LimpaAcento(dbAgendaEnfObservacao.Value)+'%0D%0A';
            dbAgendaEnf.Next;
            if dbAgendaEnfHospital.value<>ihospital  then
                texto:=texto+'%0D%0A';
        end;
        texto:=texto+'%0D%0A'
    end;

    email:= 'mailto:'+trim(dbMailEnfemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailEnf.Edit;
    dbMailEnfQtd.value:=dbMailEnfQtd.value+1;
    dbMailEnfEnviado.value:=true;
    dbMailEnfDataEnvio.Value:=date;
    dbMailEnf.Post;

end;

procedure TfrmAgendamail.grdAdmDblClick(Sender: TObject);
var email,texto,icopiatexto:string;
var itotal:variant;
var idata:Tdate;
var icopia:Tstringlist;
var i:integer;
begin
   icopia:=tstringlist.create;
   icopiatexto:='';

    if FileExists(idir+'mail.txt') then
        icopia.LoadFromFile(idir+'mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    if dbMailAdmemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    if dbAgendaAdm.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaAdm.Delete;
        abort;
    end;

    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A'+
           'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A'+
           'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta.' +'%0D%0A'+'%0D%0A';

    dbAgendaAdm.First;
    itotal:=0;
    while not dbAgendaAdm.eof do
    begin
        iData:=dbAgendaAdmData.value;
        texto:=texto+'** '+DateToStr(dbAgendaAdmData.value)+' - '+DiaSemana(dbAgendaAdmData.value)+'%0D%0A';
        while (not dbAgendaAdm.eof) and (dbAgendaAdmData.value=iData) do
        begin
            texto:=texto+'     '+LimpaAcento(dbAgendaAdmNome.value)+'-'+LimpaAcento(dbAgendaAdmClienteID.value)+' - '+LimpaAcento(dbAgendaAdmObservacao.Value)+'%0D%0A';
            dbAgendaAdm.Next;
        end;
        texto:=texto+'%0D%0A'
    end;

    email:= 'mailto:'+trim(dbMailAdmemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailAdm.Edit;
    dbMailAdmQtd.value:=dbMailAdmQtd.value+1;
    dbMailAdmEnviado.value:=true;
    dbMailAdmDataEnvio.Value:=date;
    dbMailAdm.Post;

end;

procedure TfrmAgendamail.dbAgendaEnfFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAgendaEnfEnfermeiro.value=dbMailEnfAuditor.value;
end;

procedure TfrmAgendamail.BitBtn3Click(Sender: TObject);
begin
    if frmAgendamailcopias=nil then
      Application.CreateForm(TfrmAgendamailcopias, frmAgendamailcopias);
    frmAgendamailcopias.ShowModal;
end;

procedure TfrmAgendamail.grdMedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgendamail.grdEnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgendamail.grdAdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DELETE then abort;
end;

procedure TfrmAgendamail.BitBtn4Click(Sender: TObject);
var email,texto,icopiatexto,arq,idirAgenda:string;
var itotal:variant;
var idata:Tdate;
var icopia:Tstringlist;
var i:integer;
var d,m,a:word;
begin

    DecodeDate(iDataIni,a,m,d);
    arq:=InttoStr(a)+InttoStr(m)+InttoStr(d);
    idirAgenda:=idir+'Agenda\';

case pagMail.ActivePageIndex of
0:begin
    if dbAgendaMed.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaMed.Delete;
        abort;
    end;
    arq:=idirAgenda+arq+'-'+dbMailMedNome.value+'.pdf';
    with frmMenu do
    begin
        rvBBAgenda.SetParam('Titulo','Agenda Semanal Médicos');
        rvBBAgenda.SetParam('Titulo1',dbMailMedNome.value);
        RvSystem.SystemSetups := RvSystem.SystemSetups - [ssAllowSetup];
        RvSystem.DefaultDest := rdFile;
        RvSystem.DoNativeOutput:= false;
        RvSystem.RenderObject:= rvRenderPDF1;
        rvBBAgenda.SelectReport('relEmailMed',true);
        RvSystem.OutputFileName:=arq;
        rvBBAgenda.Execute;
    end;

    icopia:=tstringlist.create;
    icopiatexto:='';

    if FileExists('mail.txt') then
        icopia.LoadFromFile('mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    if dbMailMedemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue em anexo a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A'+
           'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A'+
           'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta. '+'%0D%0A'+'%0D%0A';

    email:= 'mailto:'+trim(dbMailMedemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailMed.Edit;
    dbMailMedQtd.value:=dbMailMedQtd.value+1;
    dbMailMedEnviado.value:=true;
    dbMailMedDataEnvio.Value:=date;
    dbMailMed.Post;
end;
1:begin
    if dbAgendaEnf.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaEnf.Delete;
        abort;
    end;
    arq:=arq+'-'+dbMailEnfNome.value+'.pdf';
    with frmMenu do
    begin
        rvBBAgenda.SetParam('Titulo','Agenda Semanal Médicos');
        rvBBAgenda.SetParam('Titulo1',dbMailEnfNome.value);
        RvSystem.SystemSetups := RvSystem.SystemSetups - [ssAllowSetup];
        RvSystem.DefaultDest := rdFile;
        RvSystem.DoNativeOutput:= false;
        RvSystem.RenderObject:= rvRenderPDF1;
        rvBBAgenda.SelectReport('relEmailEnf',true);
        RvSystem.OutputFileName:=arq;
        rvBBAgenda.Execute;
    end;

   icopia:=tstringlist.create;
   icopiatexto:='';

    if FileExists(idir+'mail.txt') then
        icopia.LoadFromFile(idir+'mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    if dbMailEnfemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue em anexo a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A'+
           'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A'+
           'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta. '+'%0D%0A'+'%0D%0A';

    email:= 'mailto:'+trim(dbMailEnfemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailEnf.Edit;
    dbMailEnfQtd.value:=dbMailEnfQtd.value+1;
    dbMailEnfEnviado.value:=true;
    dbMailEnfDataEnvio.Value:=date;
    dbMailEnf.Post;
end;
2:begin
    if dbAgendaAdm.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        dbAgendaAdm.Delete;
        abort;
    end;
    arq:=arq+'-'+dbMailAdmNome.value+'.pdf';
    with frmMenu do
    begin
        rvBBAgenda.SetParam('Titulo','Agenda Semanal Médicos');
        rvBBAgenda.SetParam('Titulo1',dbMailAdmNome.value);
        RvSystem.SystemSetups := RvSystem.SystemSetups - [ssAllowSetup];
        RvSystem.DefaultDest := rdFile;
        RvSystem.DoNativeOutput:= false;
        RvSystem.RenderObject:= rvRenderPDF1;
        rvBBAgenda.SelectReport('relEmailAdm',true);
        RvSystem.OutputFileName:=arq;
        rvBBAgenda.Execute;
    end;

   icopia:=tstringlist.create;
   icopiatexto:='';

    if FileExists(idir+'mail.txt') then
        icopia.LoadFromFile(idir+'mail.txt');
    for i:=0 to icopia.Count-1 do
        icopiatexto:=icopiatexto+icopia.Strings[i]+';';

    if dbMailAdmemail.value='' then
    begin
        ShowMessage('Email não cadastrado');
        abort;
    end;

    texto:='Boa tarde '+'%0D%0A'+'%0D%0A'+
           'Segue em anexo a programação de auditoria para a próxima semana. Qualquer dúvida ou necessidade de alteração entre em contato.'+'%0D%0A'+'%0D%0A'+
           'Favor informar período em que estará no hospital para programarmos o administrativo.'+'%0D%0A'+'%0D%0A'+
           'Favor utilizar a opção RESPONDER A TODOS do seu leitor de e-mail na resposta.' +'%0D%0A'+'%0D%0A';

    email:= 'mailto:'+trim(dbMailAdmemail.value)+
            '?subject= B+ = Programação de Auditor de '+DatetoStr(iDataIni)+' a '+DatetoStr(iDataFim)+
            '&cc='+icopiatexto+
            '&body='+texto;

    ShellExecute(Handle , 'open', Pchar(email), nil,nil,SW_SHOWDEFAULT);

    dbMailAdm.Edit;
    dbMailAdmQtd.value:=dbMailAdmQtd.value+1;
    dbMailAdmEnviado.value:=true;
    dbMailAdmDataEnvio.Value:=date;
    dbMailAdm.Post;
end;
end;
    frmMenu.RvSystem.DefaultDest := rdPreview;
end;

end.


