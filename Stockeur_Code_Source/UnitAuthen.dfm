object Authen: TAuthen
  Left = 266
  Top = 113
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[ Authentification ] Stockeur'
  ClientHeight = 330
  ClientWidth = 633
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
    Width = 633
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '[ Authentification Stockeur ]'
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
    Top = 289
    Width = 633
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
    Top = 48
    Width = 257
    Height = 122
    Caption = '  Authentification  '
    TabOrder = 2
    object Label1: TLabel
      Left = 45
      Top = 32
      Width = 60
      Height = 13
      Caption = 'Identifiant :'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 81
      Height = 13
      Caption = 'Mots de Passe :'
    end
    object ID: TEdit
      Left = 111
      Top = 29
      Width = 121
      Height = 21
      AutoSelect = False
      AutoSize = False
      TabOrder = 0
      Text = 'ID'
    end
    object PASS: TEdit
      Left = 111
      Top = 61
      Width = 121
      Height = 21
      AutoSelect = False
      AutoSize = False
      PasswordChar = '*'
      TabOrder = 1
      Text = 'PASS'
    end
    object BtConnec: TButton
      Left = 24
      Top = 92
      Width = 75
      Height = 20
      Cursor = crHandPoint
      Caption = 'Connection'
      Default = True
      TabOrder = 2
      OnClick = BtConnecClick
    end
    object BtQuitter: TButton
      Left = 157
      Top = 92
      Width = 75
      Height = 20
      Cursor = crHandPoint
      Caption = 'Quitter'
      TabOrder = 3
    end
  end
  object Box2: TGroupBox
    Left = 271
    Top = 48
    Width = 354
    Height = 122
    Caption = '  Controle Stockeur  '
    TabOrder = 3
    object ControlBD: TLabel
      Left = 24
      Top = 32
      Width = 65
      Height = 13
      Caption = '[                   ]'
    end
    object ControlFC: TLabel
      Left = 24
      Top = 64
      Width = 65
      Height = 13
      Caption = '[                   ]'
    end
    object ControlAuthen: TLabel
      Left = 24
      Top = 96
      Width = 65
      Height = 13
      Caption = '[                   ]'
    end
  end
  object Box3: TGroupBox
    Left = 8
    Top = 176
    Width = 617
    Height = 105
    Caption = '  Etat de Connection  '
    TabOrder = 4
    object Char: TLabel
      Left = 568
      Top = 25
      Width = 30
      Height = 13
      Caption = '[ 0% ]'
    end
    object EtatConnection: TLabel
      Left = 16
      Top = 47
      Width = 35
      Height = 13
      Caption = '[         ]'
    end
    object EtatGeneral: TLabel
      Left = 16
      Top = 80
      Width = 35
      Height = 13
      Caption = '[         ]'
    end
    object Progress: TProgressBar
      Left = 16
      Top = 24
      Width = 546
      Height = 17
      TabOrder = 0
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerTimer
    Left = 584
    Top = 64
  end
end
