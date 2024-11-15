object Form9: TForm9
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 131
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 425
    Height = 15
    Caption = 
      #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099', '#1087#1072#1087#1082#1080', '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1080#1083#1080' '#1088#1077#1089#1091#1088#1089#1072' '#1048#1085#1090#1077#1088#1085#1077#1090#1072', '#1082 +
      #1086#1090#1086#1088#1099#1077
  end
  object Label2: TLabel
    Left = 8
    Top = 29
    Width = 105
    Height = 15
    Caption = #1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1086#1090#1082#1088#1099#1090#1100'.'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 50
    Height = 15
    Caption = #1054#1090#1082#1088#1099#1090#1100':'
  end
  object Edit1: TEdit
    Left = 64
    Top = 69
    Width = 416
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 98
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 321
    Top = 98
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 402
    Top = 98
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088'...'
    TabOrder = 3
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.*'
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Title = #1047#1072#1087#1091#1089#1082' '#1087#1088#1086#1094#1077#1089#1089#1072
    Left = 456
  end
end
