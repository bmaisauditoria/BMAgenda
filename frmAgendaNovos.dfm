object frmAgendaNovo: TfrmAgendaNovo
  Left = 653
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Inclus'#227'o Agenda'
  ClientHeight = 723
  ClientWidth = 693
  Color = clBtnFace
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
  object lblData: TLabel
    Left = 0
    Top = 0
    Width = 693
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Segunda'
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 0
    Top = 16
    Width = 693
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'M'#233'dicos/Enfermeiros'
    Color = 13816486
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 0
    Top = 412
    Width = 693
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Prestadores'
    Color = 13816486
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 428
    Width = 693
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 15
    TabOrder = 0
    object grdPrestadores: TDBGrid
      Left = 15
      Top = 15
      Width = 663
      Height = 227
      Hint = 'Duplo click para Incluir sim/n'#227'o'
      Align = alTop
      DataSource = dsAgendaP
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdPrestadoresDrawColumnCell
      OnDblClick = grdPrestadoresDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Prestador'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Servico'
          PickList.Strings = (
            'P'
            'PS')
          Title.Caption = 'Servi'#231'o'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ok'
          Title.Alignment = taCenter
          Title.Caption = 'Incluir'
          Width = 50
          Visible = True
        end>
    end
    object cmdNovo2: TBitBtn
      Left = 247
      Top = 250
      Width = 200
      Height = 31
      Hint = 'Nova Produtividade'
      Caption = 'Incluir selecionados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cmdNovo2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
        8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
        9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
        AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
        B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
        C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
        DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
        09090909090909090937373710302926231A16110E0E0E130937373710302C28
        26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
        292823221A11110E093737371736322E2E2C2826221A11110937373718383432
        2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
        34322E2C28262323093737371D3838383532312E2C282822093737371E383838
        3835323131302719093737371F383838383834342E0D0C0A093737371F383838
        383838362A0204000137373725383838383838382B070503373737371F353434
        343434342A070B37373737371F212121211F1F211C0637373737}
    end
  end
  object tabBusca: TTabControl
    Left = 0
    Top = 32
    Width = 693
    Height = 380
    Align = alTop
    TabOrder = 1
    Tabs.Strings = (
      'Por Hospital'
      'Por Cliente')
    TabIndex = 0
    OnChange = tabBuscaChange
    object Panel1: TPanel
      Left = 4
      Top = 27
      Width = 685
      Height = 349
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 15
      TabOrder = 0
      object lblHospital: TLabel
        Left = 40
        Top = 39
        Width = 50
        Height = 16
        Alignment = taRightJustify
        Caption = 'Hospital'
      end
      object lblCliente: TLabel
        Left = 48
        Top = 39
        Width = 41
        Height = 16
        Alignment = taRightJustify
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 43
        Top = 12
        Width = 46
        Height = 16
        Alignment = taRightJustify
        Caption = 'Servi'#231'o'
      end
      object grdEscalaSelecionada: TDBGrid
        Left = 15
        Top = 77
        Width = 655
        Height = 257
        Align = alBottom
        DataSource = dsEscalaSelecionada
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Hospital'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClienteID'
            Title.Caption = 'Cliente'
            Width = 350
            Visible = True
          end>
      end
      object cmbHospitalNovo: TDBLookupComboBox
        Left = 97
        Top = 35
        Width = 523
        Height = 24
        KeyField = 'Hospital'
        ListField = 'Nome'
        ListSource = dsHospital
        TabOrder = 1
        OnCloseUp = SelecionaDadosAgenda
      end
      object cmbClienteNovo: TDBLookupComboBox
        Left = 97
        Top = 35
        Width = 219
        Height = 24
        KeyField = 'ClienteID'
        ListField = 'ClienteID'
        ListSource = dsCliente
        TabOrder = 2
        OnCloseUp = SelecionaDadosAgenda
      end
      object cmbServicoNovo: TComboBox
        Left = 97
        Top = 7
        Width = 103
        Height = 24
        ItemHeight = 16
        TabOrder = 0
        Text = 'P'
        OnChange = SelecionaDadosAgenda
        Items.Strings = (
          'P'
          'PS')
      end
    end
  end
  object dbAgenda: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda'
      'order by Cliente,Data,Hospital,Servico')
    Left = 583
    Top = 8
    object dbAgendaData: TDateTimeField
      FieldName = 'Data'
    end
    object dbAgendaCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbAgendaHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbAgendaServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 10
    end
    object dbAgendaAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object dbAgendaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object dbAgendaFechaConta: TWordField
      FieldName = 'FechaConta'
    end
    object dbAgendaAdministrativo: TIntegerField
      FieldName = 'Administrativo'
    end
    object dbAgendaQtdContas: TIntegerField
      FieldName = 'QtdContas'
    end
    object dbAgendaDataConta: TDateTimeField
      FieldName = 'DataConta'
    end
    object dbAgendaClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbAgendaObservacao: TStringField
      FieldName = 'Observacao'
      FixedChar = True
      Size = 50
    end
    object dbAgendaDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbAgendaUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object dbAgendaAdmLocal: TStringField
      FieldName = 'AdmLocal'
      FixedChar = True
      Size = 1
    end
    object dbAgendaAdmPeriodo: TStringField
      FieldName = 'AdmPeriodo'
      FixedChar = True
      Size = 1
    end
    object dbAgendaQtdContasP: TIntegerField
      FieldName = 'QtdContasP'
    end
    object dbAgendaUsuarioI: TStringField
      FieldName = 'UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbAgendaDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsAgenda: TDataSource
    DataSet = dbAgenda
    Left = 616
    Top = 9
  end
  object dbAgendaP: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from relAgendaPrestador'
      'order by Cliente,Hospital,Tipo desc ,Nome')
    MasterSource = dsEscalaSelecionada
    MasterFields = 'Cliente;Hospital'
    DetailFields = 'Cliente;Hospital'
    Left = 584
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cliente'
      end
      item
        DataType = ftUnknown
        Name = 'Hospital'
      end>
    object dbAgendaPCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbAgendaPHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbAgendaPTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'relAgendaPrestador.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbAgendaPPrestador: TIntegerField
      FieldName = 'Prestador'
      Origin = 'relAgendaPrestador.Prestador'
    end
    object dbAgendaPServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbAgendaPNome: TStringField
      FieldName = 'Nome'
      Origin = 'relAgendaPrestador.Nome'
      FixedChar = True
      Size = 40
    end
    object dbAgendaPOk: TBooleanField
      FieldName = 'Ok'
      Origin = 'relAgendaPrestador.Ok'
      OnGetText = dbAgendaPOkGetText
      OnSetText = dbAgendaPOkSetText
    end
  end
  object dsAgendaP: TDataSource
    DataSet = dbAgendaP
    Left = 617
    Top = 40
  end
  object dbAdm: TMSTable
    TableName = 'dbo.Administrativos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 584
    Top = 72
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
    Left = 617
    Top = 72
  end
  object dbEscalaSelecionada: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'SELECT     EscalaPadrao.Cliente, EscalaPadrao.Hospital, Hospital' +
        '.Nome, Cliente.ClienteID'
      'FROM       EscalaPadrao '
      'INNER JOIN Hospital ON EscalaPadrao.Hospital = Hospital.Hospital'
      'INNER JOIN CLIENTE  ON EscalaPadrao.Cliente = Cliente.Cliente '
      'WHERE     (EscalaPadrao.DataFim IS NULL) and '
      
        '          (EscalaPadrao.Servico='#39'P'#39' or EscalaPadrao.Servico='#39'PS'#39 +
        ') '
      
        'GROUP BY EscalaPadrao.Cliente, EscalaPadrao.Hospital, Hospital.N' +
        'ome, Cliente.ClienteID '
      'order by Cliente.ClienteID,EscalaPadrao.Cliente,Hospital.Nome')
    MasterFields = 'Cliente'
    DetailFields = 'Cliente'
    Left = 414
    Top = 10
    object dbEscalaSelecionadaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'EscalaPadrao.Cliente'
    end
    object dbEscalaSelecionadaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'EscalaPadrao.Hospital'
    end
    object dbEscalaSelecionadaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object dbEscalaSelecionadaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'CLIENTE.ClienteID'
      FixedChar = True
      Size = 10
    end
  end
  object dsEscalaSelecionada: TDataSource
    DataSet = dbEscalaSelecionada
    Left = 446
    Top = 10
  end
  object dbCliente: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Cliente'
      'where (datafim is null) '
      'order by ClienteID')
    Left = 346
    Top = 11
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
    Left = 378
    Top = 11
  end
  object dsHospital: TDataSource
    DataSet = dbHospital
    Left = 380
    Top = 46
  end
  object dbHospital: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Hospital  '
      'order by nome')
    Left = 346
    Top = 45
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
  end
  object dbClienteAdm: TMSTable
    TableName = 'dbo.ClienteAdm'
    DetailFields = 'Cliente'
    Connection = frmMenu.dadosaud
    Left = 492
    Top = 7
    object dbClienteAdmCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteAdmHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbClienteAdmHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object dbClienteAdmDataUsuario: TDateTimeField
      FieldName = 'DataUsuario'
    end
    object dbClienteAdmUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsClienteAdm: TDataSource
    DataSet = dbClienteAdm
    Left = 524
    Top = 7
  end
end
