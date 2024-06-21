object frmRelCobertura: TfrmRelCobertura
  Left = 805
  Top = 285
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Coberturas por Hospital'
  ClientHeight = 234
  ClientWidth = 435
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 185
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 42
      Top = 117
      Width = 70
      Height = 16
      Alignment = taRightJustify
      Caption = 'Peri'#243'do de '
    end
    object Label1: TLabel
      Left = 93
      Top = 147
      Width = 19
      Height = 16
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object cmpCodHospital: TDBText
      Left = 319
      Top = 87
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
    object cmpCodCliente: TDBText
      Left = 316
      Top = 32
      Width = 109
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
    object cmbMes: TComboBox
      Left = 254
      Top = 126
      Width = 68
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'Jan'
      OnChange = cmbMesChange
      Items.Strings = (
        'Jan'
        'Fev'
        'Mar'
        'Abr'
        'Mai'
        'Jun'
        'Jul'
        'Ago'
        'Set'
        'Out'
        'Nov'
        'Dez')
    end
    object cmbAno: TSpinEdit
      Left = 327
      Top = 125
      Width = 65
      Height = 26
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 1998
      OnChange = cmbAnoChange
    end
    object dtpIni: TDateTimePicker
      Left = 120
      Top = 113
      Width = 123
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object dtpFim: TDateTimePicker
      Left = 120
      Top = 142
      Width = 123
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 3
    end
    object chkCliente: TCheckBox
      Left = 16
      Top = 5
      Width = 208
      Height = 21
      Caption = 'Todos os Clientes ou selecione:'
      TabOrder = 4
      OnClick = chkClienteClick
    end
    object cmpCliente: TDBLookupComboBox
      Left = 16
      Top = 27
      Width = 295
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsCliente
      TabOrder = 5
    end
    object chkHospital: TCheckBox
      Left = 15
      Top = 60
      Width = 246
      Height = 21
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 6
      OnClick = chkHospitalClick
    end
    object cmpHospital: TDBLookupComboBox
      Left = 15
      Top = 84
      Width = 295
      Height = 24
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospital
      TabOrder = 7
    end
  end
  object BitBtn2: TBitBtn
    Left = 156
    Top = 196
    Width = 123
    Height = 31
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = BitBtn2Click
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
    Left = 237
    Top = 24
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
    Left = 269
    Top = 24
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 237
    Top = 79
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
    Left = 269
    Top = 79
  end
end
