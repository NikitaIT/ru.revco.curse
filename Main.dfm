object Form1: TForm1
  Left = 79
  Top = 158
  BorderStyle = bsSingle
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1087#1086#1077#1079#1076#1086#1074
  ClientHeight = 436
  ClientWidth = 1229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmTopMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 264
    Width = 353
    Height = 17
    AutoSize = False
    Caption = #1056#1072#1089#1095#1105#1090' '#1089#1088#1077#1076#1085#1077#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1074' '#1087#1091#1090#1080' '#1089' '#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077#1084' '#1087#1086' '#1090#1080#1087#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 152
    Top = 352
    Width = 58
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090': '
  end
  object Label3: TLabel
    Left = 672
    Top = 264
    Width = 361
    Height = 17
    AutoSize = False
    Caption = #1056#1072#1089#1095#1105#1090' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1086#1089#1090#1080' '#1089#1090#1072#1085#1094#1080#1081' '#1087#1086' '#1090#1080#1087#1091' '#1087#1086#1077#1079#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 672
    Top = 376
    Width = 55
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
  end
  object Label5: TLabel
    Left = 1056
    Top = 0
    Width = 165
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1077#1079#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 1056
    Top = 16
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object Label7: TLabel
    Left = 1056
    Top = 64
    Width = 101
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label8: TLabel
    Left = 1056
    Top = 112
    Width = 94
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label9: TLabel
    Left = 1056
    Top = 160
    Width = 85
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label10: TLabel
    Left = 1056
    Top = 208
    Width = 78
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label11: TLabel
    Left = 1056
    Top = 256
    Width = 98
    Height = 13
    Caption = #1058#1086#1095#1082#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label12: TLabel
    Left = 1056
    Top = 304
    Width = 82
    Height = 13
    Caption = #1058#1086#1095#1082#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label13: TLabel
    Left = 1056
    Top = 352
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  object lvTrains: TListView
    Left = 0
    Top = 0
    Width = 1049
    Height = 249
    Columns = <
      item
        Caption = #1053#1086#1084#1077#1088' '#1087#1086#1077#1079#1076#1072
        Width = 120
      end
      item
        Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Width = 150
      end
      item
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Width = 140
      end
      item
        Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1073#1099#1090#1080#1103
        Width = 120
      end
      item
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
        Width = 120
      end
      item
        Caption = #1058#1086#1095#1082#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Width = 150
      end
      item
        Caption = #1058#1086#1095#1082#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
        Width = 120
      end
      item
        Caption = #1058#1080#1087
        Width = 120
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = lvTrainsColumnClick
    OnCompare = lvTrainsCompare
    OnSelectItem = Selection
  end
  object btnMiddleTime: TButton
    Left = 152
    Top = 288
    Width = 137
    Height = 33
    Caption = #1056#1072#1089#1095#1105#1090
    TabOrder = 1
    OnClick = btnMiddleTimeClick
  end
  object btnLoadingByType: TButton
    Left = 672
    Top = 336
    Width = 137
    Height = 33
    Caption = #1056#1072#1089#1095#1105#1090
    TabOrder = 2
    OnClick = btnLoadingByTypeClick
  end
  object eLoadingByType: TEdit
    Left = 672
    Top = 400
    Width = 137
    Height = 21
    TabOrder = 3
  end
  object cGraph: TChart
    Left = 352
    Top = 256
    Width = 313
    Height = 169
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.AdjustFrame = False
    Title.Brush.Color = clWhite
    Title.Brush.Style = bsClear
    Title.Font.Charset = RUSSIAN_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -12
    Title.Font.Name = 'MS Sans Serif'
    Title.Font.Style = [fsBold, fsUnderline]
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1086#1089#1090#1080' '#1089#1090#1072#1085#1094#1080#1081)
    BottomAxis.Visible = False
    Legend.Visible = False
    BevelOuter = bvNone
    TabOrder = 4
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series2: TGanttSeries
      ColorEachPoint = True
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'Start'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      StartValues.DateTime = True
      StartValues.Name = 'Start'
      StartValues.Multiplier = 1
      StartValues.Order = loAscending
      EndValues.DateTime = True
      EndValues.Name = 'End'
      EndValues.Multiplier = 1
      EndValues.Order = loNone
      NextTask.DateTime = False
      NextTask.Name = 'NextTask'
      NextTask.Multiplier = 1
      NextTask.Order = loNone
    end
  end
  object btnAdd: TButton
    Left = 1056
    Top = 400
    Width = 161
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1073#1072#1079#1091
    TabOrder = 5
    OnClick = btnAddClick
  end
  object lbMiddleTime: TListBox
    Left = 16
    Top = 288
    Width = 129
    Height = 105
    ItemHeight = 13
    TabOrder = 6
    OnClick = lbMiddleTimeClick
  end
  object btnGraph: TButton
    Left = 216
    Top = 392
    Width = 137
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
    Enabled = False
    TabOrder = 7
    OnClick = btnGraphClick
  end
  object eMiddleTime: TEdit
    Left = 152
    Top = 368
    Width = 137
    Height = 21
    TabOrder = 8
  end
  object kvleLoadingByType: TValueListEditor
    Left = 824
    Top = 288
    Width = 209
    Height = 137
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goColSizing, goEditing, goRowSelect, goThumbTracking]
    TabOrder = 9
    TitleCaptions.Strings = (
      #1057#1090#1072#1085#1094#1080#1103
      #1047#1072#1075#1088#1091#1078#1077#1085#1085#1086#1089#1090#1100)
    ColWidths = (
      98
      105)
  end
  object meNomber: TMaskEdit
    Left = 1056
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 10
  end
  object mePlaceEnd: TMaskEdit
    Left = 1056
    Top = 328
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object mePlaceStart: TMaskEdit
    Left = 1056
    Top = 280
    Width = 161
    Height = 21
    TabOrder = 12
  end
  object dtpDateEnd: TDateTimePicker
    Left = 1056
    Top = 232
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8633732407
    Time = 42728.8633732407
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 13
  end
  object dtpTimeEnd: TDateTimePicker
    Left = 1056
    Top = 184
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8635336574
    Time = 42728.8635336574
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 14
  end
  object dtpDateStart: TDateTimePicker
    Left = 1056
    Top = 128
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8636251273
    Time = 42728.8636251273
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 15
  end
  object dtpTimeStart: TDateTimePicker
    Left = 1056
    Top = 80
    Width = 161
    Height = 21
    CalAlignment = dtaLeft
    Date = 42728.8637242708
    Time = 42728.8637242708
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 16
  end
  object cbeType: TComboBoxEx
    Left = 1056
    Top = 368
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
    TabOrder = 17
    Text = #1057#1082#1086#1088#1099#1081
    DropDownCount = 8
  end
  object cbeLoadingByType: TComboBoxEx
    Left = 672
    Top = 296
    Width = 137
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
    TabOrder = 18
    Text = #1057#1082#1086#1088#1099#1081
    DropDownCount = 8
  end
  object cbeMiddleTime: TComboBoxEx
    Left = 152
    Top = 328
    Width = 137
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
      end
      item
        Caption = #1042#1089#1077
      end>
    StyleEx = []
    ItemHeight = 16
    TabOrder = 19
    Text = #1057#1082#1086#1088#1099#1081
    DropDownCount = 8
  end
  object meSearch: TMaskEdit
    Left = 16
    Top = 408
    Width = 129
    Height = 21
    TabOrder = 20
    OnKeyPress = meSearchKeyPress
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 392
    Width = 36
    Height = 17
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 21
  end
  object mmTopMenu: TMainMenu
    Left = 8
    Top = 216
    object miFileView: TMenuItem
      Caption = #1060#1072#1081#1083
      object miOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1087#1080#1072#1089#1085#1080#1077
        OnClick = miOpenClick
      end
      object miSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
        OnClick = miSaveClick
      end
      object miClose: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = miCloseClick
      end
    end
    object miEditView: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      object miEdit: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Enabled = False
        OnClick = miEditClick
      end
      object miDelete: TMenuItem
        Caption = #1059#1073#1088#1072#1090#1100' '#1087#1086#1077#1079#1076' '#1080#1079' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
        Enabled = False
        OnClick = miDeleteClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 72
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    Left = 40
    Top = 216
  end
end
