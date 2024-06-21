object frmRelAgendas: TfrmRelAgendas
  Left = 465
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Relatorio de Agenda'
  ClientHeight = 432
  ClientWidth = 325
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 325
    Height = 362
    Align = alTop
    TabOrder = 0
    object cmpCodHospital: TDBText
      Left = 259
      Top = 140
      Width = 40
      Height = 17
      DataField = 'Hospital'
      DataSource = dsHospital
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 76
      Top = 49
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Semana de '
    end
    object cmpCodCliente: TDBText
      Left = 259
      Top = 95
      Width = 55
      Height = 17
      DataField = 'ClienteID'
      DataSource = dsCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpHospital: TDBLookupComboBox
      Left = 12
      Top = 137
      Width = 240
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospital
      TabOrder = 0
    end
    object chkHospital: TCheckBox
      Left = 12
      Top = 118
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 1
      OnClick = chkHospitalClick
    end
    object rdgOrdem: TRadioGroup
      Left = 8
      Top = 4
      Width = 305
      Height = 35
      Caption = 'Selecione a Escala'
      Columns = 5
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Hospital'
        'M'#233'dico'
        'Enferm.'
        'Adm')
      TabOrder = 2
      OnClick = rdgOrdemClick
    end
    object dtpIni: TDateTimePicker
      Left = 141
      Top = 46
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 3
    end
    object grpMed: TGroupBox
      Left = 7
      Top = 161
      Width = 309
      Height = 63
      Caption = 'Agenda Medico'
      TabOrder = 4
      object cmpCodMedico: TDBText
        Left = 256
        Top = 39
        Width = 40
        Height = 17
        DataField = 'Auditor'
        DataSource = dsMedico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object chkMedico: TCheckBox
        Left = 7
        Top = 17
        Width = 200
        Height = 17
        Caption = 'Todos os M'#233'dicos ou selecione:'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMedicoClick
      end
      object cmpMedico: TDBLookupComboBox
        Left = 7
        Top = 35
        Width = 240
        Height = 21
        KeyField = 'Auditor'
        ListField = 'Nome'
        ListSource = dsMedico
        TabOrder = 1
        Visible = False
      end
    end
    object chkCliente: TCheckBox
      Left = 13
      Top = 73
      Width = 169
      Height = 17
      Caption = 'Todos os Clientes ou selecione:'
      TabOrder = 5
      OnClick = chkClienteClick
    end
    object cmpCliente: TDBLookupComboBox
      Left = 13
      Top = 91
      Width = 240
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsCliente
      TabOrder = 6
    end
    object grpEnfermeiro: TGroupBox
      Left = 8
      Top = 228
      Width = 309
      Height = 63
      Caption = 'Agenda Enfermeiro'
      TabOrder = 7
      object cmpCodEnfermeiro: TDBText
        Left = 256
        Top = 39
        Width = 40
        Height = 17
        DataField = 'Enfermeiro'
        DataSource = dsEnfermeiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object chkEnfermeiro: TCheckBox
        Left = 7
        Top = 17
        Width = 200
        Height = 17
        Caption = 'Todos os Enfermeiros ou selecione:'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkEnfermeiroClick
      end
      object cmpEnfermeiro: TDBLookupComboBox
        Left = 7
        Top = 35
        Width = 240
        Height = 21
        KeyField = 'Enfermeiro'
        ListField = 'Nome'
        ListSource = dsEnfermeiro
        TabOrder = 1
        Visible = False
      end
    end
    object grpAdm: TGroupBox
      Left = 9
      Top = 293
      Width = 309
      Height = 63
      Caption = 'Agenda Administrativo'
      TabOrder = 8
      object cmpCodAdm: TDBText
        Left = 256
        Top = 39
        Width = 40
        Height = 17
        DataField = 'Administrativo'
        DataSource = dsAdm
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object chkAdm: TCheckBox
        Left = 7
        Top = 17
        Width = 200
        Height = 17
        Caption = 'Todos os Administrativos ou selecione:'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkAdmClick
      end
      object cmpAdm: TDBLookupComboBox
        Left = 7
        Top = 35
        Width = 240
        Height = 21
        KeyField = 'Administrativo'
        ListField = 'Nome'
        ListSource = dsAdm
        TabOrder = 1
        Visible = False
      end
    end
  end
  object cmdRel: TBitBtn
    Left = 87
    Top = 368
    Width = 150
    Height = 25
    Caption = 'Relat'#243'rio com Clientes'
    Default = True
    TabOrder = 1
    OnClick = cmdRelClick
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
  object cmdRel1: TBitBtn
    Left = 87
    Top = 400
    Width = 150
    Height = 25
    Caption = 'Relat'#243'rio sem Clientes'
    Default = True
    TabOrder = 2
    Visible = False
    OnClick = cmdRel1Click
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
    Left = 173
    Top = 85
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
    Left = 205
    Top = 85
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 173
    Top = 127
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
    Left = 205
    Top = 127
  end
  object dbMedico: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 181
    Top = 189
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
    Left = 213
    Top = 189
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 165
    Top = 253
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
    Left = 197
    Top = 253
  end
  object dbAdm: TMSTable
    TableName = 'dbo.Administrativos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 223
    Top = 305
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
  object dsAdm: TDataSource
    DataSet = dbAdm
    Left = 255
    Top = 304
  end
end
