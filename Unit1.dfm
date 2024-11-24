object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 290
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 0
    Width = 79
    Height = 32
    Caption = 'EZTool'
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
    Width = 217
    Height = 57
    Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 8
    Top = 101
    Width = 217
    Height = 57
    Caption = #1047#1072#1087#1091#1089#1082' '#1089#1090#1086#1088#1086#1085#1085#1080#1093' '#1087#1088#1086#1075#1088#1072#1084#1084
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 143
    Top = 227
    Width = 217
    Height = 57
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 271
    Top = 101
    Width = 217
    Height = 57
    Caption = #1040#1074#1090#1086#1079#1072#1087#1091#1089#1082' '#1087#1088#1086#1075#1088#1072#1084#1084
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button6: TButton
    Left = 271
    Top = 38
    Width = 217
    Height = 57
    Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088' '#1079#1072#1076#1072#1095
    TabOrder = 4
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 164
    Width = 217
    Height = 57
    Caption = #1057#1084#1077#1085#1072' '#1086#1073#1086#1077#1074
    TabOrder = 5
    OnClick = Button7Click
  end
  object Button4: TButton
    Left = 271
    Top = 164
    Width = 217
    Height = 57
    Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1072#1085#1077#1083#1100#1102' '#1079#1072#1076#1072#1095
    TabOrder = 6
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'png'
    Filter = 'png '#1092#1072#1081#1083'|*.png|jpg '#1092#1072#1081#1083'|*.jpg|bmp '#1092#1072#1081#1083'|*.bmp'
    Title = #1057#1084#1077#1085#1072' '#1086#1073#1086#1077#1074
  end
end
