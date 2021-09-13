object Form1: TForm1
  Left = 205
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1077#1093#1072#1085#1080#1095#1077#1089#1082#1080#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1101#1083'. '#1076#1074#1080#1075#1072#1090#1077#1083#1077#1081', '#1088#1072#1073#1086#1095#1080#1093' '#1084#1072#1096#1080#1085
  ClientHeight = 360
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel
    Left = 120
    Top = 180
    Width = 270
    Height = 13
    Alignment = taCenter
    Caption = #1044#1072#1085#1085#1099#1077' '#1085#1072#1075#1088#1091#1079#1082#1080' '#1085#1072' '#1074#1072#1083#1091' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1075#1086' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
  end
  object GroupBox2: TGroupBox
    Left = 265
    Top = 3
    Width = 246
    Height = 118
    Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1088#1072#1073#1086#1095#1077#1081' '#1084#1072#1096#1080#1085#1099
    TabOrder = 1
    object Label15: TLabel
      Left = 9
      Top = 45
      Width = 32
      Height = 13
      Caption = 'M'#1084'o ='
    end
    object Label12: TLabel
      Left = 13
      Top = 19
      Width = 29
      Height = 13
      Caption = 'n'#1084#1085' ='
    end
    object Label13: TLabel
      Left = 162
      Top = 19
      Width = 14
      Height = 13
      Caption = 'x ='
    end
    object Label14: TLabel
      Left = 144
      Top = 44
      Width = 33
      Height = 13
      Caption = 'n'#1087#1077#1088' ='
    end
    object Label16: TLabel
      Left = 10
      Top = 69
      Width = 32
      Height = 13
      Caption = #1052#1084#1085' ='
    end
    object Label17: TLabel
      Left = 135
      Top = 69
      Width = 43
      Height = 13
      Caption = 'delta U ='
    end
    object Label18: TLabel
      Left = 93
      Top = 19
      Width = 37
      Height = 13
      Caption = #1086#1073'/'#1084#1080#1085
    end
    object Label19: TLabel
      Left = 93
      Top = 44
      Width = 22
      Height = 13
      Caption = #1053'.'#1084'.'
    end
    object Label20: TLabel
      Left = 93
      Top = 69
      Width = 22
      Height = 13
      Caption = #1053'.'#1084'.'
    end
    object Label21: TLabel
      Left = 228
      Top = 69
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label28: TLabel
      Left = 7
      Top = 94
      Width = 34
      Height = 13
      Caption = 'J'#1088'.'#1084'. ='
    end
    object Label29: TLabel
      Left = 93
      Top = 94
      Width = 28
      Height = 13
      Caption = #1082#1075' '#1084'2'
    end
    object Edit15: TEdit
      Left = 45
      Top = 40
      Width = 45
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit15KeyPress
    end
    object Edit12: TEdit
      Left = 45
      Top = 15
      Width = 45
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit12KeyPress
    end
    object Edit13: TEdit
      Left = 180
      Top = 15
      Width = 45
      Height = 21
      TabOrder = 4
      OnKeyPress = Edit13KeyPress
    end
    object Edit14: TEdit
      Left = 180
      Top = 40
      Width = 45
      Height = 21
      TabOrder = 5
      OnKeyPress = Edit14KeyPress
    end
    object Edit16: TEdit
      Left = 45
      Top = 65
      Width = 45
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit16KeyPress
    end
    object Edit17: TEdit
      Left = 180
      Top = 65
      Width = 45
      Height = 21
      TabOrder = 6
      OnKeyPress = Edit17KeyPress
    end
    object Edit18: TEdit
      Left = 45
      Top = 90
      Width = 45
      Height = 21
      TabOrder = 3
      OnKeyPress = Edit18KeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 3
    Width = 249
    Height = 169
    Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1101#1083'. '#1076#1074#1080#1075#1072#1090#1077#1083#1103
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 20
      Width = 22
      Height = 13
      Caption = 'Pn ='
    end
    object Label2: TLabel
      Left = 13
      Top = 45
      Width = 24
      Height = 13
      Caption = ' n'#1085' ='
    end
    object Label3: TLabel
      Left = 19
      Top = 95
      Width = 18
      Height = 13
      Caption = 'I'#1085' ='
    end
    object Label4: TLabel
      Left = 4
      Top = 120
      Width = 33
      Height = 13
      Caption = #1050#1055#1044' ='
    end
    object Label5: TLabel
      Left = 153
      Top = 120
      Width = 33
      Height = 13
      Caption = 'cosY ='
    end
    object Label6: TLabel
      Left = 152
      Top = 20
      Width = 34
      Height = 13
      Caption = 'M*'#1087'   ='
    end
    object Label7: TLabel
      Left = 153
      Top = 45
      Width = 33
      Height = 13
      Caption = 'M*'#1084'  ='
    end
    object Label8: TLabel
      Left = 158
      Top = 70
      Width = 28
      Height = 13
      Caption = 'M*'#1082' ='
    end
    object Label9: TLabel
      Left = 165
      Top = 95
      Width = 21
      Height = 13
      Caption = ' Ki ='
    end
    object Label10: TLabel
      Left = 13
      Top = 70
      Width = 24
      Height = 13
      Caption = 'I'#1076#1074' ='
    end
    object Label11: TLabel
      Left = 15
      Top = 145
      Width = 20
      Height = 13
      Caption = ' m ='
    end
    object Label22: TLabel
      Left = 88
      Top = 19
      Width = 18
      Height = 13
      Caption = #1082#1042#1090
    end
    object Label23: TLabel
      Left = 88
      Top = 44
      Width = 32
      Height = 13
      Caption = #1084#1080#1085' -1'
    end
    object Label24: TLabel
      Left = 88
      Top = 94
      Width = 7
      Height = 13
      Caption = #1040
    end
    object Label25: TLabel
      Left = 88
      Top = 119
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label26: TLabel
      Left = 88
      Top = 144
      Width = 11
      Height = 13
      Caption = #1082#1075
    end
    object Label27: TLabel
      Left = 88
      Top = 69
      Width = 52
      Height = 13
      Caption = #1082#1075' '#1084'2 10-3'
    end
    object Edit1: TEdit
      Left = 40
      Top = 15
      Width = 45
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 40
      Top = 40
      Width = 45
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 40
      Top = 90
      Width = 45
      Height = 21
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 40
      Top = 115
      Width = 45
      Height = 21
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 190
      Top = 115
      Width = 45
      Height = 21
      TabOrder = 10
      OnKeyPress = Edit5KeyPress
    end
    object Edit6: TEdit
      Left = 190
      Top = 15
      Width = 45
      Height = 21
      TabOrder = 6
      OnKeyPress = Edit6KeyPress
    end
    object Edit7: TEdit
      Left = 190
      Top = 40
      Width = 45
      Height = 21
      TabOrder = 7
      OnKeyPress = Edit7KeyPress
    end
    object Edit8: TEdit
      Left = 190
      Top = 65
      Width = 45
      Height = 21
      TabOrder = 8
      OnKeyPress = Edit8KeyPress
    end
    object Edit9: TEdit
      Left = 190
      Top = 90
      Width = 45
      Height = 21
      TabOrder = 9
      OnKeyPress = Edit9KeyPress
    end
    object Edit10: TEdit
      Left = 40
      Top = 65
      Width = 45
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit10KeyPress
    end
    object Edit11: TEdit
      Left = 40
      Top = 140
      Width = 45
      Height = 21
      TabOrder = 5
      OnKeyPress = Edit11KeyPress
    end
  end
  object PageControl1: TPageControl
    Left = 6
    Top = 260
    Width = 510
    Height = 96
    ActivePage = TabSheet1
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = #1052#1061' '#1101#1083'. '#1076#1074'.'
      object Grid1: TStringGrid
        Left = 1
        Top = 0
        Width = 498
        Height = 66
        Color = clWhite
        ColCount = 12
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 3
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
        ScrollBars = ssHorizontal
        TabOrder = 0
        RowHeights = (
          20
          20
          20)
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1079#1085#1080#1094#1072' '#1084#1077#1078#1076#1091' '#1052#1061' '#1101#1083'.'#1076#1074'. '#1080' '#1052#1061' '#1088#1072#1073'. '#1084#1072#1096#1080#1085#1099
      ImageIndex = 1
      object Grid2: TStringGrid
        Left = 1
        Top = 0
        Width = 498
        Height = 66
        ColCount = 12
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 3
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1052#1061' '#1088#1072#1073'. '#1084#1072#1096#1080#1085#1099
      ImageIndex = 2
      object Grid3: TStringGrid
        Left = 1
        Top = 0
        Width = 498
        Height = 46
        ColCount = 12
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
      ImageIndex = 3
      object Grid5: TStringGrid
        Left = 1
        Top = 0
        Width = 498
        Height = 46
        ColCount = 15
        DefaultColWidth = 32
        DefaultRowHeight = 20
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 280
    Top = 135
    Width = 71
    Height = 21
    Caption = #1056#1072#1089#1095#1077#1090
    Default = True
    TabOrder = 3
    OnClick = Button1Click
  end
  object Grid4: TStringGrid
    Left = 10
    Top = 195
    Width = 501
    Height = 48
    ColCount = 11
    DefaultColWidth = 44
    DefaultRowHeight = 21
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    TabOrder = 2
  end
  object Button2: TButton
    Left = 370
    Top = 135
    Width = 131
    Height = 21
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
    Enabled = False
    TabOrder = 4
    OnClick = Button2Click
  end
end
