object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 388
  ClientWidth = 516
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
    Left = 128
    Top = 0
    Width = 263
    Height = 32
    Caption = #1040#1074#1090#1086#1079#1072#1087#1091#1089#1082' '#1087#1088#1086#1075#1088#1072#1084#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object ListView1: TListView
    Left = 8
    Top = 38
    Width = 500
    Height = 342
    Columns = <>
    PopupMenu = PopupMenu1
    TabOrder = 0
    ViewStyle = vsList
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
        OnClick = N2Click
      end
      object N9: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
        OnClick = N9Click
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
  object PopupMenu1: TPopupMenu
    Left = 488
    object N10: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N10Click
    end
    object N12: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      OnClick = N12Click
    end
    object N11: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
      OnClick = N11Click
    end
  end
end