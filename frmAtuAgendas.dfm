object frmAtuAgenda: TfrmAtuAgenda
  Left = 297
  Top = 148
  BorderStyle = bsSingle
  Caption = 'Atualiza Agenda'
  ClientHeight = 539
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object tabAge: TTabControl
    Left = 0
    Top = 0
    Width = 1013
    Height = 539
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'M'#233'dico'
      'Enfermeiro')
    TabIndex = 0
    OnChange = tabAgeChange
    object Label1: TLabel
      Left = 4
      Top = 430
      Width = 1005
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Troca por'
      Color = 11777023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 27
      Width = 1005
      Height = 403
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label74: TLabel
        Left = 0
        Top = 159
        Width = 1005
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Agendamentos do Profissional'
        Color = 11777023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object grdAgenda: TDBGrid
        Left = 0
        Top = 175
        Width = 1005
        Height = 228
        Align = alClient
        DataSource = dsAgenda
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClienteID'
            Title.Caption = 'Cliente'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HospitalNome'
            Title.Caption = 'Hospital'
            Width = 254
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Servico'
            Width = 82
            Visible = True
          end>
      end
      object cmbAtual: TCoolBar
        Left = 0
        Top = 0
        Width = 1005
        Height = 31
        Bands = <
          item
            Control = cmbMedico
            ImageIndex = -1
            MinHeight = 24
            Width = 1001
          end
          item
            Control = cmbEnfermeiro
            ImageIndex = -1
            MinHeight = 24
            Visible = False
            Width = 1001
          end>
        object cmbMedico: TDBLookupComboBox
          Left = 9
          Top = 0
          Width = 988
          Height = 24
          KeyField = 'Auditor'
          ListField = 'Nome'
          ListSource = dsAuditor
          TabOrder = 0
          OnClick = cmbMedicoClick
        end
        object cmbEnfermeiro: TDBLookupComboBox
          Left = 9
          Top = 26
          Width = 988
          Height = 24
          KeyField = 'Enfermeiro'
          ListField = 'Nome'
          ListSource = dsEnfermeiro
          TabOrder = 1
          Visible = False
          OnClick = cmbEnfermeiroClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 31
        Width = 1005
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label3: TLabel
          Left = 0
          Top = 101
          Width = 48
          Height = 16
          Alignment = taRightJustify
          Caption = 'Periodo'
        end
        object dtpIni: TDateTimePicker
          Left = 58
          Top = 96
          Width = 111
          Height = 24
          Date = 37994.000000000000000000
          Time = 37994.000000000000000000
          TabOrder = 6
          OnChange = dtpIniChange
        end
        object dtpFim: TDateTimePicker
          Left = 180
          Top = 96
          Width = 110
          Height = 24
          Date = 37994.000000000000000000
          Time = 37994.000000000000000000
          TabOrder = 7
          OnChange = dtpFimChange
        end
        object BitBtn2: TBitBtn
          Left = 314
          Top = 92
          Width = 148
          Height = 31
          Caption = 'Buscar Agenda'
          TabOrder = 8
          OnClick = BitBtn2Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000430B0000430B000000010000000100008C5A5A009C6B
            6B00A57B73000000840084848400B58C8C0039529C00395AAD004A6BBD005A73
            C600C6C6C6006384CE00F7E7CE00F7EFDE00FFF7E700FFFFEF00FF00FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00101010070606
            0606060606060607101010100805000000000000000000000710101008050D0D
            0D0D0D0D0D0D0D000610101008050D040404040404040D000610101008050D0C
            0C0C0C0C0C0C0D000610101008050D040404040404040D000610101008050D0D
            0D0D0D0D0D0D0D010610101008050E0E030D0A03030A0E010610101009050F0F
            030F030F0F030F010610101009050F0F030F0F0F0F030F020610101009050F0F
            030F0303030A0F02061010100B0511030311031111111105061010100B051111
            0311030303031105061010100B0511111111111111111105061010100B050505
            050505050505050507101010100B090808080808080808081010}
        end
        object chkHospital: TCheckBox
          Left = 5
          Top = 38
          Width = 203
          Height = 21
          Caption = 'Todos Hospitais ou selecione:'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkHospitalClick
        end
        object cmbHospital: TDBLookupComboBox
          Left = 208
          Top = 34
          Width = 789
          Height = 24
          KeyField = 'Hospital'
          ListField = 'Nome'
          ListSource = dsHospital
          TabOrder = 3
          Visible = False
          OnClick = cmbMedicoClick
        end
        object chkServico: TCheckBox
          Left = 5
          Top = 66
          Width = 203
          Height = 21
          Caption = 'Todos Servi'#231'os ou selecione:'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = chkServicoClick
        end
        object cmbServico: TDBLookupComboBox
          Left = 208
          Top = 63
          Width = 789
          Height = 24
          KeyField = 'Servico'
          ListField = 'Servico'
          ListSource = dsServico
          TabOrder = 5
          Visible = False
          OnClick = cmbMedicoClick
        end
        object chkCliente: TCheckBox
          Left = 6
          Top = 9
          Width = 203
          Height = 21
          Caption = 'Todos Clientes ou selecione:'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkClienteClick
        end
        object cmbCliente: TDBLookupComboBox
          Left = 206
          Top = 5
          Width = 788
          Height = 24
          KeyField = 'Cliente'
          ListField = 'ClienteID'
          ListSource = dsCliente
          TabOrder = 1
          Visible = False
          OnClick = cmbMedicoClick
        end
      end
    end
    object cmbNovo: TCoolBar
      Left = 4
      Top = 446
      Width = 1005
      Height = 30
      Bands = <
        item
          Control = cmbMedicoNovo
          ImageIndex = -1
          MinHeight = 24
          Width = 1001
        end
        item
          Control = cmbEnfermeiroNovo
          ImageIndex = -1
          MinHeight = 24
          Visible = False
          Width = 1001
        end>
      object cmbMedicoNovo: TDBLookupComboBox
        Left = 9
        Top = 0
        Width = 988
        Height = 24
        KeyField = 'Auditor'
        ListField = 'Nome'
        ListSource = dsAuditor
        TabOrder = 0
      end
      object cmbEnfermeiroNovo: TDBLookupComboBox
        Left = 9
        Top = 26
        Width = 988
        Height = 24
        KeyField = 'Enfermeiro'
        ListField = 'Nome'
        ListSource = dsEnfermeiro
        TabOrder = 1
        Visible = False
      end
    end
    object cmdRel: TBitBtn
      Left = 348
      Top = 491
      Width = 148
      Height = 31
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = cmdRelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
        8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
        F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
        83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
        A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
        F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
        83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
        6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
        FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
        79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
        A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
        FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
        69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
        7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
        FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
        5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
        F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
        F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
        FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
        CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
        A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
    end
    object BitBtn1: TBitBtn
      Left = 516
      Top = 491
      Width = 147
      Height = 31
      Caption = 'Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
        7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
        80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
        B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
        82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
        F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
        90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
        5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
        CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
        29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
        00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
        B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
        FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
        00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object dbAgenda: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda')
    Left = 679
    Top = 156
    object dbAgendaData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Agenda.Data'
    end
    object dbAgendaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Agenda.Cliente'
    end
    object dbAgendaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Agenda.Hospital'
    end
    object dbAgendaServico: TStringField
      FieldName = 'Servico'
      Origin = 'Agenda.Servico'
      FixedChar = True
      Size = 10
    end
    object dbAgendaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda.Auditor'
    end
    object dbAgendaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Agenda.Enfermeiro'
    end
    object dbAgendaAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Agenda.Administrativo'
    end
    object dbAgendaFechaConta: TWordField
      FieldName = 'FechaConta'
      Origin = 'Agenda.FechaConta'
    end
    object dbAgendaQtdContas: TIntegerField
      FieldName = 'QtdContas'
      Origin = 'Agenda.QtdContas'
    end
    object dbAgendaDataConta: TDateTimeField
      FieldName = 'DataConta'
      Origin = 'Agenda.DataConta'
    end
    object dbAgendaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbAgendaObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Agenda.Observacao'
      FixedChar = True
      Size = 50
    end
    object dbAgendaDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Agenda.DataInclusao'
    end
    object dbAgendaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Agenda.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbAgendaHospitalNome: TStringField
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
  object dsAgenda: TDataSource
    DataSet = dbAgenda
    Left = 712
    Top = 156
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 679
    Top = 189
    object dbAuditorAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbAuditorNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      Size = 40
    end
    object dbAuditorCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'dbo.Auditores.CRM'
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
    object dbAuditorNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'dbo.Auditores.Nascimento'
    end
    object dbAuditorEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Auditores.Email'
      Size = 50
    end
    object dbAuditorUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
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
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 679
    Top = 222
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
    object dbEnfermeiroFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.Enfermeiros.Fone'
      Size = 60
    end
    object dbEnfermeiroFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'dbo.Enfermeiros.Fone1'
      Size = 60
    end
    object dbEnfermeiroFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'dbo.Enfermeiros.Fone2'
      Size = 60
    end
    object dbEnfermeiroNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'dbo.Enfermeiros.Nascimento'
    end
    object dbEnfermeiroEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Enfermeiros.Email'
      Size = 50
    end
    object dbEnfermeiroUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Enfermeiros.Usuario'
      Size = 10
    end
    object dbEnfermeiroDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.Enfermeiros.DataInicio'
    end
    object dbEnfermeiroDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Enfermeiros.DataFim'
    end
    object dbEnfermeiroDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Enfermeiros.DataInclusao'
    end
  end
  object dsEnfermeiro: TDataSource
    DataSet = dbEnfermeiro
    Left = 712
    Top = 222
  end
  object dsAuditor: TDataSource
    DataSet = dbAuditor
    Left = 712
    Top = 189
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 679
    Top = 256
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
  end
  object dsHospital: TDataSource
    DataSet = dbHospital
    Left = 712
    Top = 256
  end
  object dbServico: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServicoFilterRecord
    IndexFieldNames = 'Servico'
    Left = 679
    Top = 287
    object dbServicoServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      Size = 3
    end
    object dbServicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      Size = 30
    end
    object dbServicoValorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
    object dbServicoValorizadoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ValorizadoTexto'
      Size = 3
      Calculated = True
    end
    object dbServicoVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      Size = 1
    end
  end
  object dsServico: TDataSource
    DataSet = dbServico
    Left = 712
    Top = 288
  end
  object dbCliente: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Cliente'
      'order by ClienteID')
    Filtered = True
    Left = 682
    Top = 323
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Cliente.Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'Cliente.Nome'
      FixedChar = True
      Size = 40
    end
    object dbClienteDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Cliente.DataFim'
    end
    object dbClienteClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Cliente.ClienteID'
      FixedChar = True
      Size = 10
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 714
    Top = 323
  end
end
