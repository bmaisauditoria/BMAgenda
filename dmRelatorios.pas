unit dmRelatorios;

interface

uses
   SysUtils, Classes, DateUtils, RpCon, RpConDS,  DBTables,  MSAccess,
   OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,  DB, Variants, Math,   RpDefine, RpBase, RpSystem;

type
  TdmRelatorio = class(TDataModule)
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
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbProprietario: TMSTable;
    dbProprietarioEndereco: TStringField;
    dbProprietarioCidade: TStringField;
    dbProprietarioUF: TStringField;
    dbProprietarioCep: TStringField;
    dbProprietarioCGC: TStringField;
    dbProprietarioIE: TStringField;
    dbProprietarioTelefone: TStringField;
    dbProprietarioFax: TStringField;
    dbProprietarioNumSusep: TStringField;
    dbProprietarioUltimoArqMS: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteDiagnostico1: TBooleanField;
    dbClienteCor1: TStringField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteDiagnostico2: TBooleanField;
    dbClienteCor2: TStringField;
    dbClienteMaximoCobrado3: TCurrencyField;
    dbClienteDiagnostico3: TBooleanField;
    dbClienteCor3: TStringField;
    dbClienteDiarias: TIntegerField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TIntegerField;
    dbClienteCorDiariaUTI: TStringField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbServico: TMSTable;
    dbHospitalCodBradesco: TIntegerField;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorEndereco: TStringField;
    dbAuditorBairro: TStringField;
    dbAuditorCidade: TStringField;
    dbAuditorUF: TStringField;
    dbAuditorCep: TStringField;
    dbAuditorFone: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorCPF: TStringField;
    dbAuditorRG: TStringField;
    dbAuditorRGEmissor: TStringField;
    dbAuditorEmail: TStringField;
    dbAuditorClienteTipo: TStringField;
    dbAuditorObservacao: TMemoField;
    dbAuditorUsuario: TStringField;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbAuditorNascimento: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    rvProprietario: TRvDataSetConnection;
    qryEscala: TMSQuery;
    qryEscalaCliente: TIntegerField;
    qryEscalaHospital: TIntegerField;
    qryEscalaTipo: TStringField;
    qryEscalaAuditor: TIntegerField;
    qryEscalaServico: TStringField;
    qryEscalaClienteID: TStringField;
    qryEscalaDataInclusao: TDateTimeField;
    qryEscalaUsuario: TStringField;
    qryEscalaMedicoNome: TStringField;
    qryEscalaEnfermeiroNome: TStringField;
    qryEscalaAuditorNome: TStringField;
    qryEscalaNome: TStringField;
    qryEscalaRegiao: TIntegerField;
    rvEscala: TRvDataSetConnection;
    qryEscalaRegiaoNome: TStringField;
    qryAgenda: TMSQuery;
    rvAgenda: TRvDataSetConnection;
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
    qryAgendaNome: TStringField;
    qryAgendaRegiao: TIntegerField;
    relAgenda: TMSQuery;
    relAgendaSegunda: TMemoField;
    relAgendaTerca: TMemoField;
    relAgendaQuarta: TMemoField;
    relAgendaQuinta: TMemoField;
    relAgendaSexta: TMemoField;
    qryAgendaMedNome: TStringField;
    qryAgendaEnfNome: TStringField;
    qryEscalaQtd: TSmallintField;
    qryEscalaQtdAtual: TIntegerField;
    qryEscalaDataFim: TDateTimeField;
    qryEscalaUsuarioE: TStringField;
    relAgendaOrdem: TStringField;
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmemail: TStringField;
    dbAdmDataFim: TDateTimeField;
    qryAgendaAdmNome: TStringField;
    qryConta: TMSQuery;
    qryContaClienteID: TStringField;
    qryContaHospital: TIntegerField;
    qryContaData: TDateTimeField;
    qryContaQtdContas: TIntegerField;
    relConta: TMSQuery;
    rvrelContas: TRvDataSetConnection;
    relContaClienteID: TStringField;
    relContaRegiao: TStringField;
    relContaHospital: TStringField;
    relContaD1: TIntegerField;
    relContaD2: TIntegerField;
    relContaD3: TIntegerField;
    relContaD4: TIntegerField;
    relContaD5: TIntegerField;
    relContaD6: TIntegerField;
    relContaD7: TIntegerField;
    relContaD8: TIntegerField;
    relContaD9: TIntegerField;
    relContaD10: TIntegerField;
    relContaD11: TIntegerField;
    relContaD12: TIntegerField;
    relContaD13: TIntegerField;
    relContaD14: TIntegerField;
    relContaD15: TIntegerField;
    relContaD16: TIntegerField;
    relContaD17: TIntegerField;
    relContaD18: TIntegerField;
    relContaD19: TIntegerField;
    relContaD20: TIntegerField;
    relContaD21: TIntegerField;
    relContaD22: TIntegerField;
    relContaD23: TIntegerField;
    relContaD24: TIntegerField;
    relContaD25: TIntegerField;
    relContaD26: TIntegerField;
    relContaD27: TIntegerField;
    relContaD28: TIntegerField;
    relContaD29: TIntegerField;
    relContaD30: TIntegerField;
    relContaD31: TIntegerField;
    qryContaNome: TStringField;
    qryContaRegiao: TIntegerField;
    qryContaRegiaoTexto: TStringField;
    relContaTotal: TIntegerField;
    relContaS1: TIntegerField;
    relContaS2: TIntegerField;
    relContaS3: TIntegerField;
    relContaS4: TIntegerField;
    relContaS5: TIntegerField;
    relContaS6: TIntegerField;
    qryMedInativo: TMSQuery;
    qryMedInativoAuditor: TIntegerField;
    qryMedInativoQtd: TIntegerField;
    rvMedInativo: TRvDataSetConnection;
    qryMedInativoNome: TStringField;
    qryEnfInativo: TMSQuery;
    rvEnfInativo: TRvDataSetConnection;
    qryAdmInativo: TMSQuery;
    rvAdmInativo: TRvDataSetConnection;
    qryHosInativo: TMSQuery;
    rvHosInativo: TRvDataSetConnection;
    qryEnfInativoEnfermeiro: TIntegerField;
    qryEnfInativoNome: TStringField;
    qryEnfInativoQtd: TIntegerField;
    qryAdmInativoAdministrativo: TIntegerField;
    qryAdmInativoNome: TStringField;
    qryAdmInativoQtd: TIntegerField;
    qryHosInativoHospital: TIntegerField;
    qryHosInativoNome: TStringField;
    qryHosInativoQtd: TIntegerField;
    dbHospitalAuditorado: TBooleanField;
    relAgendaClienteID: TStringField;
    qryEscalaDiaria: TMSQuery;
    rvEscalaDiaria: TRvDataSetConnection;
    qryEscalaDiariaEscala: TIntegerField;
    qryEscalaDiariaCliente: TIntegerField;
    qryEscalaDiariaHospital: TIntegerField;
    qryEscalaDiariaTipo: TStringField;
    qryEscalaDiariaServico: TStringField;
    qryEscalaDiariaDataInicio: TDateTimeField;
    qryEscalaDiariaAuditor: TIntegerField;
    qryEscalaDiariaDataFim: TDateTimeField;
    qryEscalaDiariaClienteID: TStringField;
    qryEscalaDiariaCobertura: TIntegerField;
    qryEscalaDiariaQtd: TSmallintField;
    qryEscalaDiariaQtdAtual: TSmallintField;
    qryEscalaDiariaNome: TStringField;
    qryEscalaDiariaRegiao: TIntegerField;
    qryEscalaDiariaCidade: TStringField;
    qryEscalaDiariaUF: TStringField;
    qryEscalaDiariaCNPJ: TStringField;
    qryEscalaDiariaEnfermeiro: TIntegerField;
    qryEscalaDiariaCodBradesco: TIntegerField;
    qryEscalaDiariaAuditorado: TBooleanField;
    qryEscalaDiariaMedicoNome: TStringField;
    qryEscalaDiariaEnfermeiroNome: TStringField;
    qryEscalaDiariaAuditorNome: TStringField;
    qryEscalaDiariaRegiaoNome: TStringField;
    qryEscalaG: TMSTable;
    rvEscalaG: TRvDataSetConnection;
    qryEscalaGRegiao: TStringField;
    qryEscalaGHospital: TStringField;
    qryEscalaGCliente1: TWordField;
    qryEscalaGCliente2: TWordField;
    qryEscalaGCliente3: TWordField;
    qryEscalaGCliente4: TWordField;
    qryEscalaGCliente5: TWordField;
    qryEscalaGCliente6: TWordField;
    qryEscalaGCliente7: TWordField;
    qryEscalaGCliente8: TWordField;
    qryEscalaGCliente9: TWordField;
    qryEscalaGCliente10: TWordField;
    qryEscalaGCliente11: TWordField;
    qryEscalaGCliente12: TWordField;
    qryEscalaGCliente13: TWordField;
    qryEscalaGCliente14: TWordField;
    qryEscalaGCliente15: TWordField;
    qryEscalaGCliente16: TWordField;
    qryEscalaGMedico: TMemoField;
    qryEscalaGEnfermeiro: TMemoField;
    qryEscalaM: TMSTable;
    rvEscalaM: TRvDataSetConnection;
    qryEscalaMAuditorNome: TStringField;
    qryEscalaMRegiao: TStringField;
    qryEscalaMHospital: TStringField;
    qryEscalaMClienteID: TStringField;
    qryEscalaMServicos: TMemoField;
    qryEscalaGCliente17: TWordField;
    qryEscalaGCliente18: TWordField;
    qryEscalaGCliente19: TWordField;
    qryEscalaGCliente20: TWordField;
    qryAgendaH: TMSQuery;
    qryAgendaHData: TDateTimeField;
    qryAgendaHNome: TStringField;
    qryAgendaHHospital: TIntegerField;
    qryAgendaHServico: TStringField;
    qryAgendaHAuditor: TIntegerField;
    qryAgendaHMedNome: TStringField;
    qryAgendaHEnfNome: TStringField;
    qryAgendaHAdmNome: TStringField;
    qryAgendaP: TMSQuery;
    qryAgendaHEnfermeiro: TIntegerField;
    qryAgendaHAdministrativo: TIntegerField;
    qryAgendaPData: TDateTimeField;
    qryAgendaPNome: TStringField;
    qryAgendaPHospital: TIntegerField;
    qryAgendaPServico: TStringField;
    qryAgendaPAuditor: TIntegerField;
    qryAgendaPAdmNome: TStringField;
    qryAgendaPEnfNome: TStringField;
    qryAgendaPMedNome: TStringField;
    qryCobertura: TMSQuery;
    rvCobertura: TRvDataSetConnection;
    qryCoberturaTipo: TStringField;
    qryCoberturaAuditor: TIntegerField;
    qryCoberturaDataInicio: TDateTimeField;
    qryCoberturaDataFim: TDateTimeField;
    qryCoberturaEscala: TIntegerField;
    qryCoberturaCliente: TIntegerField;
    qryCoberturaHospital: TIntegerField;
    qryCoberturaServico: TStringField;
    qryCoberturaClienteID: TStringField;
    qryCoberturaDataCobertura: TDateTimeField;
    qryCoberturaNomeMedI: TStringField;
    qryCoberturaNomeEnfI: TStringField;
    qryCoberturaNomeMedO: TStringField;
    qryCoberturaNomeEnfO: TStringField;
    qryCoberturaAuditorIn: TStringField;
    qryCoberturaAuditorOut: TStringField;
    qryCoberturaNome: TStringField;
    qryEscalaIni: TMSQuery;
    rvEscalaIni: TRvDataSetConnection;
    qryEscalaIniEscala: TIntegerField;
    qryEscalaIniCliente: TIntegerField;
    qryEscalaIniHospital: TIntegerField;
    qryEscalaIniTipo: TStringField;
    qryEscalaIniServico: TStringField;
    qryEscalaIniDataInicio: TDateTimeField;
    qryEscalaIniAuditor: TIntegerField;
    qryEscalaIniDataFim: TDateTimeField;
    qryEscalaIniClienteID: TStringField;
    qryEscalaIniCobertura: TIntegerField;
    qryEscalaIniNome: TStringField;
    qryEscalaIniNomeMed: TStringField;
    qryEscalaIniNomeEnf: TStringField;
    qryEscalaIniNomeAuditor: TStringField;
    qryEscalaIniData: TDateField;
    qryAgendaAdmLocal: TStringField;
    qryAgendaAdmPeriodo: TStringField;
    qryAgendaObservacao: TStringField;
    qryFechaEnf: TMSQuery;
    rvFechaEnf: TRvDataSetConnection;
    qryFechaEnfEnfermeiro: TIntegerField;
    qryFechaEnfCliente: TIntegerField;
    qryFechaEnfHospital: TIntegerField;
    qryFechaEnfNome: TStringField;
    qryFechaEnfClienteNome: TStringField;
    dbClienteClienteID: TStringField;
    qryFechaEnfHospitalNome: TStringField;
    qryCoberturaAuditor_1: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryEstatPacienteDCalcFields(DataSet: TDataSet);
    procedure qrySenhaDupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryEscalaCalcFields(DataSet: TDataSet);
    procedure relContaCalcFields(DataSet: TDataSet);
    procedure qryMedInativoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryEnfInativoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryAdmInativoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryHosInativoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryEscalaDiariaCalcFields(DataSet: TDataSet);
    procedure qryEscalaGAfterInsert(DataSet: TDataSet);
    procedure qryCoberturaCalcFields(DataSet: TDataSet);
    procedure qryEscalaIniCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorio: TdmRelatorio;

