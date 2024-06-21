object frmRelEscalas: TfrmRelEscalas
  Left = 1377
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Escalas'
  ClientHeight = 524
  ClientWidth = 398
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 484
    Align = alTop
    TabOrder = 0
    object cmpCodHospital: TDBText
      Left = 319
      Top = 172
      Width = 49
      Height = 21
      DataField = 'Hospital'
      DataSource = dsHospital
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 69
      Top = 60
      Width = 132
      Height = 16
      Alignment = taRightJustify
      Caption = 'Finalizadas a partir de'
    end
    object cmpCodCliente: TDBText
      Left = 316
      Top = 117
      Width = 77
      Height = 21
      DataField = 'ClienteID'
      DataSource = dsCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpCodServico: TDBText
      Left = 133
      Top = 226
      Width = 233
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object cmpHospital: TDBLookupComboBox
      Left = 15
      Top = 169
      Width = 295
      Height = 24
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospital
      TabOrder = 5
    end
    object chkHospital: TCheckBox
      Left = 15
      Top = 145
      Width = 246
      Height = 21
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 4
      OnClick = chkHospitalClick
    end
    object rdgOrdem: TRadioGroup
      Left = 10
      Top = 5
      Width = 375
      Height = 43
      Caption = 'Selecione a Escala'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Hospital'
        'M'#233'dico'
        'Enfermeiro')
      TabOrder = 0
      OnClick = rdgOrdemClick
    end
    object dtpFim: TDateTimePicker
      Left = 210
      Top = 57
      Width = 111
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object grpMed: TGroupBox
      Left = 9
      Top = 254
      Width = 380
      Height = 77
      Caption = 'Escala Medico'
      TabOrder = 8
      object cmpCodMedico: TDBText
        Left = 315
        Top = 48
        Width = 49
        Height = 21
        DataField = 'Auditor'
        DataSource = dsMedico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object chkMedico: TCheckBox
        Left = 9
        Top = 21
        Width = 246
        Height = 21
        Caption = 'Todos os M'#233'dicos ou selecione:'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMedicoClick
      end
      object cmpMedico: TDBLookupComboBox
        Left = 9
        Top = 43
        Width = 295
        Height = 24
        KeyField = 'Auditor'
        ListField = 'Nome'
        ListSource = dsMedico
        TabOrder = 1
        Visible = False
      end
    end
    object chkCliente: TCheckBox
      Left = 16
      Top = 90
      Width = 208
      Height = 21
      Caption = 'Todos os Clientes ou selecione:'
      TabOrder = 2
      OnClick = chkClienteClick
    end
    object cmpCliente: TDBLookupComboBox
      Left = 16
      Top = 112
      Width = 295
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsCliente
      TabOrder = 3
    end
    object grpEnfermeiro: TGroupBox
      Left = 9
      Top = 332
      Width = 380
      Height = 78
      Caption = 'Escala Enfermeiro'
      TabOrder = 9
      object cmpCodEnfermeiro: TDBText
        Left = 315
        Top = 48
        Width = 49
        Height = 21
        DataField = 'Enfermeiro'
        DataSource = dsEnfermeiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object chkEnfermeiro: TCheckBox
        Left = 9
        Top = 21
        Width = 246
        Height = 21
        Caption = 'Todos os Enfermeiros ou selecione:'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkEnfermeiroClick
      end
      object cmpEnfermeiro: TDBLookupComboBox
        Left = 9
        Top = 43
        Width = 295
        Height = 24
        KeyField = 'Enfermeiro'
        ListField = 'Nome'
        ListSource = dsEnfermeiro
        TabOrder = 1
        Visible = False
      end
    end
    object grpPeriodo: TGroupBox
      Left = 9
      Top = 412
      Width = 380
      Height = 63
      Caption = 'Periodo (somente para Escala Di'#225'ria)'
      TabOrder = 10
      object Label1: TLabel
        Left = 12
        Top = 31
        Width = 67
        Height = 16
        Alignment = taRightJustify
        Caption = 'Peri'#243'do de'
      end
      object Label2: TLabel
        Left = 206
        Top = 31
        Width = 8
        Height = 16
        Alignment = taRightJustify
        Caption = 'a'
      end
      object datFim: TDateTimePicker
        Left = 225
        Top = 26
        Width = 111
        Height = 24
        Date = 37994.000000000000000000
        Time = 37994.000000000000000000
        TabOrder = 0
      end
      object datIni: TDateTimePicker
        Left = 87
        Top = 26
        Width = 111
        Height = 24
        Date = 37994.000000000000000000
        Time = 37994.000000000000000000
        TabOrder = 1
      end
    end
    object chkServico: TCheckBox
      Left = 15
      Top = 199
      Width = 246
      Height = 21
      Caption = 'Todos os Servi'#231'os ou selecione:'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = chkServicoClick
    end
    object cmpServico: TDBLookupComboBox
      Left = 15
      Top = 222
      Width = 111
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico
      TabOrder = 7
      Visible = False
    end
  end
  object cmdRelEscalaP: TBitBtn
    Left = 46
    Top = 491
    Width = 147
    Height = 31
    Caption = 'Escala Principal'
    TabOrder = 1
    OnClick = cmdRelEscalaPClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
      8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
      868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
      C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
      5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
      D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
      141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
      E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
      FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
      D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
      A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
      FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
      D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
      C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
      DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
      E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
      9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object cmdRelEscalaD: TBitBtn
    Left = 203
    Top = 491
    Width = 148
    Height = 31
    Caption = 'Escala Di'#225'ria'
    TabOrder = 2
    OnClick = cmdRelEscalaDClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
      8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
      868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
      C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
      5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
      D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
      141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
      E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
      FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
      D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
      A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
      FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
      D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
      C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
      DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
      E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
      9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 253
    Top = 109
    object dbClienteClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 40
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 285
    Top = 109
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 253
    Top = 167
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
  end
  object dsHospital: TDataSource
    DataSet = dbHospital
    Left = 285
    Top = 167
  end
  object dbMedico: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 317
    Top = 269
    object dbMedicoAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbMedicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      FixedChar = True
      Size = 40
    end
  end
  object dsMedico: TDataSource
    DataSet = dbMedico
    Left = 349
    Top = 269
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 317
    Top = 349
    object dbEnfermeiroEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object dbEnfermeiroNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 40
    end
  end
  object dsEnfermeiro: TDataSource
    DataSet = dbEnfermeiro
    Left = 349
    Top = 349
  end
  object dbServico: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServicoFilterRecord
    IndexFieldNames = 'Servico'
    Left = 253
    Top = 223
    object dbServicoServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      FixedChar = True
      Size = 3
    end
    object dbServicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      FixedChar = True
      Size = 30
    end
    object dbServicoValorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
    object dbServicoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Servicos.Valor'
    end
    object dbServicoVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico: TDataSource
    DataSet = dbServico
    Left = 285
    Top = 223
  end
end
