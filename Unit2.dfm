object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 344
  ClientWidth = 518
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
    Left = 88
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
    Left = 24
    Top = 186
    Width = 240
    Height = 15
    Caption = #1086#1073#1088#1072#1090#1080#1090#1077#1089#1100' '#1082' '#1092#1091#1085#1082#1094#1080#1080' "'#1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1072#1085#1082#1086#1076#1099'")'
  end
  object Label3: TLabel
    Left = 200
    Top = 254
    Width = 109
    Height = 15
    Caption = #1058#1080#1087' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 48
    Width = 145
    Height = 17
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' CMD'
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 71
    Width = 209
    Height = 17
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1044#1080#1089#1087#1077#1090#1095#1077#1088' '#1079#1072#1076#1072#1095
    TabOrder = 1
  end
  object CheckBox3: TCheckBox
    Left = 8
    Top = 94
    Width = 209
    Height = 17
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1086#1082#1085#1086' '#1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 2
  end
  object CheckBox4: TCheckBox
    Left = 8
    Top = 117
    Width = 209
    Height = 17
    Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1076#1080#1089#1082#1080' '#1074' '#1055#1088#1086#1074#1086#1076#1085#1080#1082#1077
    TabOrder = 3
  end
  object CheckBox5: TCheckBox
    Left = 8
    Top = 140
    Width = 233
    Height = 17
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1055#1072#1085#1077#1083#1100' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
    TabOrder = 4
  end
  object CheckBox6: TCheckBox
    Left = 8
    Top = 163
    Width = 465
    Height = 17
    Caption = 
      #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1082#1085#1086#1087#1082#1091' Win ('#1077#1089#1083#1080' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090' '#1082#1085#1086#1087#1082#1072' '#1080' '#1075#1086#1088#1103#1095#1080#1077' '#1082#1083#1072#1074#1080#1096#1080' ' +
      #1089' '#1085#1077#1081' '#1090#1086
    TabOrder = 5
  end
  object CheckBox7: TCheckBox
    Left = 8
    Top = 208
    Width = 129
    Height = 17
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1072#1085#1082#1086#1076#1099
    TabOrder = 6
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 278
    Width = 233
    Height = 17
    Caption = #1041#1077#1079' '#1087#1077#1088#1077#1079#1072#1075#1088#1091#1079#1082#1080' ('#1085#1077' '#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1090#1089#1103')'
    Checked = True
    TabOrder = 7
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 299
    Top = 278
    Width = 209
    Height = 17
    Caption = #1057' '#1087#1077#1088#1077#1079#1072#1075#1088#1091#1079#1082#1086#1081' ('#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1090#1089#1103')'
    TabOrder = 8
  end
  object Button1: TButton
    Left = 8
    Top = 307
    Width = 500
    Height = 25
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103
    TabOrder = 9
    OnClick = Button1Click
  end
  object CheckBox8: TCheckBox
    Left = 8
    Top = 231
    Width = 209
    Height = 17
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1056#1077#1076#1072#1082#1090#1086#1088' '#1088#1077#1077#1089#1090#1088#1072
    TabOrder = 10
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 56
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N8: TMenuItem
        Caption = #1040#1074#1090#1086'. '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
        OnClick = N8Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
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
