object frmRelConta: TfrmRelConta
  Left = 394
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Contas Mensais'
  ClientHeight = 234
  ClientWidth = 324
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
    Width = 324
    Height = 198
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 64
      Top = 49
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contas Mes/Ano'
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
      Visible = False
    end
    object rdgOrdem: TRadioGroup
      Left = 8
      Top = 4
      Width = 305
      Height = 35
      Caption = 'Contas por'
      Color = clBtnFace
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Hospital')
      ParentColor = False
      TabOrder = 0
      OnClick = rdgOrdemClick
    end
    object chkCliente: TCheckBox
      Left = 13
      Top = 73
      Width = 169
      Height = 17
      Caption = 'Todos os Clientes ou selecione:'
      Checked = True
      State = cbChecked
      TabOrder = 1
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
      TabOrder = 2
      Visible = False
    end
    object cmbMes: TComboBox
      Left = 149
      Top = 46
      Width = 55
      Height = 21
      ItemHeight = 13
      TabOrder = 3
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
      Left = 206
      Top = 45
      Width = 53
      Height = 22
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 1998
      OnChange = cmbAnoChange
    end
    object dtpIni: TDateTimePicker
      Left = 254
      Top = 43
      Width = 63
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 5
      Visible = False
    end
    object dtpFim: TDateTimePicker
      Left = 254
      Top = 67
      Width = 63
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 6
      Visible = False
    end
    object rdgServico: TRadioGroup
      Left = 8
      Top = 116
      Width = 305
      Height = 35
      Caption = 'Servi'#231'os'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'P'
        'PS'
        'Ambos')
      TabOrder = 7
      OnClick = rdgOrdemClick
    end
    object rdgConta: TRadioGroup
      Left = 8
      Top = 156
      Width = 305
      Height = 35
      Caption = 'Selecione Contas'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Abertas'
        'Fechadas'
        'Ambas')
      TabOrder = 8
      OnClick = rdgOrdemClick
    end
  end
  object BitBtn2: TBitBtn
    Left = 103
    Top = 204
    Width = 100
    Height = 25
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
    Left = 5
    Top = 41
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
    Left = 37
    Top = 41
  end
end
