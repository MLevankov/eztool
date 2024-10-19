object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 504
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 136
    Top = 0
    Width = 344
    Height = 32
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 481
    Width = 228
    Height = 15
    Caption = #1057#1090#1072#1090#1091#1089': '#1086#1078#1080#1076#1072#1085#1080#1077' '#1076#1077#1081#1089#1090#1074#1080#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  end
  object ListBox1: TListBox
    Left = 8
    Top = 40
    Width = 608
    Height = 361
    ItemHeight = 15
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 407
    Width = 225
    Height = 17
    Caption = #1055#1086#1080#1089#1082' '#1080' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 8
    Top = 430
    Width = 608
    Height = 43
    Caption = #1055#1086#1080#1089#1082' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
    TabOrder = 2
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 592
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1056#1091#1095#1085#1072#1103' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
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
      object N8: TMenuItem
        Caption = #1057#1072#1081#1090' '#1072#1074#1090#1086#1088#1072
        OnClick = N8Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
end
