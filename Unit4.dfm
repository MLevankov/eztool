object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 90
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 0
    Width = 288
    Height = 32
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1084#1086#1097#1085#1086#1089#1090#1080' '#1055#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 312
    Top = 38
    Width = 14
    Height = 32
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 40
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 384
    Top = 40
  end
  object Timer3: TTimer
    Interval = 5000
    OnTimer = Timer3Timer
    Left = 424
    Top = 40
  end
  object Timer4: TTimer
    Interval = 5000
    OnTimer = Timer4Timer
    Left = 464
    Top = 40
  end
  object Timer5: TTimer
    Interval = 5000
    OnTimer = Timer5Timer
    Left = 496
    Top = 40
  end
  object Timer6: TTimer
    Interval = 5000
    OnTimer = Timer6Timer
    Left = 536
    Top = 40
  end
  object Timer7: TTimer
    Interval = 5000
    OnTimer = Timer7Timer
    Left = 576
    Top = 40
  end
  object Timer8: TTimer
    OnTimer = Timer8Timer
    Left = 8
    Top = 48
  end
end