implementation

uses frmPrincipal, frmRelContas, frmRelEscalaAlteracao;

{$R *.dfm}

procedure TdmRelatorio.DataModuleCreate(Sender: TObject);
begin
    dbCliente.Open;
    dbHospital.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbAdm.Open;
    dbServico.Open;
    dbProprietario.Open;
    dbRegiao.Open;
end;

procedure TdmRelatorio.DataModuleDestroy(Sender: TObject);
begin
    dbCliente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbAdm.Close;
    dbServico.Close;
    dbProprietario.Close;
    dbRegiao.Close;
end;

procedure TdmRelatorio.qryEstatPacienteDCalcFields(DataSet: TDataSet);
var ano,mes,dia,anon,mesn,dian:word;
begin
end;

procedure TdmRelatorio.qrySenhaDupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//    accept:=(qrySenhaDupQtd.value>1)
//        and (qrySenhaDupSenha.value<>'');
end;

procedure TdmRelatorio.qryEscalaCalcFields(DataSet: TDataSet);
begin
    if qryEscalaTipo.value='M' then
        qryEscalaAuditorNome.value:=qryEscalaMedicoNome.value;
    if qryEscalaTipo.value='E' then
        qryEscalaAuditorNome.value:=qryEscalaEnfermeiroNome.value;
