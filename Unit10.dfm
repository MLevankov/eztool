object Form10: TForm10
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 134
  ClientWidth = 532
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
    Left = 104
    Top = 0
    Width = 327
    Height = 32
    Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1072#1085#1077#1083#1100#1102' '#1079#1072#1076#1072#1095
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 38
    Width = 516
    Height = 25
    Caption = #1057#1082#1088#1099#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1079#1072#1076#1072#1095
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 69
    Width = 516
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1079#1072#1076#1072#1095
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 100
    Width = 516
    Height = 25
    Caption = #1055#1077#1088#1077#1079#1072#1087#1091#1089#1090#1080#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1079#1072#1076#1072#1095
    TabOrder = 2
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = '?'
      object N4: TMenuItem
        Caption = #1057#1072#1081#1090' '#1072#1074#1090#1086#1088#1072
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
end
