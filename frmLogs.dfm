object frmLog: TfrmLog
  Left = 166
  Top = 48
  Width = 1124
  Height = 621
  Caption = 'Log de Atualiza'#231#245'es BBFin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tabLog: TTabControl
    Left = 0
    Top = 0
    Width = 1108
    Height = 582
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Data'
      'Codigo1'
      'Codigo2'
      'Codigo3'
      'Usuario')
    TabIndex = 0
    OnChange = tabLogChange
    object Label12: TLabel
      Left = 4
      Top = 48
      Width = 1100
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Selecione a visualiza'#231#227'o'
      Color = 11468718
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object CoolBar1: TCoolBar
      Left = 4
      Top = 24
      Width = 1100
      Height = 24
      Bands = <
        item
          Control = cmbBusca1
          ImageIndex = -1
          MinHeight = 21
          Width = 1096
        end
        item
          Control = cmbBusca
          ImageIndex = -1
          MinHeight = 21
          Width = 1096
        end>
      object cmbBusca1: TDateTimePicker
        Left = 9
        Top = 0
        Width = 1083
        Height = 21
        Date = 40179.000000000000000000
        Time = 40179.000000000000000000
        TabOrder = 0
        OnChange = cmbBusca1Change
      end
      object cmbBusca: TComboBox
        Left = 9
        Top = 23
        Width = 1083
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnChange = cmbBuscaChange
      end
    end
    object tabFiltro: TTabControl
      Left = 4
      Top = 61
      Width = 1100
      Height = 517
      Align = alClient
      TabOrder = 1
      Tabs.Strings = (
        'Todos'
        'Inclus'#227'o'
        'Exclus'#227'o'
        'Acesso'
        'Sess'#227'o')
      TabIndex = 0
      OnChange = tabFiltroChange
      object grdLog: TDBGrid
        Left = 4
        Top = 24
        Width = 1092
        Height = 489
        Align = alClient
        DataSource = dsLog
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdLogDrawColumnCell
        OnKeyDown = grdLogKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Data'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraTexto'
            Title.Caption = 'Hora'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modulo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClienteNome'
            Title.Caption = 'Cliente'
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Campos'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo1'
            Title.Alignment = taRightJustify
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo2'
            Title.Alignment = taRightJustify
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo3'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OperacaoTexto'
            Title.Caption = 'Opera'#231#227'o'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object dsLog: TDataSource
    DataSet = dbLog
    Left = 984
    Top = 45
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 1016
    Top = 45
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
  end
  object dbLog: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM dbo.Log')
    OnCalcFields = dbLogCalcFields
    Left = 951
    Top = 44
    object dbLogRegistro: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Registro'
      Origin = 'dbo.Log.Registro'
      ReadOnly = True
    end
    object dbLogModulo: TStringField
      FieldName = 'Modulo'
      Origin = 'dbo.Log.Modulo'
      FixedChar = True
      Size = 40
    end
    object dbLogCampos: TStringField
      FieldName = 'Campos'
      Origin = 'dbo.Log.Campos'
      FixedChar = True
      Size = 50
    end
    object dbLogCodigo1: TIntegerField
      FieldName = 'Codigo1'
      Origin = 'dbo.Log.Codigo1'
    end
    object dbLogCodigo2: TIntegerField
      FieldName = 'Codigo2'
      Origin = 'dbo.Log.Codigo2'
    end
    object dbLogCodigo3: TStringField
      FieldName = 'Codigo3'
      Origin = 'dbo.Log.Codigo3'
      FixedChar = True
      Size = 40
    end
    object dbLogOperacao: TStringField
      FieldName = 'Operacao'
      Origin = 'dbo.Log.Operacao'
      FixedChar = True
      Size = 1
    end
    object dbLogOperacaoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'OperacaoTexto'
      Calculated = True
    end
    object dbLogUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Log.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbLogData: TDateTimeField
      FieldName = 'Data'
      Origin = 'dbo.Log.Data'
    end
    object dbLogHora: TDateTimeField
      FieldName = 'Hora'
      Origin = 'dbo.Log.Hora'
    end
    object dbLogHoraTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'HoraTexto'
      Size = 10
      Calculated = True
    end
    object dbLogCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Log.Cliente'
    end
    object dbLogClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
  end
end
