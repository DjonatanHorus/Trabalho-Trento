object FormInicial: TFormInicial
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 174
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pgbProgress: TProgressBar
    Left = 0
    Top = 157
    Width = 797
    Height = 17
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 320
    ExplicitTop = 64
    ExplicitWidth = 150
  end
  object Time: TTimer
    Interval = 10
    OnTimer = TimeTimer
    Left = 736
    Top = 32
  end
end
