object FormMenuPrincipal: TFormMenuPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Menu Principal'
  ClientHeight = 490
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuTop
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenuLateral: TPanel
    Left = 672
    Top = 0
    Width = 64
    Height = 471
    Align = alRight
    TabOrder = 0
  end
  object pnlBotonBaar: TPanel
    Left = 0
    Top = 471
    Width = 736
    Height = 19
    Margins.Top = 0
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 432
    ExplicitWidth = 720
    object lblEmpresa: TLabel
      AlignWithMargins = True
      Left = 184
      Top = 1
      Width = 72
      Height = 17
      Margins.Left = 30
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taCenter
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 18
    end
    object lblUsuario: TLabel
      AlignWithMargins = True
      Left = 286
      Top = 1
      Width = 72
      Height = 17
      Margins.Left = 30
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taCenter
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 18
    end
    object lblData: TLabel
      AlignWithMargins = True
      Left = 544
      Top = 1
      Width = 171
      Height = 17
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alRight
      Alignment = taRightJustify
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 150
      Height = 17
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 4
      ExplicitHeight = 14
    end
  end
  object dbeImgPlanoFundo: TDBImage
    Left = 0
    Top = 0
    Width = 672
    Height = 471
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 320
    ExplicitTop = 192
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object MenuTop: TMainMenu
    Left = 688
    Top = 96
  end
  object actList: TActionList
    Left = 688
    Top = 152
  end
end