end;

procedure TdmRelatorio.relContaCalcFields(DataSet: TDataSet);
var d,m,a,ult:word;
var data:TDateTime;
begin
    data:=frmRelConta.dtpIni.date;
    DecodeDate(data,a,m,d);
    data:=frmRelConta.dtpFim.date;
    DecodeDate(data,a,m,ult);
    relContaTotal.value:=relContaD1.value+
                         relContaD2.Value+
                         relContaD3.Value+
                         relContaD4.Value+
                         relContaD5.Value+
                         relContaD6.Value+
                         relContaD7.Value+
                         relContaD8.Value+
                         relContaD9.Value+
                         relContaD10.Value+
                         relContaD11.Value+
                         relContaD12.Value+
                         relContaD13.Value+
                         relContaD14.Value+
                         relContaD15.Value+
                         relContaD16.Value+
                         relContaD17.Value+
                         relContaD18.Value+
                         relContaD19.Value+
                         relContaD20.Value+
                         relContaD21.Value+
                         relContaD22.Value+
                         relContaD23.Value+
                         relContaD24.Value+
                         relContaD25.Value+
                         relContaD26.Value+
                         relContaD27.Value+
                         relContaD28.Value+
                         relContaD29.Value+
                         relContaD30.Value+
                         relContaD31.Value;
