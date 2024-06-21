object dmRelatorio: TdmRelatorio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 487
  Top = 227
  Height = 483
  Width = 917
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 24
    Top = 12
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
    object dbClienteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Cliente.Endereco'
      Size = 40
    end
    object dbClienteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.Cliente.Bairro'
      Size = 30
    end
    object dbClienteCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Cliente.Cidade'
      Size = 30
    end
    object dbClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Cliente.UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object dbClienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Cliente.Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object dbClienteFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'dbo.Cliente.Fone1'
      Size = 60
    end
    object dbClienteFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'dbo.Cliente.Fone2'
      Size = 60
    end
    object dbClienteFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.Cliente.Fax'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Cliente.CGC'
      EditMask = '99\.999\.999\/9999\-99;0;_'
      Size = 18
    end
    object dbClienteContato: TStringField
      FieldName = 'Contato'
      Origin = 'dbo.Cliente.Contato'
      Size = 40
    end
    object dbClienteEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Cliente.Email'
      Size = 30
    end
    object dbClienteHomePage: TStringField
      FieldName = 'HomePage'
      Origin = 'dbo.Cliente.HomePage'
      Size = 60
    end
    object dbClienteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Cliente.Usuario'
      Size = 10
    end
    object dbClienteMaximoCobrado1: TCurrencyField
      FieldName = 'MaximoCobrado1'
      Origin = 'dbo.Cliente.MaximoCobrado1'
    end
    object dbClienteDiagnostico1: TBooleanField
      FieldName = 'Diagnostico1'
      Origin = 'dbo.Cliente.Diagnostico1'
    end
    object dbClienteCor1: TStringField
      FieldName = 'Cor1'
      Origin = 'dbo.Cliente.Cor1'
      Size = 15
    end
    object dbClienteMaximoCobrado2: TCurrencyField
      FieldName = 'MaximoCobrado2'
      Origin = 'dbo.Cliente.MaximoCobrado2'
    end
    object dbClienteDiagnostico2: TBooleanField
      FieldName = 'Diagnostico2'
      Origin = 'dbo.Cliente.Diagnostico2'
    end
    object dbClienteCor2: TStringField
      FieldName = 'Cor2'
      Origin = 'dbo.Cliente.Cor2'
      Size = 15
    end
    object dbClienteMaximoCobrado3: TCurrencyField
      FieldName = 'MaximoCobrado3'
      Origin = 'dbo.Cliente.MaximoCobrado3'
    end
    object dbClienteDiagnostico3: TBooleanField
      FieldName = 'Diagnostico3'
      Origin = 'dbo.Cliente.Diagnostico3'
    end
    object dbClienteCor3: TStringField
      FieldName = 'Cor3'
      Origin = 'dbo.Cliente.Cor3'
      Size = 15
    end
    object dbClienteDiarias: TIntegerField
      FieldName = 'Diarias'
      Origin = 'dbo.Cliente.Diarias'
    end
    object dbClienteCorDiaria: TStringField
      FieldName = 'CorDiaria'
      Origin = 'dbo.Cliente.CorDiaria'
      Size = 15
    end
    object dbClienteDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
      Origin = 'dbo.Cliente.DiariasUTI'
    end
    object dbClienteCorDiariaUTI: TStringField
      FieldName = 'CorDiariaUTI'
      Origin = 'dbo.Cliente.CorDiariaUTI'
      Size = 15
    end
    object dbClienteDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.Cliente.DataInicio'
    end
    object dbClienteDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Cliente.DataFim'
    end
    object dbClienteDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Cliente.DataInclusao'
    end
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Nome'
    Left = 24
    Top = 63
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.Hospital.Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Hospital.Nome'
      Size = 60
    end
    object dbHospitalCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Hospital.Cidade'
      Size = 30
    end
    object dbHospitalUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Hospital.UF'
      Size = 2
    end
    object dbHospitalRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'dbo.Hospital.Regiao'
    end
    object dbHospitalCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'dbo.Hospital.CNPJ'
      Size = 18
    end
    object dbHospitalCodBradesco: TIntegerField
      FieldName = 'CodBradesco'
      Origin = 'dbo.Hospital.CodBradesco'
    end
    object dbHospitalAuditorado: TBooleanField
      FieldName = 'Auditorado'
      Origin = 'dbo.Hospital.Auditorado'
    end
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Nome'
    Left = 24
    Top = 114
    object dbAuditorAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbAuditorNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      Size = 40
    end
    object dbAuditorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Auditores.Endereco'
      Size = 40
    end
    object dbAuditorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.Auditores.Bairro'
      Size = 30
    end
    object dbAuditorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Auditores.Cidade'
      Size = 30
    end
    object dbAuditorUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Auditores.UF'
      Size = 2
    end
    object dbAuditorCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Auditores.Cep'
      Size = 9
    end
    object dbAuditorFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.Auditores.Fone'
      Size = 60
    end
    object dbAuditorFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'dbo.Auditores.Fone1'
      Size = 60
    end
    object dbAuditorFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'dbo.Auditores.Fone2'
      Size = 60
    end
    object dbAuditorCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'dbo.Auditores.CRM'
    end
    object dbAuditorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'dbo.Auditores.CPF'
      Size = 18
    end
    object dbAuditorRG: TStringField
      FieldName = 'RG'
      Origin = 'dbo.Auditores.RG'
      Size = 15
    end
    object dbAuditorRGEmissor: TStringField
      FieldName = 'RGEmissor'
      Origin = 'dbo.Auditores.RGEmissor'
      Size = 15
    end
    object dbAuditorEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Auditores.Email'
      Size = 150
    end
    object dbAuditorClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Origin = 'dbo.Auditores.ClienteTipo'
      Size = 1
    end
    object dbAuditorObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'dbo.Auditores.Observacao'
      BlobType = ftMemo
    end
    object dbAuditorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Auditores.Usuario'
      Size = 10
    end
    object dbAuditorNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'dbo.Auditores.Nascimento'
    end
    object dbAuditorDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.Auditores.DataInicio'
    end
    object dbAuditorDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Auditores.DataFim'
    end
    object dbAuditorDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Auditores.DataInclusao'
    end
  end
  object dbProprietario: TMSTable
    TableName = 'dbo.Proprietario'
    Connection = frmMenu.dadosaud
    Filtered = True
    Left = 24
    Top = 173
    object dbProprietarioEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object dbProprietarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dbProprietarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object dbProprietarioCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object dbProprietarioCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object dbProprietarioIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object dbProprietarioTelefone: TStringField
      FieldName = 'Telefone'
      Size = 40
    end
    object dbProprietarioFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
    object dbProprietarioNumSusep: TStringField
      FieldName = 'NumSusep'
      Size = 6
    end
    object dbProprietarioUltimoArqMS: TIntegerField
      FieldName = 'UltimoArqMS'
    end
  end
  object dbRegiao: TMSTable
    TableName = 'dbo.Regiao'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Regiao'
    Left = 24
    Top = 219
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'dbo.Regiao.Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'dbo.Regiao.Descricao'
      Size = 30
    end
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Enfermeiro'
    Left = 24
    Top = 270
    object dbEnfermeiroEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.Enfermeiros.Enfermeiro'
    end
    object dbEnfermeiroNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Enfermeiros.Nome'
      Size = 40
    end
    object dbEnfermeiroCOREN: TIntegerField
      FieldName = 'COREN'
      Origin = 'dbo.Enfermeiros.COREN'
    end
  end
  object dbServico: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Servico'
    Left = 24
    Top = 321
    object dbServicoServico: TStringField
      FieldName = 'Servico'
      Size = 3
    end
    object dbServicoNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object dbServicoValorizado: TBooleanField
      FieldName = 'Valorizado'
    end
  end
  object rvProprietario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbProprietario
    Left = 56
    Top = 173
  end
  object qryEscala: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Escala,EscalaPadrao,Hospital'
      'where Escala.Hospital=Hospital.Hospital and'
      '      Escala.Cliente=EscalaPadrao.Cliente and'
      '      Escala.Hospital=EscalaPadrao.Hospital and'
      '      Escala.Tipo=EscalaPadrao.Tipo and'
      '      Escala.Servico=EscalaPadrao.Servico'
      'order by Regiao')
    OnCalcFields = qryEscalaCalcFields
    Left = 96
    Top = 16
    object qryEscalaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Escala.Cliente'
    end
    object qryEscalaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Escala.Hospital'
    end
    object qryEscalaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Escala.Tipo'
      FixedChar = True
      Size = 1
    end
    object qryEscalaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Escala.Auditor'
    end
    object qryEscalaServico: TStringField
      FieldName = 'Servico'
      Origin = 'Escala.Servico'
      FixedChar = True
      Size = 3
    end
    object qryEscalaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Escala.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryEscalaDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Escala.DataInclusao'
    end
    object qryEscalaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Escala.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryEscalaMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaAuditorNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'AuditorNome'
      Size = 40
      Calculated = True
    end
    object qryEscalaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryEscalaRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'Hospital.Regiao'
    end
    object qryEscalaRegiaoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'RegiaoNome'
      LookupDataSet = dbRegiao
      LookupKeyFields = 'Regiao'
      LookupResultField = 'Descricao'
      KeyFields = 'Regiao'
      Size = 40
      Lookup = True
    end
    object qryEscalaQtd: TSmallintField
      FieldName = 'Qtd'
      Origin = 'EscalaPadrao.Qtd'
    end
    object qryEscalaQtdAtual: TIntegerField
      FieldName = 'QtdAtual'
      Origin = 'EscalaPadrao.QtdAtual'
    end
    object qryEscalaDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'EscalaPadrao.DataFim'
    end
    object qryEscalaUsuarioE: TStringField
      FieldName = 'UsuarioE'
      Origin = 'EscalaPadrao.UsuarioE'
      FixedChar = True
      Size = 10
    end
  end
  object rvEscala: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEscala
    Left = 126
    Top = 17
  end
  object qryAgenda: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda,Hospital'
      'where Agenda.Hospital=Hospital.Hospital'
      'order by Cliente,Data,Nome')
    Left = 96
    Top = 72
    object qryAgendaData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Agenda.Data'
    end
    object qryAgendaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Agenda.Cliente'
    end
    object qryAgendaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Agenda.Hospital'
    end
    object qryAgendaServico: TStringField
      FieldName = 'Servico'
      Origin = 'Agenda.Servico'
      FixedChar = True
      Size = 10
    end
    object qryAgendaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda.Auditor'
    end
    object qryAgendaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Agenda.Enfermeiro'
    end
    object qryAgendaAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Agenda.Administrativo'
    end
    object qryAgendaQtdContas: TIntegerField
      FieldName = 'QtdContas'
      Origin = 'Agenda.QtdContas'
    end
    object qryAgendaDataConta: TDateTimeField
      FieldName = 'DataConta'
      Origin = 'Agenda.DataConta'
    end
    object qryAgendaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryAgendaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryAgendaRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'Hospital.Regiao'
    end
    object qryAgendaMedNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryAgendaEnfNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryAgendaAdmNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AdmNome'
      LookupDataSet = dbAdm
      LookupKeyFields = 'Administrativo'
      LookupResultField = 'Nome'
      KeyFields = 'Administrativo'
      Size = 40
      Lookup = True
    end
    object qryAgendaAdmLocal: TStringField
      FieldName = 'AdmLocal'
      FixedChar = True
      Size = 1
    end
    object qryAgendaAdmPeriodo: TStringField
      FieldName = 'AdmPeriodo'
      FixedChar = True
      Size = 1
    end
    object qryAgendaObservacao: TStringField
      FieldName = 'Observacao'
      FixedChar = True
      Size = 50
    end
  end
  object rvAgenda: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relAgenda
    Left = 241
    Top = 72
  end
  object relAgenda: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from relAgenda')
    Left = 206
    Top = 72
    object relAgendaClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
    object relAgendaOrdem: TStringField
      FieldName = 'Ordem'
      Origin = 'relAgenda.Ordem'
      FixedChar = True
      Size = 40
    end
    object relAgendaSegunda: TMemoField
      FieldName = 'Segunda'
      Origin = 'relAgenda.Segunda'
      BlobType = ftMemo
    end
    object relAgendaTerca: TMemoField
      FieldName = 'Terca'
      Origin = 'relAgenda.Terca'
      BlobType = ftMemo
    end
    object relAgendaQuarta: TMemoField
      FieldName = 'Quarta'
      Origin = 'relAgenda.Quarta'
      BlobType = ftMemo
    end
    object relAgendaQuinta: TMemoField
      FieldName = 'Quinta'
      Origin = 'relAgenda.Quinta'
      BlobType = ftMemo
    end
    object relAgendaSexta: TMemoField
      FieldName = 'Sexta'
      Origin = 'relAgenda.Sexta'
      BlobType = ftMemo
    end
  end
  object dbAdm: TMSTable
    TableName = 'dbo.Administrativos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 23
    Top = 377
    object dbAdmAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'dbo.Administrativos.Administrativo'
    end
    object dbAdmNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Administrativos.Nome'
      FixedChar = True
      Size = 60
    end
    object dbAdmemail: TStringField
      FieldName = 'email'
      Origin = 'dbo.Administrativos.email'
      Size = 50
    end
    object dbAdmDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Administrativos.DataFim'
    end
  end
  object qryConta: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Agenda.ClienteID, Agenda.Hospital, Hospital.Nome, Hospita' +
        'l.Regiao, '
      
        '       Agenda.Data, sum(Agenda.QtdContas)as QtdContas from Agend' +
        'a,Hospital'
      'where Agenda.Hospital=Hospital.Hospital '
      
        'group by Agenda.ClienteID, Agenda.Hospital,Hospital.Nome,Hospita' +
        'l.Regiao,Agenda.Data'
      '')
    Left = 96
    Top = 120
    object qryContaClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryContaHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryContaData: TDateTimeField
      FieldName = 'Data'
    end
    object qryContaQtdContas: TIntegerField
      FieldName = 'QtdContas'
      ReadOnly = True
    end
    object qryContaNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
    object qryContaRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object qryContaRegiaoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'RegiaoTexto'
      LookupDataSet = dbRegiao
      LookupKeyFields = 'Regiao'
      LookupResultField = 'Descricao'
      KeyFields = 'Regiao'
      Size = 40
      Lookup = True
    end
  end
  object relConta: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from relAgendaContas')
    OnCalcFields = relContaCalcFields
    Left = 128
    Top = 121
    object relContaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'relAgendaContas.ClienteID'
      FixedChar = True
      Size = 10
    end
    object relContaRegiao: TStringField
      FieldName = 'Regiao'
      Origin = 'relAgendaContas.Regiao'
      FixedChar = True
    end
    object relContaHospital: TStringField
      FieldName = 'Hospital'
      Origin = 'relAgendaContas.Hospital'
      FixedChar = True
      Size = 40
    end
    object relContaD1: TIntegerField
      FieldName = 'D1'
      Origin = 'relAgendaContas.D1'
    end
    object relContaD2: TIntegerField
      FieldName = 'D2'
      Origin = 'relAgendaContas.D2'
    end
    object relContaD3: TIntegerField
      FieldName = 'D3'
      Origin = 'relAgendaContas.D3'
    end
    object relContaD4: TIntegerField
      FieldName = 'D4'
      Origin = 'relAgendaContas.D4'
    end
    object relContaD5: TIntegerField
      FieldName = 'D5'
      Origin = 'relAgendaContas.D5'
    end
    object relContaD6: TIntegerField
      FieldName = 'D6'
      Origin = 'relAgendaContas.D6'
    end
    object relContaD7: TIntegerField
      FieldName = 'D7'
      Origin = 'relAgendaContas.D7'
    end
    object relContaD8: TIntegerField
      FieldName = 'D8'
      Origin = 'relAgendaContas.D8'
    end
    object relContaD9: TIntegerField
      FieldName = 'D9'
      Origin = 'relAgendaContas.D9'
    end
    object relContaD10: TIntegerField
      FieldName = 'D10'
      Origin = 'relAgendaContas.D10'
    end
    object relContaD11: TIntegerField
      FieldName = 'D11'
      Origin = 'relAgendaContas.D11'
    end
    object relContaD12: TIntegerField
      FieldName = 'D12'
      Origin = 'relAgendaContas.D12'
    end
    object relContaD13: TIntegerField
      FieldName = 'D13'
      Origin = 'relAgendaContas.D13'
    end
    object relContaD14: TIntegerField
      FieldName = 'D14'
      Origin = 'relAgendaContas.D14'
    end
    object relContaD15: TIntegerField
      FieldName = 'D15'
      Origin = 'relAgendaContas.D15'
    end
    object relContaD16: TIntegerField
      FieldName = 'D16'
      Origin = 'relAgendaContas.D16'
    end
    object relContaD17: TIntegerField
      FieldName = 'D17'
      Origin = 'relAgendaContas.D17'
    end
    object relContaD18: TIntegerField
      FieldName = 'D18'
      Origin = 'relAgendaContas.D18'
    end
    object relContaD19: TIntegerField
      FieldName = 'D19'
      Origin = 'relAgendaContas.D19'
    end
    object relContaD20: TIntegerField
      FieldName = 'D20'
      Origin = 'relAgendaContas.D20'
    end
    object relContaD21: TIntegerField
      FieldName = 'D21'
      Origin = 'relAgendaContas.D21'
    end
    object relContaD22: TIntegerField
      FieldName = 'D22'
      Origin = 'relAgendaContas.D22'
    end
    object relContaD23: TIntegerField
      FieldName = 'D23'
      Origin = 'relAgendaContas.D23'
    end
    object relContaD24: TIntegerField
      FieldName = 'D24'
      Origin = 'relAgendaContas.D24'
    end
    object relContaD25: TIntegerField
      FieldName = 'D25'
      Origin = 'relAgendaContas.D25'
    end
    object relContaD26: TIntegerField
      FieldName = 'D26'
      Origin = 'relAgendaContas.D26'
    end
    object relContaD27: TIntegerField
      FieldName = 'D27'
      Origin = 'relAgendaContas.D27'
    end
    object relContaD28: TIntegerField
      FieldName = 'D28'
      Origin = 'relAgendaContas.D28'
    end
    object relContaD29: TIntegerField
      FieldName = 'D29'
      Origin = 'relAgendaContas.D29'
    end
    object relContaD30: TIntegerField
      FieldName = 'D30'
      Origin = 'relAgendaContas.D30'
    end
    object relContaD31: TIntegerField
      FieldName = 'D31'
      Origin = 'relAgendaContas.D31'
    end
    object relContaTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object relContaS1: TIntegerField
      FieldName = 'S1'
      Origin = 'relAgendaContas.S1'
    end
    object relContaS2: TIntegerField
      FieldName = 'S2'
      Origin = 'relAgendaContas.S2'
    end
    object relContaS3: TIntegerField
      FieldName = 'S3'
      Origin = 'relAgendaContas.S3'
    end
    object relContaS4: TIntegerField
      FieldName = 'S4'
      Origin = 'relAgendaContas.S4'
    end
    object relContaS5: TIntegerField
      FieldName = 'S5'
      Origin = 'relAgendaContas.S5'
    end
    object relContaS6: TIntegerField
      FieldName = 'S6'
      Origin = 'relAgendaContas.S6'
    end
  end
  object rvrelContas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relConta
    Left = 163
    Top = 121
  end
  object qryMedInativo: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Auditores.Auditor, Auditores.Nome, count(Agenda.Auditor) ' +
        'as Qtd from Auditores'
      'full outer join Agenda on Agenda.Auditor=Auditores.Auditor'
      
        'inner join Escala on (Escala.Auditor=Auditores.Auditor and Escal' +
        'a.Tipo='#39'M'#39')'
      'where Auditores.DataFim is null'
      'group by Auditores.Auditor,Auditores.Nome'
      'order by Nome'
      '')
    Filtered = True
    OnFilterRecord = qryMedInativoFilterRecord
    Left = 104
    Top = 176
    object qryMedInativoAuditor: TIntegerField
      DisplayWidth = 12
      FieldName = 'Auditor'
      Origin = 'Auditores.Auditor'
    end
    object qryMedInativoQtd: TIntegerField
      DisplayWidth = 12
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryMedInativoNome: TStringField
      FieldName = 'Nome'
      Origin = 'Auditores.Nome'
      FixedChar = True
      Size = 40
    end
  end
  object rvMedInativo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryMedInativo
    Left = 139
    Top = 177
  end
  object qryEnfInativo: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Enfermeiros.Enfermeiro, Enfermeiros.Nome, count(Agenda.En' +
        'fermeiro) as Qtd from Enfermeiros'
      
        'full outer join Agenda on Enfermeiros.Enfermeiro=Agenda.Enfermei' +
        'ro'
      'where Enfermeiros.DataFim is null'
      'group by Enfermeiros.Enfermeiro,Enfermeiros.Nome'
      'order by Nome'
      '')
    Filtered = True
    OnFilterRecord = qryEnfInativoFilterRecord
    Left = 104
    Top = 224
    object qryEnfInativoEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Enfermeiros.Enfermeiro'
    end
    object qryEnfInativoNome: TStringField
      FieldName = 'Nome'
      Origin = 'Enfermeiros.Nome'
      FixedChar = True
      Size = 40
    end
    object qryEnfInativoQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rvEnfInativo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEnfInativo
    Left = 139
    Top = 225
  end
  object qryAdmInativo: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select Administrativos.Administrativo, Administrativos.Nome, '
      'count(Agenda.Administrativo) as Qtd from Administrativos'
      
        'full outer join Agenda on Agenda.Administrativo=Administrativos.' +
        'Administrativo'
      'where Administrativos.DataFim is null'
      'group by Administrativos.Administrativo,Administrativos.Nome'
      'order by Nome'
      '')
    Filtered = True
    OnFilterRecord = qryAdmInativoFilterRecord
    Left = 104
    Top = 272
    object qryAdmInativoAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Administrativos.Administrativo'
    end
    object qryAdmInativoNome: TStringField
      FieldName = 'Nome'
      Origin = 'Administrativos.Nome'
      FixedChar = True
      Size = 60
    end
    object qryAdmInativoQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rvAdmInativo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryAdmInativo
    Left = 139
    Top = 273
  end
  object qryHosInativo: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Hospital.Hospital, Hospital.Nome, count(Agenda.Hospital) ' +
        'as Qtd from Hospital'
      'full outer join Agenda on Agenda.Hospital=Hospital.Hospital'
      'where Hospital.Auditorado=1'
      'group by Hospital.Hospital,Hospital.Nome'
      'order by Nome'
      '')
    Filtered = True
    OnFilterRecord = qryHosInativoFilterRecord
    Left = 104
    Top = 320
    object qryHosInativoHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Hospital.Hospital'
    end
    object qryHosInativoNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryHosInativoQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rvHosInativo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryHosInativo
    Left = 139
    Top = 321
  end
  object qryEscalaDiaria: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from EscalaDiaria,EscalaPadrao,Hospital'
      'where EscalaDiaria.Hospital=Hospital.Hospital and'
      '      EscalaDiaria.Cliente=EscalaPadrao.Cliente and'
      '      EscalaDiaria.Hospital=EscalaPadrao.Hospital and'
      '      EscalaDiaria.Tipo=EscalaPadrao.Tipo and'
      '      EscalaDiaria.Servico=EscalaPadrao.Servico'
      'order by Regiao')
    OnCalcFields = qryEscalaDiariaCalcFields
    Left = 176
    Top = 16
    object qryEscalaDiariaEscala: TIntegerField
      FieldName = 'Escala'
      Origin = 'EscalaDiaria.Escala'
    end
    object qryEscalaDiariaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'EscalaDiaria.Cliente'
    end
    object qryEscalaDiariaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'EscalaDiaria.Hospital'
    end
    object qryEscalaDiariaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'EscalaDiaria.Tipo'
      FixedChar = True
      Size = 1
    end
    object qryEscalaDiariaServico: TStringField
      FieldName = 'Servico'
      Origin = 'EscalaDiaria.Servico'
      FixedChar = True
      Size = 10
    end
    object qryEscalaDiariaDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'EscalaDiaria.DataInicio'
    end
    object qryEscalaDiariaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'EscalaDiaria.Auditor'
    end
    object qryEscalaDiariaDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'EscalaDiaria.DataFim'
    end
    object qryEscalaDiariaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'EscalaDiaria.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryEscalaDiariaCobertura: TIntegerField
      FieldName = 'Cobertura'
      Origin = 'EscalaDiaria.Cobertura'
    end
    object qryEscalaDiariaQtd: TSmallintField
      FieldName = 'Qtd'
      Origin = 'EscalaPadrao.Qtd'
    end
    object qryEscalaDiariaQtdAtual: TSmallintField
      FieldName = 'QtdAtual'
      Origin = 'EscalaPadrao.QtdAtual'
    end
    object qryEscalaDiariaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryEscalaDiariaRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'Hospital.Regiao'
    end
    object qryEscalaDiariaCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Hospital.Cidade'
      FixedChar = True
      Size = 30
    end
    object qryEscalaDiariaUF: TStringField
      FieldName = 'UF'
      Origin = 'Hospital.UF'
      FixedChar = True
      Size = 2
    end
    object qryEscalaDiariaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'Hospital.CNPJ'
      FixedChar = True
      Size = 18
    end
    object qryEscalaDiariaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Hospital.Enfermeiro'
    end
    object qryEscalaDiariaCodBradesco: TIntegerField
      FieldName = 'CodBradesco'
      Origin = 'Hospital.CodBradesco'
    end
    object qryEscalaDiariaAuditorado: TBooleanField
      FieldName = 'Auditorado'
      Origin = 'Hospital.Auditorado'
    end
    object qryEscalaDiariaMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaDiariaEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaDiariaAuditorNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'AuditorNome'
      Size = 40
      Calculated = True
    end
    object qryEscalaDiariaRegiaoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'RegiaoNome'
      LookupDataSet = dbRegiao
      LookupKeyFields = 'Regiao'
      LookupResultField = 'Descricao'
      KeyFields = 'Regiao'
      Size = 40
      Lookup = True
    end
  end
  object rvEscalaDiaria: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEscalaDiaria
    Left = 208
    Top = 16
  end
  object qryEscalaG: TMSTable
    TableName = 'dbo.relEscala'
    Connection = frmMenu.dadosaud
    AfterInsert = qryEscalaGAfterInsert
    Left = 248
    Top = 15
    object qryEscalaGRegiao: TStringField
      FieldName = 'Regiao'
      Origin = 'dbo.relEscala.Regiao'
      FixedChar = True
      Size = 40
    end
    object qryEscalaGHospital: TStringField
      FieldName = 'Hospital'
      Origin = 'dbo.relEscala.Hospital'
      FixedChar = True
      Size = 40
    end
    object qryEscalaGCliente1: TWordField
      FieldName = 'Cliente1'
      Origin = 'dbo.relEscala.Cliente1'
    end
    object qryEscalaGCliente2: TWordField
      FieldName = 'Cliente2'
      Origin = 'dbo.relEscala.Cliente2'
    end
    object qryEscalaGCliente3: TWordField
      FieldName = 'Cliente3'
      Origin = 'dbo.relEscala.Cliente3'
    end
    object qryEscalaGCliente4: TWordField
      FieldName = 'Cliente4'
      Origin = 'dbo.relEscala.Cliente4'
    end
    object qryEscalaGCliente5: TWordField
      FieldName = 'Cliente5'
      Origin = 'dbo.relEscala.Cliente5'
    end
    object qryEscalaGCliente6: TWordField
      FieldName = 'Cliente6'
      Origin = 'dbo.relEscala.Cliente6'
    end
    object qryEscalaGCliente7: TWordField
      FieldName = 'Cliente7'
      Origin = 'dbo.relEscala.Cliente7'
    end
    object qryEscalaGCliente8: TWordField
      FieldName = 'Cliente8'
      Origin = 'dbo.relEscala.Cliente8'
    end
    object qryEscalaGCliente9: TWordField
      FieldName = 'Cliente9'
      Origin = 'dbo.relEscala.Cliente9'
    end
    object qryEscalaGCliente10: TWordField
      FieldName = 'Cliente10'
      Origin = 'dbo.relEscala.Cliente10'
    end
    object qryEscalaGCliente11: TWordField
      FieldName = 'Cliente11'
      Origin = 'dbo.relEscala.Cliente11'
    end
    object qryEscalaGCliente12: TWordField
      FieldName = 'Cliente12'
      Origin = 'dbo.relEscala.Cliente12'
    end
    object qryEscalaGCliente13: TWordField
      FieldName = 'Cliente13'
      Origin = 'dbo.relEscala.Cliente13'
    end
    object qryEscalaGCliente14: TWordField
      FieldName = 'Cliente14'
      Origin = 'dbo.relEscala.Cliente14'
    end
    object qryEscalaGCliente15: TWordField
      FieldName = 'Cliente15'
      Origin = 'dbo.relEscala.Cliente15'
    end
    object qryEscalaGCliente16: TWordField
      FieldName = 'Cliente16'
      Origin = 'dbo.relEscala.Cliente16'
    end
    object qryEscalaGCliente17: TWordField
      FieldName = 'Cliente17'
    end
    object qryEscalaGCliente18: TWordField
      FieldName = 'Cliente18'
    end
    object qryEscalaGCliente19: TWordField
      FieldName = 'Cliente19'
    end
    object qryEscalaGCliente20: TWordField
      FieldName = 'Cliente20'
    end
    object qryEscalaGEnfermeiro: TMemoField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.relEscala.Enfermeiro'
      BlobType = ftMemo
    end
    object qryEscalaGMedico: TMemoField
      FieldName = 'Medico'
      Origin = 'dbo.relEscala.Medico'
      BlobType = ftMemo
    end
  end
  object rvEscalaG: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEscalaG
    Left = 280
    Top = 16
  end
  object qryEscalaM: TMSTable
    TableName = 'dbo.relEscalaM'
    Connection = frmMenu.dadosaud
    Left = 320
    Top = 15
    object qryEscalaMAuditorNome: TStringField
      FieldName = 'AuditorNome'
      Origin = 'dbo.relEscalaM.AuditorNome'
      FixedChar = True
      Size = 40
    end
    object qryEscalaMRegiao: TStringField
      FieldName = 'Regiao'
      Origin = 'dbo.relEscalaM.Regiao'
      FixedChar = True
      Size = 40
    end
    object qryEscalaMHospital: TStringField
      FieldName = 'Hospital'
      Origin = 'dbo.relEscalaM.Hospital'
      FixedChar = True
      Size = 40
    end
    object qryEscalaMClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'dbo.relEscalaM.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryEscalaMServicos: TMemoField
      FieldName = 'Servicos'
      Origin = 'dbo.relEscalaM.Servicos'
      BlobType = ftMemo
    end
  end
  object rvEscalaM: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEscalaM
    Left = 352
    Top = 16
  end
  object qryAgendaH: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Data,Nome,Agenda.Hospital,Servico,Auditor,Agenda.Enfermei' +
        'ro,Administrativo from Agenda,Hospital'
      'where Agenda.Hospital=Hospital.Hospital'
      
        'group by Data,Nome,Agenda.Hospital,Servico,Auditor,Agenda.Enferm' +
        'eiro,Administrativo'
      'order by Data,Nome')
    Left = 128
    Top = 72
    object qryAgendaHData: TDateTimeField
      FieldName = 'Data'
    end
    object qryAgendaHNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
    object qryAgendaHHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryAgendaHServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 10
    end
    object qryAgendaHAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object qryAgendaHEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object qryAgendaHAdministrativo: TIntegerField
      FieldName = 'Administrativo'
    end
    object qryAgendaHAdmNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AdmNome'
      LookupDataSet = dbAdm
      LookupKeyFields = 'Administrativo'
      LookupResultField = 'Nome'
      KeyFields = 'Administrativo'
      Size = 40
      Lookup = True
    end
    object qryAgendaHEnfNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryAgendaHMedNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
  end
  object qryAgendaP: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'Select Data,Nome,Agenda.Hospital,Servico,Auditor as Auditor from' +
        ' Agenda,Hospital'
      'where Agenda.Hospital=Hospital.Hospital'
      'group by Data,Nome,Agenda.Hospital,Servico,Auditor'
      'order by Data,Nome')
    Left = 168
    Top = 72
    object qryAgendaPData: TDateTimeField
      FieldName = 'Data'
    end
    object qryAgendaPNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
    object qryAgendaPHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryAgendaPServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 10
    end
    object qryAgendaPAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object qryAgendaPAdmNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AdmNome'
      LookupDataSet = dbAdm
      LookupKeyFields = 'Administrativo'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryAgendaPEnfNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryAgendaPMedNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
  end
  object qryCobertura: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Ferias'
      
        'inner join EscalaDiaria on Ferias.Cobertura=EscalaDiaria.Cobertu' +
        'ra'
      'INNER JOIN Hospital ON EscalaDiaria.Hospital = Hospital.Hospital'
      
        'order by EscalaDiaria.Hospital, Ferias.DataInicio, Ferias.DataFi' +
        'm, EscalaDiaria.ClienteID ')
    OnCalcFields = qryCoberturaCalcFields
    Left = 416
    Top = 16
    object qryCoberturaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Ferias.Tipo'
      FixedChar = True
      Size = 1
    end
    object qryCoberturaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Ferias.Auditor'
    end
    object qryCoberturaDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Ferias.DataInicio'
    end
    object qryCoberturaDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Ferias.DataFim'
    end
    object qryCoberturaEscala: TIntegerField
      FieldName = 'Escala'
      Origin = 'EscalaDiaria.Escala'
    end
    object qryCoberturaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'EscalaDiaria.Cliente'
    end
    object qryCoberturaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'EscalaDiaria.Hospital'
    end
    object qryCoberturaServico: TStringField
      FieldName = 'Servico'
      Origin = 'EscalaDiaria.Servico'
      FixedChar = True
      Size = 10
    end
    object qryCoberturaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'EscalaDiaria.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryCoberturaDataCobertura: TDateTimeField
      FieldName = 'DataCobertura'
      Origin = 'EscalaDiaria.DataCobertura'
    end
    object qryCoberturaNomeMedI: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMedI'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryCoberturaNomeEnfI: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEnfI'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryCoberturaNomeMedO: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMedO'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor_1'
      Size = 40
      Lookup = True
    end
    object qryCoberturaNomeEnfO: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEnfO'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor_1'
      Size = 40
      Lookup = True
    end
    object qryCoberturaAuditorIn: TStringField
      FieldKind = fkCalculated
      FieldName = 'AuditorIn'
      Size = 40
      Calculated = True
    end
    object qryCoberturaAuditorOut: TStringField
      FieldKind = fkCalculated
      FieldName = 'AuditorOut'
      Size = 40
      Calculated = True
    end
    object qryCoberturaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryCoberturaAuditor_1: TIntegerField
      FieldName = 'Auditor_1'
      Origin = 'EscalaDiaria.Auditor'
    end
  end
  object rvCobertura: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryCobertura
    Left = 455
    Top = 17
  end
  object qryEscalaIni: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from EscalaDiaria'
      'inner join Hospital on EscalaDiaria.Hospital=Hospital.Hospital'
      'where Cobertura=0 and DataFim is null'
      'order by Nome, ClienteID')
    OnCalcFields = qryEscalaIniCalcFields
    Left = 424
    Top = 66
    object qryEscalaIniEscala: TIntegerField
      FieldName = 'Escala'
      Origin = 'EscalaDiaria.Escala'
    end
    object qryEscalaIniCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'EscalaDiaria.Cliente'
    end
    object qryEscalaIniHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'EscalaDiaria.Hospital'
    end
    object qryEscalaIniTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'EscalaDiaria.Tipo'
      FixedChar = True
      Size = 1
    end
    object qryEscalaIniServico: TStringField
      FieldName = 'Servico'
      Origin = 'EscalaDiaria.Servico'
      FixedChar = True
      Size = 10
    end
    object qryEscalaIniDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'EscalaDiaria.DataInicio'
    end
    object qryEscalaIniAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'EscalaDiaria.Auditor'
    end
    object qryEscalaIniDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'EscalaDiaria.DataFim'
    end
    object qryEscalaIniClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'EscalaDiaria.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryEscalaIniCobertura: TIntegerField
      FieldName = 'Cobertura'
      Origin = 'EscalaDiaria.Cobertura'
    end
    object qryEscalaIniNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object qryEscalaIniNomeMed: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMed'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaIniNomeEnf: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEnf'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryEscalaIniNomeAuditor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeAuditor'
      Size = 40
      Calculated = True
    end
    object qryEscalaIniData: TDateField
      FieldKind = fkCalculated
      FieldName = 'Data'
      Calculated = True
    end
  end
  object rvEscalaIni: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEscalaIni
    Left = 454
    Top = 67
  end
  object qryFechaEnf: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'SELECT    Agenda.Enfermeiro, Agenda.Cliente, Agenda.Hospital,Enf' +
        'ermeiros.Nome'
      'FROM      Agenda'
      
        'inner join Enfermeiros on Agenda.Enfermeiro=Enfermeiros.Enfermei' +
        'ro'
      'WHERE     (YEAR(Data) = 2021) AND (MONTH(Data) = 3) AND '
      
        '         (Administrativo IS NULL OR Administrativo = 999999) AND' +
        ' (Agenda.Enfermeiro <> 0)'
      
        'GROUP BY Agenda.Enfermeiro, Agenda.Cliente, Agenda.Hospital,Enfe' +
        'rmeiros.Nome '
      'ORDER BY Enfermeiros.Nome, Agenda.Cliente, Agenda.Hospital ')
    OnCalcFields = qryCoberturaCalcFields
    Left = 424
    Top = 120
    object qryFechaEnfEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object qryFechaEnfCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object qryFechaEnfHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryFechaEnfNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 40
    end
    object qryFechaEnfClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'ClienteID'
      KeyFields = 'Cliente'
      Lookup = True
    end
    object qryFechaEnfHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
  end
  object rvFechaEnf: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryFechaEnf
    Left = 455
    Top = 121
  end
end
