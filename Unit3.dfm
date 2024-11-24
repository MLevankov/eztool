object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 171
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 120
    Top = 0
    Width = 340
    Height = 32
    Caption = #1047#1072#1087#1091#1089#1082' '#1089#1090#1086#1088#1086#1085#1085#1080#1093' '#1087#1088#1086#1075#1088#1072#1084#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 48
    Width = 121
    Height = 17
    Caption = 'Process Explorer'
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 71
    Width = 81
    Height = 17
    Caption = 'Autoruns'
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 8
    Top = 94
    Width = 81
    Height = 17
    Caption = 'Dism++'
    TabOrder = 2
  end
  object RadioButton4: TRadioButton
    Left = 8
    Top = 117
    Width = 73
    Height = 17
    Caption = 'WinRAR'
    TabOrder = 3
  end
  object RadioButton5: TRadioButton
    Left = 8
    Top = 140
    Width = 49
    Height = 17
    Caption = '7-Zip'
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 136
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1082
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = '?'
      object N6: TMenuItem
        Caption = #1057#1072#1081#1090' '#1072#1074#1090#1086#1088#1072
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N8Click
      end
    end
  end
end