end;

procedure TdmRelatorio.qryMedInativoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=qryMedInativoQtd.value=0;
end;

procedure TdmRelatorio.qryEnfInativoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=qryEnfInativoQtd.value=0;
end;

procedure TdmRelatorio.qryAdmInativoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=qryAdmInativoQtd.value=0;
end;

procedure TdmRelatorio.qryHosInativoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=qryHosInativoQtd.value=0;
end;

procedure TdmRelatorio.qryEscalaDiariaCalcFields(DataSet: TDataSet);
begin
    if qryEscalaDiariaTipo.value='M' then
        qryEscalaDiariaAuditorNome.value:=qryEscalaDiariaMedicoNome.value;
    if qryEscalaDiariaTipo.value='E' then
        qryEscalaDiariaAuditorNome.value:=qryEscalaDiariaEnfermeiroNome.value;
end;

procedure TdmRelatorio.qryEscalaGAfterInsert(DataSet: TDataSet);
begin
    qryEscalaGCliente1.value:=0;
    qryEscalaGCliente2.value:=0;
    qryEscalaGCliente3.value:=0;
    qryEscalaGCliente4.value:=0;
    qryEscalaGCliente5.value:=0;
    qryEscalaGCliente6.value:=0;
    qryEscalaGCliente7.value:=0;
    qryEscalaGCliente8.value:=0;
    qryEscalaGCliente9.value:=0;
    qryEscalaGCliente10.value:=0;
    qryEscalaGCliente11.value:=0;
    qryEscalaGCliente12.value:=0;
    qryEscalaGCliente13.value:=0;
    qryEscalaGCliente14.value:=0;
    qryEscalaGCliente15.value:=0;
    qryEscalaGCliente16.value:=0;
    qryEscalaGCliente17.value:=0;
    qryEscalaGCliente18.value:=0;
    qryEscalaGCliente19.value:=0;
    qryEscalaGCliente20.value:=0;
