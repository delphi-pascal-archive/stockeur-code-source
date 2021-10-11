object MenuStock: TMenuStock
  Left = 342
  Top = 265
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[ Menu ] Stockeur'
  ClientHeight = 275
  ClientWidth = 524
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '[ Menu Stockeur ]'
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
    Top = 234
    Width = 524
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
  object Box1: TGroupBox
    Left = 8
    Top = 47
    Width = 508
    Height = 154
    Caption = '  Menu  '
    TabOrder = 2
    object RBTimporter: TRadioButton
      Left = 40
      Top = 32
      Width = 265
      Height = 17
      Cursor = crHandPoint
      Caption = 'Importer un Code Source a la Base de Donnees'
      TabOrder = 0
    end
    object RBTlecture: TRadioButton
      Left = 40
      Top = 72
      Width = 177
      Height = 17
      Cursor = crHandPoint
      Caption = 'Lecture de la Base de Donnees'
      TabOrder = 1
    end
    object RBTcategorie: TRadioButton
      Left = 40
      Top = 112
      Width = 177
      Height = 17
      Cursor = crHandPoint
      Caption = 'Categorie Code Source'
      TabOrder = 2
    end
  end
  object BtOk: TButton
    Left = 36
    Top = 207
    Width = 75
    Height = 20
    Cursor = crHandPoint
    Caption = 'Ok'
    Default = True
    TabOrder = 3
    OnClick = BtOkClick
  end
  object BtQuitter: TButton
    Left = 412
    Top = 207
    Width = 75
    Height = 20
    Cursor = crHandPoint
    Caption = 'Quitter'
    TabOrder = 4
    OnClick = BtQuitterClick
  end
end
