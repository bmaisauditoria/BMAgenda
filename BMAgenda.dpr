program BMAgenda;

uses
  Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmMenu},
  frmCadastros in 'frmCadastros.pas' {frmCadastro},
  frmProprietarias in 'frmProprietarias.pas' {frmProprietaria},
  frmSenhas in 'frmSenhas.pas' {frmSenha},
  frmSenhasAltera in 'frmSenhasAltera.pas' {frmSenhaAltera},
  frmSobres in 'frmSobres.pas' {frmSobre},
  dmRelatorios in 'dmRelatorios.pas' {dmRelatorio: TDataModule},
  frmLogs in 'frmLogs.pas' {frmLog},
  frmAgendas in 'frmAgendas.pas' {frmAgenda},
  frmEscalas in 'frmEscalas.pas' {frmEscala},
  frmFeriass in 'frmFeriass.pas' {frmFerias},
  frmRelAgenda in 'frmRelAgenda.pas' {frmRelAgendas},
  frmAgendaemail in 'frmAgendaemail.pas' {frmAgendamail},
  frmRelEscala in 'frmRelEscala.pas' {frmRelEscalas},
  frmRelContas in 'frmRelContas.pas' {frmRelConta},
  frmAgendaNovos in 'frmAgendaNovos.pas' {frmAgendaNovo},
  frmAgendamailcopia in 'frmAgendamailcopia.pas' {frmAgendaMailcopias},
  frmAtuAgendas in 'frmAtuAgendas.pas' {frmAtuAgenda},
  frmRelCoberturas in 'frmRelCoberturas.pas' {frmRelCobertura},
  frmRelEscalaAlteracao in 'frmRelEscalaAlteracao.pas' {frmRelEscalaAltera},
  frmEscalasFecha in 'frmEscalasFecha.pas' {frmEscalaFecha},
  frmRelFechaEnf in 'frmRelFechaEnf.pas' {frmRelFechEnf};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
