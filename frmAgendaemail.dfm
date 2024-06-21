object frmAgendamail: TfrmAgendamail
  Left = 471
  Top = 184
  BorderStyle = bsSingle
  Caption = 'Agenda - e-mails'
  ClientHeight = 611
  ClientWidth = 1028
  Color = clBtnFace
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
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label4: TLabel
      Left = 10
      Top = 10
      Width = 54
      Height = 13
      Caption = 'Semana de'
    end
    object DtpFim: TLabel
      Left = 160
      Top = 8
      Width = 80
      Height = 16
      AutoSize = False
      Caption = 'DtpFim'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dtpIni: TLabel
      Left = 72
      Top = 9
      Width = 80
      Height = 16
      AutoSize = False
      Caption = 'DtpFim'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 250
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Seleciona emails'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
        E98E3593460FFF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
        93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
        93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF93460FEEBF82E98E3593460FFF00FF00000000000000
        0000000000000000000000000000000000000000000000FF00FF93460F5DD270
        F7DAB793460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
        E98E3593460FFF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
        93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn1: TBitBtn
      Left = 277
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Alterar e-mail/telefone'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000000000000084
        0000210021005A4A29004A3939005A5242004A4A4A005A524A0073524A005A52
        52006300630073737300BD847B00C6947B00CE9C7B00B58484009C948400BD94
        9400EFCE9400F7CE9400C6A59C00EFCE9C00F7CE9C00F7D69C00C6ADA500CEAD
        A500F7D6A500C6ADAD00CEB5AD00D6B5AD00EFD6AD00F7D6AD00C6B5B500D6BD
        B500DEBDB500DEC6B500E7C6B500EFC6B500EFCEB500F7D6B500F7DEB500D6C6
        BD00DECEBD00EFCEBD00F7DEBD0000C6C600C6C6C600D6CEC600F7DEC600F7E7
        C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
        DE00FFEFE700FFF7E70021F7EF00FFF7EF0018F7F700FFF7F700FFFFF700FF00
        FF0000FFFF0021FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0041410F0F0F0F
        0F0F0F0F0F0F0F0F0F4141411438312C281E1A15121212170F41414114382E2E
        2E2E2E2E2E2E2E150F414141183A3634302C1E15151512150F414141183B3634
        31302805151515120F4141411C402E2E2E2E2E06002E2E150F4141411D443D3A
        363431070000291E0F41414121443F3D39363407422D00290F41414121442E2E
        2E2E2E0B3E2D002911414141224444443F3A393609422D001B41414123444444
        443F3A3910432D002041414124442E2E2E2E2E2E3604422D0041414124444444
        4444444032083C2D004141412B44444444444444330D030001004141243F3D3D
        3D3D3D3D320D0801010241412426262626242426210C410A0A41}
    end
    object cmdAtualizaP: TBitBtn
      Left = 332
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Atualizar dados dos prestadores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cmdAtualizaPClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B0000000100000001000000840000088C
        0800108C080018941000219410001894180029941800219C2100299C210029A5
        2900E78C31005AA53900B56B4A006BAD4A0073AD4A008C6B5200946B5200E79C
        5200A5635A00A56B5A00BD7B5A0084B55A00FFB55A0063BD6300A5636B00A573
        6B00BD846B00C6846B00D6946B00A5B56B0073BD6B00DE9C7300CEB5730094BD
        73009CBD7300ADBD730073C673007BC6730084C6730094C673009CC67300E7AD
        7B00DEBD7B00EFBD7B009CC67B00EFC67B00EFBD84009CC68400EFC68400F7C6
        840084CE8400EFC68C00F7CE8C00B5AD9400ADB59400EFC69400A5CE9400C6CE
        9400D6CE9400E7CE9400F7CE9400BDCE9C00EFCE9C00BDD69C00EFCEA500ADD6
        A500BDD6A500F7D6A500A5DEA500EFD6AD00F7D6AD00B5DEAD00DECEB500F7D6
        B500F7DEB500F7DEBD00DEC6C600FFEFC600FFEFCE00E7E7D600F7EFD600FFEF
        DE00DEF7DE00E7F7DE00FFEFE700E7F7E700FFF7E700F7F7EF00FFF7EF00FFF7
        F700F7FFF700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C18181818
        1818181818181818185C5C5C184D393A3E3B302E2B2E2E30185C5C5C184E2208
        0D04040B202B2B30185C5C5C12513D0200000000062A2B30185C5C5C12563D03
        0003230E000E2E30185C5C5C19584201000015401D0D3330185C5C5C195D4F38
        2F212245402C3733185C5C5C1A5D4454502F212122403E3C185C5C5C1A5D2441
        5426000001454043185C5C5C1C5D32002541050002494640185C5C5C1C5D5709
        00000000024E4835185C5C5C1F5D5D521707071E08101313185C5C5C1F5D5D5D
        5D52525B360F110A0C5C5C5C295D5D5D5D5D5D5D4C1316145C5C5C5C29575757
        575757574C131A5C5C5C5C5C291C1C1C1C1C1C1C1C135C5C5C5C}
    end
    object BitBtn3: TBitBtn
      Left = 305
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Copia dos e-mails'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E000000010000000100005A423900634A
        3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
        5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
        84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
        9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
        9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
        A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
        AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
        B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
        BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
        C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
        D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
        DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
        F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
        FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
        070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
        211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
        4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
        3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
        6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
        706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
        565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
        1D575C521D143A6565656565656565653A2F2F383A6565656565}
    end
    object BitBtn4: TBitBtn
      Left = 358
      Top = 4
      Width = 25
      Height = 25
      Hint = 'E-mail com anexo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn4Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E000000010000000100005A423900634A
        3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
        5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
        84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
        9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
        9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
        A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
        AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
        B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
        BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
        C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
        D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
        DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
        F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
        FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
        070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
        211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
        4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
        3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
        6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
        706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
        565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
        1D575C521D143A6565656565656565653A2F2F383A6565656565}
    end
  end
  object pagMail: TPageControl
    Left = 0
    Top = 29
    Width = 1028
    Height = 582
    Hint = 'Duplo-click para enviar e-mail'
    ActivePage = tabEnf
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object tabMed: TTabSheet
      Caption = 'M'#233'dicos'
      object pnlMedico: TPanel
        Left = 0
        Top = 0
        Width = 1020
        Height = 25
        Align = alTop
        TabOrder = 0
        object CoolBar1: TCoolBar
          Left = 1
          Top = 1
          Width = 1018
          Height = 25
          Bands = <
            item
              Control = cmbMedico
              ImageIndex = -1
              MinHeight = 21
              Width = 1014
            end>
          object cmbMedico: TDBLookupComboBox
            Left = 9
            Top = 0
            Width = 1001
            Height = 21
            KeyField = 'Auditor'
            ListField = 'Nome'
            ListSource = dsMedico
            TabOrder = 0
            OnCloseUp = cmbMedicoCloseUp
          end
        end
      end
      object grdMed: TDBGrid
        Left = 0
        Top = 25
        Width = 1020
        Height = 529
        Align = alClient
        DataSource = dsMailMed
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdMedDrawColumnCell
        OnDblClick = grdMedDblClick
        OnKeyDown = grdMedKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataEnvio'
            Title.Caption = 'Data Envio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Enviado'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd '
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Caption = 'e-mail'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone2'
            Width = 100
            Visible = True
          end>
      end
    end
    object tabEnf: TTabSheet
      Caption = 'Enfermeiros'
      ImageIndex = 1
      object CoolBar3: TCoolBar
        Left = 0
        Top = 0
        Width = 1020
        Height = 25
        Bands = <
          item
            Control = cmbEnfermeiro
            ImageIndex = -1
            MinHeight = 21
            Width = 1016
          end>
        object cmbEnfermeiro: TDBLookupComboBox
          Left = 9
          Top = 0
          Width = 1003
          Height = 21
          KeyField = 'Enfermeiro'
          ListField = 'Nome'
          ListSource = dsEnfermeiro
          TabOrder = 0
          OnCloseUp = cmbEnfermeiroCloseUp
        end
      end
      object grdEnf: TDBGrid
        Left = 0
        Top = 25
        Width = 1020
        Height = 529
        Hint = 'Duplo-click para enviar e-mail'
        Align = alClient
        DataSource = dsMailEnf
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdEnfDrawColumnCell
        OnDblClick = grdEnfDblClick
        OnKeyDown = grdEnfKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataEnvio'
            ReadOnly = True
            Title.Caption = 'Data Envio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Enviado'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd '
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Caption = 'e-mail'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone2'
            Width = 100
            Visible = True
          end>
      end
    end
    object tabAdm: TTabSheet
      Caption = 'Administrativos'
      ImageIndex = 2
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 1020
        Height = 25
        Bands = <
          item
            Control = cmbAdm
            ImageIndex = -1
            MinHeight = 21
            Width = 1016
          end>
        object cmbAdm: TDBLookupComboBox
          Left = 9
          Top = 0
          Width = 1003
          Height = 21
          KeyField = 'Administrativo'
          ListField = 'Nome'
          ListSource = dsAdm
          TabOrder = 0
          OnCloseUp = cmbAdmCloseUp
        end
      end
      object grdAdm: TDBGrid
        Left = 0
        Top = 25
        Width = 1020
        Height = 529
        Hint = 'Duplo-click para enviar e-mail'
        Align = alClient
        DataSource = dsMailAdm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdAdmDrawColumnCell
        OnDblClick = grdAdmDblClick
        OnKeyDown = grdAdmKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataEnvio'
            Title.Caption = 'Data Envio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Enviado'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd '
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'e-mail'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone2'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 448
    Top = 5
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
    Left = 480
    Top = 5
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 512
    Top = 5
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
    Left = 544
    Top = 5
  end
  object dbMedico: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 577
    Top = 5
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
    Left = 609
    Top = 5
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 641
    Top = 5
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
    Left = 673
    Top = 5
  end
  object dbAdm: TMSTable
    TableName = 'dbo.Administrativos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 706
    Top = 5
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
    Left = 738
    Top = 5
  end
  object dbMailMed: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda_mail,Auditores'
      'where Agenda_mail.Auditor=Auditores.Auditor and'
      '      Agenda_mail.Tipo='#39'M'#39
      'order by DataIni,Nome')
    Left = 770
    Top = 5
    object dbMailMedDataIni: TDateTimeField
      FieldName = 'DataIni'
      Origin = 'Agenda_mail.DataIni'
    end
    object dbMailMedTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Agenda_mail.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbMailMedAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda_mail.Auditor'
    end
    object dbMailMedDataEnvio: TDateTimeField
      FieldName = 'DataEnvio'
      Origin = 'Agenda_mail.DataEnvio'
    end
    object dbMailMedEnviado: TBooleanField
      FieldName = 'Enviado'
      Origin = 'Agenda_mail.Enviado'
      OnGetText = dbMailMedEnviadoGetText
      OnSetText = dbMailMedEnviadoSetText
    end
    object dbMailMedQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'Agenda_mail.Qtd'
    end
    object dbMailMedNome: TStringField
      FieldName = 'Nome'
      Origin = 'Auditores.Nome'
      FixedChar = True
      Size = 40
    end
    object dbMailMedFone: TStringField
      FieldName = 'Fone'
      Origin = 'Auditores.Fone'
      Size = 60
    end
    object dbMailMedFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'Auditores.Fone1'
      Size = 60
    end
    object dbMailMedFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'Auditores.Fone2'
      Size = 60
    end
    object dbMailMedEmail: TStringField
      FieldName = 'Email'
      Origin = 'Auditores.Email'
      Size = 50
    end
    object dbMailMedAuditor_1: TIntegerField
      FieldName = 'Auditor_1'
      Origin = 'Auditores.Auditor'
    end
    object dbMailMedEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Auditores.Endereco'
      Size = 40
    end
    object dbMailMedBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Auditores.Bairro'
      Size = 30
    end
    object dbMailMedCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Auditores.Cidade'
      Size = 30
    end
    object dbMailMedUF: TStringField
      FieldName = 'UF'
      Origin = 'Auditores.UF'
      FixedChar = True
      Size = 2
    end
    object dbMailMedCep: TStringField
      FieldName = 'Cep'
      Origin = 'Auditores.Cep'
      FixedChar = True
      Size = 9
    end
    object dbMailMedCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'Auditores.CRM'
    end
    object dbMailMedCPF: TStringField
      FieldName = 'CPF'
      Origin = 'Auditores.CPF'
      FixedChar = True
      Size = 18
    end
    object dbMailMedRG: TStringField
      FieldName = 'RG'
      Origin = 'Auditores.RG'
      FixedChar = True
      Size = 15
    end
    object dbMailMedRGEmissor: TStringField
      FieldName = 'RGEmissor'
      Origin = 'Auditores.RGEmissor'
      FixedChar = True
      Size = 15
    end
    object dbMailMedNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'Auditores.Nascimento'
    end
    object dbMailMedCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Auditores.Cliente'
    end
    object dbMailMedClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Origin = 'Auditores.ClienteTipo'
      FixedChar = True
      Size = 1
    end
    object dbMailMedObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Auditores.Observacao'
      BlobType = ftMemo
    end
    object dbMailMedDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Auditores.DataInicio'
    end
    object dbMailMedDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Auditores.DataFim'
    end
    object dbMailMedUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Auditores.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbMailMedDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Auditores.DataInclusao'
    end
  end
  object dsMailMed: TDataSource
    DataSet = dbMailMed
    Left = 803
    Top = 5
  end
  object qryAgenda: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda')
    Left = 449
    Top = 36
    object qryAgendaData: TDateTimeField
      FieldName = 'Data'
    end
    object qryAgendaCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object qryAgendaHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryAgendaServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 10
    end
    object qryAgendaAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object qryAgendaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object qryAgendaAdministrativo: TIntegerField
      FieldName = 'Administrativo'
    end
    object qryAgendaQtdContas: TIntegerField
      FieldName = 'QtdContas'
    end
    object qryAgendaDataConta: TDateTimeField
      FieldName = 'DataConta'
    end
    object qryAgendaClienteID: TStringField
      FieldName = 'ClienteID'
      FixedChar = True
      Size = 10
    end
  end
  object dbMailEnf: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda_mail,Enfermeiros'
      'where Agenda_mail.Auditor=Enfermeiros.Enfermeiro and'
      '      Agenda_mail.Tipo='#39'E'#39
      'order by DataIni,Nome')
    Left = 834
    Top = 5
    object dbMailEnfDataIni: TDateTimeField
      FieldName = 'DataIni'
      Origin = 'Agenda_mail.DataIni'
    end
    object dbMailEnfTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Agenda_mail.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbMailEnfAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda_mail.Auditor'
    end
    object dbMailEnfDataEnvio: TDateTimeField
      FieldName = 'DataEnvio'
      Origin = 'Agenda_mail.DataEnvio'
    end
    object dbMailEnfQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'Agenda_mail.Qtd'
    end
    object dbMailEnfEnviado: TBooleanField
      FieldName = 'Enviado'
      Origin = 'Agenda_mail.Enviado'
    end
    object dbMailEnfEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Enfermeiros.Enfermeiro'
    end
    object dbMailEnfNome: TStringField
      FieldName = 'Nome'
      Origin = 'Enfermeiros.Nome'
      FixedChar = True
      Size = 40
    end
    object dbMailEnfCOREN: TIntegerField
      FieldName = 'COREN'
      Origin = 'Enfermeiros.COREN'
    end
    object dbMailEnfEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Enfermeiros.Endereco'
      FixedChar = True
      Size = 40
    end
    object dbMailEnfBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Enfermeiros.Bairro'
      FixedChar = True
      Size = 30
    end
    object dbMailEnfCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Enfermeiros.Cidade'
      FixedChar = True
      Size = 30
    end
    object dbMailEnfUF: TStringField
      FieldName = 'UF'
      Origin = 'Enfermeiros.UF'
      FixedChar = True
      Size = 2
    end
    object dbMailEnfCep: TStringField
      FieldName = 'Cep'
      Origin = 'Enfermeiros.Cep'
      FixedChar = True
      Size = 9
    end
    object dbMailEnfFone: TStringField
      FieldName = 'Fone'
      Origin = 'Enfermeiros.Fone'
      Size = 60
    end
    object dbMailEnfFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'Enfermeiros.Fone1'
      Size = 60
    end
    object dbMailEnfFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'Enfermeiros.Fone2'
      Size = 60
    end
    object dbMailEnfRG: TStringField
      FieldName = 'RG'
      Origin = 'Enfermeiros.RG'
      FixedChar = True
      Size = 15
    end
    object dbMailEnfRGEmissor: TStringField
      FieldName = 'RGEmissor'
      Origin = 'Enfermeiros.RGEmissor'
      FixedChar = True
      Size = 15
    end
    object dbMailEnfCPF: TStringField
      FieldName = 'CPF'
      Origin = 'Enfermeiros.CPF'
      FixedChar = True
      Size = 18
    end
    object dbMailEnfNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'Enfermeiros.Nascimento'
    end
    object dbMailEnfEmail: TStringField
      FieldName = 'Email'
      Origin = 'Enfermeiros.Email'
      Size = 50
    end
    object dbMailEnfDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Enfermeiros.DataInicio'
    end
    object dbMailEnfDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Enfermeiros.DataFim'
    end
    object dbMailEnfCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Enfermeiros.Cliente'
    end
    object dbMailEnfClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Origin = 'Enfermeiros.ClienteTipo'
      FixedChar = True
      Size = 1
    end
    object dbMailEnfUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Enfermeiros.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbMailEnfObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Enfermeiros.Observacao'
      BlobType = ftMemo
    end
    object dbMailEnfDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Enfermeiros.DataInclusao'
    end
  end
  object dsMailEnf: TDataSource
    DataSet = dbMailEnf
    Left = 867
    Top = 5
  end
  object dbMailAdm: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda_mail,Administrativos'
      'where Agenda_mail.Auditor=Administrativos.Administrativo and'
      '      Agenda_mail.Tipo='#39'A'#39
      'order by DataIni,Nome')
    Left = 898
    Top = 5
    object dbMailAdmDataIni: TDateTimeField
      FieldName = 'DataIni'
      Origin = 'Agenda_mail.DataIni'
    end
    object dbMailAdmTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Agenda_mail.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbMailAdmAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda_mail.Auditor'
    end
    object dbMailAdmDataEnvio: TDateTimeField
      FieldName = 'DataEnvio'
      Origin = 'Agenda_mail.DataEnvio'
    end
    object dbMailAdmEnviado: TBooleanField
      FieldName = 'Enviado'
      Origin = 'Agenda_mail.Enviado'
      OnGetText = dbMailAdmEnviadoGetText
      OnSetText = dbMailAdmEnviadoSetText
    end
    object dbMailAdmQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'Agenda_mail.Qtd'
    end
    object dbMailAdmAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Administrativos.Administrativo'
    end
    object dbMailAdmNome: TStringField
      FieldName = 'Nome'
      Origin = 'Administrativos.Nome'
      FixedChar = True
      Size = 60
    end
    object dbMailAdmFone: TStringField
      FieldName = 'Fone'
      Origin = 'Administrativos.Fone'
      FixedChar = True
      Size = 60
    end
    object dbMailAdmFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'Administrativos.Fone1'
      FixedChar = True
      Size = 60
    end
    object dbMailAdmFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'Administrativos.Fone2'
      FixedChar = True
      Size = 60
    end
    object dbMailAdmemail: TStringField
      FieldName = 'email'
      Origin = 'Administrativos.email'
      Size = 50
    end
    object dbMailAdmNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'Administrativos.Nascimento'
    end
    object dbMailAdmCPF: TStringField
      FieldName = 'CPF'
      Origin = 'Administrativos.CPF'
      FixedChar = True
      Size = 18
    end
    object dbMailAdmDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Administrativos.DataInclusao'
    end
    object dbMailAdmUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Administrativos.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbMailAdmDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Administrativos.DataInicio'
    end
    object dbMailAdmDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Administrativos.DataFim'
    end
  end
  object dsMailAdm: TDataSource
    DataSet = dbMailAdm
    Left = 931
    Top = 5
  end
  object dbAgendaMed: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda, Hospital'
      'where Agenda.Hospital=Hospital.Hospital '
      'order by Data,Hospital.Nome,Cliente')
    MasterSource = dsMailMed
    MasterFields = 'Auditor'
    DetailFields = 'Auditor'
    Left = 771
    Top = 34
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Auditor'
        ParamType = ptInput
        Value = 144
      end>
    object dbAgendaMedData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Agenda.Data'
    end
    object dbAgendaMedCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Agenda.Cliente'
    end
    object dbAgendaMedHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Agenda.Hospital'
    end
    object dbAgendaMedServico: TStringField
      FieldName = 'Servico'
      Origin = 'Agenda.Servico'
      FixedChar = True
      Size = 10
    end
    object dbAgendaMedAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda.Auditor'
    end
    object dbAgendaMedEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Agenda.Enfermeiro'
    end
    object dbAgendaMedAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Agenda.Administrativo'
    end
    object dbAgendaMedQtdContas: TIntegerField
      FieldName = 'QtdContas'
      Origin = 'Agenda.QtdContas'
    end
    object dbAgendaMedDataConta: TDateTimeField
      FieldName = 'DataConta'
      Origin = 'Agenda.DataConta'
    end
    object dbAgendaMedClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbAgendaMedNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object dbAgendaMedObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Agenda.Observacao'
      FixedChar = True
      Size = 50
    end
  end
  object dbAgendaEnf: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda, Hospital'
      'where Agenda.Hospital=Hospital.Hospital'
      'order by Data,Hospital.Nome,Cliente')
    Filtered = True
    OnFilterRecord = dbAgendaEnfFilterRecord
    DetailFields = 'Enfermeiro'
    Left = 833
    Top = 35
    object dbAgendaEnfData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Agenda.Data'
    end
    object dbAgendaEnfCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Agenda.Cliente'
    end
    object dbAgendaEnfHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Agenda.Hospital'
    end
    object dbAgendaEnfServico: TStringField
      FieldName = 'Servico'
      Origin = 'Agenda.Servico'
      FixedChar = True
      Size = 10
    end
    object dbAgendaEnfAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda.Auditor'
    end
    object dbAgendaEnfEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Agenda.Enfermeiro'
    end
    object dbAgendaEnfAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Agenda.Administrativo'
    end
    object dbAgendaEnfQtdContas: TIntegerField
      FieldName = 'QtdContas'
      Origin = 'Agenda.QtdContas'
    end
    object dbAgendaEnfDataConta: TDateTimeField
      FieldName = 'DataConta'
      Origin = 'Agenda.DataConta'
    end
    object dbAgendaEnfClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbAgendaEnfNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object dbAgendaEnfObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Agenda.Observacao'
      FixedChar = True
      Size = 50
    end
  end
  object dbAgendaAdm: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Agenda, Hospital'
      'where Agenda.Hospital=Hospital.Hospital'
      'order by Data,Hospital.Nome,Cliente')
    MasterSource = dsMailAdm
    MasterFields = 'Auditor'
    DetailFields = 'Administrativo'
    Left = 898
    Top = 35
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Auditor'
        ParamType = ptInput
        Value = 179
      end>
    object dbAgendaAdmData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Agenda.Data'
    end
    object dbAgendaAdmCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Agenda.Cliente'
    end
    object dbAgendaAdmHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'Agenda.Hospital'
    end
    object dbAgendaAdmServico: TStringField
      FieldName = 'Servico'
      Origin = 'Agenda.Servico'
      FixedChar = True
      Size = 10
    end
    object dbAgendaAdmAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'Agenda.Auditor'
    end
    object dbAgendaAdmEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'Agenda.Enfermeiro'
    end
    object dbAgendaAdmAdministrativo: TIntegerField
      FieldName = 'Administrativo'
      Origin = 'Agenda.Administrativo'
    end
    object dbAgendaAdmQtdContas: TIntegerField
      FieldName = 'QtdContas'
      Origin = 'Agenda.QtdContas'
    end
    object dbAgendaAdmDataConta: TDateTimeField
      FieldName = 'DataConta'
      Origin = 'Agenda.DataConta'
    end
    object dbAgendaAdmClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbAgendaAdmNome: TStringField
      FieldName = 'Nome'
      Origin = 'Hospital.Nome'
      FixedChar = True
      Size = 60
    end
    object dbAgendaAdmObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'Agenda.Observacao'
      FixedChar = True
      Size = 50
    end
  end
  object rvAgendaMed: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbAgendaMed
    Left = 802
    Top = 34
  end
  object rvAgendaEnf: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbAgendaEnf
    Left = 866
    Top = 34
  end
  object rvAgendaAdm: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbAgendaAdm
    Left = 930
    Top = 34
  end
end
