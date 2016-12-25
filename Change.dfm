object Form2: TForm2
  Left = 575
  Top = 161
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 424
  ClientWidth = 175
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = Closing
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 133
    Top = 8
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object Label7: TLabel
    Left = 66
    Top = 56
    Width = 101
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label8: TLabel
    Left = 73
    Top = 104
    Width = 94
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label9: TLabel
    Left = 82
    Top = 152
    Width = 85
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label10: TLabel
    Left = 89
    Top = 200
    Width = 78
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label11: TLabel
    Left = 69
    Top = 248
    Width = 98
    Height = 13
    Caption = #1058#1086#1095#1082#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label12: TLabel
    Left = 85
    Top = 296
    Width = 82
    Height = 13
    Caption = #1058#1086#1095#1082#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label13: TLabel
    Left = 148
    Top = 344
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  object Button3: TButton
    Left = 8
    Top = 392
    Width = 161
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 0
    OnClick = Button3Click
  end
  object meNomber: TMaskEdit
    Left = 6
    Top = 24
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object mePlaceEnd: TMaskEdit
    Left = 6
    Top = 320
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object mePlaceStart: TMaskEdit
    Left = 6
    Top = 272
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object dtpDateEnd: TDateTimePicker
    Left = 6
    Top = 224
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8633732407
    Time = 42728.8633732407
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object dtpTimeEnd: TDateTimePicker
    Left = 6
    Top = 176
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8635336574
    Time = 42728.8635336574
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 5
  end
  object dtpDateStart: TDateTimePicker
    Left = 6
    Top = 120
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8636251273
    Time = 42728.8636251273
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 6
  end
  object dtpTimeStart: TDateTimePicker
    Left = 6
    Top = 72
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8637242708
    Time = 42728.8637242708
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 7
  end
  object cbeType: TComboBoxEx
    Left = 6
    Top = 360
    Width = 161
    Height = 22
    Hint = #1058#1080#1087
    ItemsEx.CaseSensitive = False
    ItemsEx.SortType = stNone
    ItemsEx = <
      item
        Caption = #1043#1088#1091#1079#1086#1074#1086#1081
      end
      item
        Caption = #1055#1072#1089#1089#1072#1078#1080#1088#1089#1082#1080#1081
      end
      item
        Caption = #1057#1082#1086#1088#1099#1081
      end>
    StyleEx = []
    ItemHeight = 16
    TabOrder = 8
    Text = #1057#1082#1086#1088#1099#1081
    DropDownCount = 8
  end
end
