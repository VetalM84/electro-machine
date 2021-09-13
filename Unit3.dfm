object Form3: TForm3
  Left = 275
  Top = 245
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
  ClientHeight = 105
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 5
    Top = 5
    Width = 141
    Height = 19
    Caption = #1052#1061' '#1101#1083'. '#1076#1074#1080#1075#1072#1090#1077#1083#1103
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 5
    Top = 55
    Width = 141
    Height = 19
    Caption = #1056#1072#1079#1085#1080#1094#1072
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 5
    Top = 30
    Width = 141
    Height = 19
    Caption = #1052#1061' '#1088#1072#1073#1086#1095#1077#1081' '#1084#1072#1096#1080#1085#1099
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 160
    Top = 5
    Width = 141
    Height = 19
    Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1088#1072#1079#1075#1086#1085#1072
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 160
    Top = 30
    Width = 141
    Height = 19
    Caption = #1053#1072#1075#1088#1091#1079#1086#1095#1085#1072#1103' '#1076#1080#1072#1075#1088#1072#1084#1084#1072
    OnClick = SpeedButton5Click
  end
  object SpeedButton6: TSpeedButton
    Left = 160
    Top = 55
    Width = 141
    Height = 19
    Caption = #1050#1088#1080#1074#1072#1103' '#1085#1072#1075#1088#1077#1074#1072
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 75
    Top = 80
    Width = 156
    Height = 19
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1075#1088#1072#1092#1080#1082' '#1074' '#1092#1072#1081#1083
    OnClick = SpeedButton7Click
  end
  object Save1: TSaveDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap '#1092#1072#1081#1083#1099'|*.bmp|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 30
    Top = 50
  end
end
