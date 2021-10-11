object Categorie: TCategorie
  Left = 857
  Top = 464
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[ Categorie ] Stockeur'
  ClientHeight = 364
  ClientWidth = 467
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '[ Categorie Stockeur ]'
    Color = 33023
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 323
    Width = 467
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = '[ Stockeur Code Source ]'
    Color = 33023
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 47
    Width = 161
    Height = 270
    Caption = '  Liste des Categories  '
    TabOrder = 2
    object CatList: TListBox
      Left = 16
      Top = 24
      Width = 129
      Height = 225
      Cursor = crHandPoint
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 184
    Top = 47
    Width = 273
    Height = 50
    Caption = '  Nom de la Categorie  '
    TabOrder = 3
    object IndCarac: TLabel
      Left = 216
      Top = 22
      Width = 34
      Height = 13
      Caption = '[ 0/20]'
    end
    object CatNom: TEdit
      Left = 16
      Top = 19
      Width = 193
      Height = 21
      TabOrder = 0
      OnChange = CatNomChange
    end
  end
  object BtValider: TButton
    Left = 184
    Top = 112
    Width = 145
    Height = 20
    Cursor = crHandPoint
    Caption = 'Valider la Categorie'
    Default = True
    TabOrder = 4
    OnClick = BtValiderClick
  end
  object BtMenu: TButton
    Left = 382
    Top = 112
    Width = 75
    Height = 20
    Cursor = crHandPoint
    Caption = '< Menu >'
    TabOrder = 5
    OnClick = BtMenuClick
  end
end
