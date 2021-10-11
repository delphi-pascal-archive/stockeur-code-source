object Lecture: TLecture
  Left = 282
  Top = 197
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[ Lecture de la Base de Donnees ] Stockeur'
  ClientHeight = 550
  ClientWidth = 967
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '[ Lecture de la Base de Donnees ]'
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
    Top = 509
    Width = 967
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
    Width = 497
    Height = 456
    Caption = '  Zone de Code  '
    TabOrder = 2
    object BDCode: TDBRichEdit
      Left = 18
      Top = 24
      Width = 462
      Height = 409
      DataField = 'Code'
      DataSource = Importer.DataSource
      Enabled = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object CheckActive: TCheckBox
      Left = 18
      Top = 435
      Width = 159
      Height = 17
      Cursor = crHandPoint
      Caption = 'Debloquer la Zone de Code'
      TabOrder = 1
      OnClick = CheckActiveClick
    end
  end
  object Box2: TGroupBox
    Left = 511
    Top = 47
    Width = 448
    Height = 266
    Caption = '  Liste des Codes Source  '
    TabOrder = 3
    object ListCodeSource: TDBGrid
      Left = 17
      Top = 24
      Width = 414
      Height = 201
      Cursor = crHandPoint
      DataSource = Importer.DataSource
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Index'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Categorie'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DBNavigator: TDBNavigator
      Left = 112
      Top = 235
      Width = 224
      Height = 18
      Cursor = crHandPoint
      DataSource = Importer.DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
  end
  object Box3: TGroupBox
    Left = 511
    Top = 319
    Width = 448
    Height = 184
    Caption = '  Rechercher un Code Source  '
    TabOrder = 4
    object RBTrecherNom: TRadioButton
      Left = 24
      Top = 32
      Width = 137
      Height = 17
      Cursor = crHandPoint
      Caption = 'Rechercher par Nom'
      TabOrder = 0
    end
    object RBTrecherCat: TRadioButton
      Left = 24
      Top = 64
      Width = 153
      Height = 17
      Cursor = crHandPoint
      Caption = 'Rechercher par Categorie'
      TabOrder = 1
    end
    object EditRechercher: TEdit
      Left = 88
      Top = 112
      Width = 273
      Height = 21
      AutoSelect = False
      AutoSize = False
      TabOrder = 2
      Text = '???'
    end
    object BtRecher: TButton
      Left = 160
      Top = 139
      Width = 129
      Height = 20
      Cursor = crHandPoint
      Caption = 'Rechercher'
      Default = True
      TabOrder = 3
      OnClick = BtRecherClick
    end
  end
end
