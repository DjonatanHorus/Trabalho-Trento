object FormMenuPrincipal: TFormMenuPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Menu Principal'
  ClientHeight = 858
  ClientWidth = 1304
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
    Left = 1224
    Top = 0
    Width = 80
    Height = 833
    Align = alRight
    TabOrder = 0
    ExplicitHeight = 839
  end
  object pnlBotonBaar: TPanel
    Left = 0
    Top = 833
    Width = 1304
    Height = 25
    Margins.Top = 0
    Align = alBottom
    TabOrder = 1
    object lblEmpresa: TLabel
      AlignWithMargins = True
      Left = 184
      Top = 1
      Width = 72
      Height = 23
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
      Height = 23
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
      Left = 1241
      Top = 1
      Width = 42
      Height = 23
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alRight
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 673
      ExplicitHeight = 18
    end
    object ProgressBar1: TProgressBar
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 150
      Height = 23
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 17
    end
  end
  object dbeImgPlanoFundo: TDBImage
    Left = 0
    Top = 0
    Width = 1224
    Height = 833
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 801
  end
  object MenuTop: TMainMenu
    Left = 688
    Top = 216
    object CADASTROS1: TMenuItem
      Caption = 'CADASTROS'
    end
    object RELATRIOS1: TMenuItem
      Caption = 'RELAT'#211'RIOS'
    end
    object CNFIGURAES1: TMenuItem
      Caption = 'CONFIGURA'#199#213'ES'
    end
  end
  object actList: TActionList
    Left = 688
    Top = 152
  end
end
