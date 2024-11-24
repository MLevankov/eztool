object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 434
  ClientWidth = 585
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
    Left = 192
    Top = 0
    Width = 201
    Height = 32
    Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088' '#1079#1072#1076#1072#1095
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
    Width = 569
    Height = 388
    Columns = <
      item
        AutoSize = True
        Caption = #1048#1084#1103' '#1087#1088#1086#1094#1077#1089#1089#1072
      end
      item
        AutoSize = True
        Caption = 'ID '#1087#1088#1086#1094#1077#1089#1089#1072
      end>
    PopupMenu = PopupMenu1
    TabOrder = 0
    ViewStyle = vsReport
  end
  object UpdateProcessList: TTimer
    OnTimer = UpdateProcessListTimer
  end
  object MainMenu1: TMainMenu
    Left = 32
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N17: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1086#1094#1077#1089#1089
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1088#1086#1094#1077#1089#1089#1086#1074
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1087#1088#1086#1094#1077#1089#1089#1086#1074
        object N4: TMenuItem
          Caption = #1052#1077#1076#1083#1077#1085#1085#1086
          OnClick = N4Click
        end
        object N5: TMenuItem
          Caption = #1057#1088#1077#1076#1085#1077
          OnClick = N5Click
        end
        object N6: TMenuItem
          Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1086
          OnClick = N6Click
        end
        object N7: TMenuItem
          Caption = #1041#1099#1089#1090#1088#1086
          OnClick = N7Click
        end
        object N8: TMenuItem
          Caption = #1054#1095#1077#1085#1100' '#1073#1099#1089#1090#1088#1086
          OnClick = N8Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N11: TMenuItem
      Caption = '?'
      object N12: TMenuItem
        Caption = #1057#1072#1081#1090' '#1072#1074#1090#1086#1088#1072
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N14Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    object N20: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1088#1086#1094#1077#1089#1089#1086#1074
      OnClick = N20Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N16: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N16Click
    end
  end
end
