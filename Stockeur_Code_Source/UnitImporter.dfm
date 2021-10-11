object Importer: TImporter
  Left = 545
  Top = 230
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[ Importer un Code Source ] Stockeur'
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
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '[ Importer un Code Source a la Base de Donnees ]'
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
    Width = 649
    Height = 456
    Caption = '  Zone de Code  '
    TabOrder = 2
    object Code: TRichEdit
      Left = 16
      Top = 24
      Width = 617
      Height = 417
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object Box2: TGroupBox
    Left = 663
    Top = 47
    Width = 296
    Height = 456
    Caption = '  Importer le Code Source  '
    TabOrder = 3
    object Box3: TGroupBox
      Left = 19
      Top = 32
      Width = 257
      Height = 50
      Caption = '  Nom du Code Source  '
      TabOrder = 0
      object IndCarac: TLabel
        Left = 208
        Top = 22
        Width = 34
        Height = 13
        Caption = '[ 0/30]'
      end
      object CodeNom: TEdit
        Left = 16
        Top = 19
        Width = 185
        Height = 21
        AutoSelect = False
        AutoSize = False
        TabOrder = 0
        Text = 'CodeNom'
        OnChange = CodeNomChange
      end
    end
    object Box4: TGroupBox
      Left = 19
      Top = 88
      Width = 161
      Height = 50
      Caption = '  N'#176' Index  '
      Enabled = False
      TabOrder = 1
      object CodeIndex: TEdit
        Left = 16
        Top = 19
        Width = 129
        Height = 21
        AutoSelect = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0'
      end
    end
    object Box5: TGroupBox
      Left = 19
      Top = 144
      Width = 161
      Height = 50
      Caption = '  Categorie  '
      TabOrder = 2
      object CodeCat: TEdit
        Left = 16
        Top = 19
        Width = 129
        Height = 21
        TabOrder = 0
        Text = 'Aucune Categorie'
      end
    end
    object Box6: TGroupBox
      Left = 19
      Top = 200
      Width = 161
      Height = 193
      Caption = '  Liste des Categorie  '
      TabOrder = 3
      object CodeList: TListBox
        Left = 16
        Top = 24
        Width = 129
        Height = 145
        Cursor = crHandPoint
        ItemHeight = 13
        TabOrder = 0
        OnDblClick = CodeListDblClick
      end
      object CheckCat: TCheckBox
        Left = 16
        Top = 171
        Width = 129
        Height = 17
        Cursor = crHandPoint
        Caption = 'Creer une Categorie'
        TabOrder = 1
        OnClick = CheckCatClick
      end
    end
    object Box7: TGroupBox
      Left = 19
      Top = 408
      Width = 257
      Height = 33
      TabOrder = 4
      object BtValide: TButton
        Left = 19
        Top = 6
        Width = 129
        Height = 20
        Cursor = crHandPoint
        Caption = 'Valider le Code Source'
        Default = True
        TabOrder = 0
        OnClick = BtValideClick
      end
      object BtMenu: TButton
        Left = 163
        Top = 6
        Width = 75
        Height = 20
        Cursor = crHandPoint
        Caption = '< Menu >'
        TabOrder = 1
        OnClick = BtMenuClick
      end
    end
  end
  object DataSource: TDataSource
    DataSet = ADOTable
    Left = 56
    Top = 128
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base Stockeur.mdb;P' +
      'ersist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 80
  end
  object ADOTable: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'Index'
    TableName = 'Stockeur'
    Left = 56
    Top = 184
  end
end