end;

procedure TdmRelatorio.qryCoberturaCalcFields(DataSet: TDataSet);
begin
    if qryCoberturaTipo.value='M' then
    begin
        qryCoberturaAuditorin.value:=qryCoberturaNomeMedI.Value;
        qryCoberturaAuditorout.value:=qryCoberturaNomeMedO.Value;
    end;
    if qryCoberturaTipo.value='E' then
    begin
        qryCoberturaAuditorin.value:=qryCoberturaNomeEnfI.Value;
        qryCoberturaAuditorout.value:=qryCoberturaNomeEnfO.Value;
    end;
end;

procedure TdmRelatorio.qryEscalaIniCalcFields(DataSet: TDataSet);
begin
    if qryEscalaIniTipo.value='M' then
        qryEscalaIniNomeAuditor.value:=qryEscalaIniNomeMed.Value;
    if qryEscalaIniTipo.value='E' then
        qryEscalaIniNomeAuditor.value:=qryEscalaIniNomeEnf.Value;

    if frmRelEscalaAltera<>nil then
    begin
        case frmRelEscalaAltera.rdgTipo.ItemIndex of
        0:qryEscalaIniData.value:=qryEscalaIniDataInicio.value;
        1:qryEscalaIniData.value:=qryEscalaIniDataFim.value;
        end;
    end;
end;

end.











