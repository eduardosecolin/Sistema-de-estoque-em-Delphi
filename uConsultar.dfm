object F_consultar: TF_consultar
  Left = 529
  Top = 207
  Width = 600
  Height = 360
  Caption = 'Consultar Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 472
    Top = 8
    Width = 97
    Height = 33
  end
  object SpeedButton2: TSpeedButton
    Left = 472
    Top = 40
    Width = 97
    Height = 33
  end
  object SpeedButton3: TSpeedButton
    Left = 472
    Top = 72
    Width = 97
    Height = 33
  end
  object SpeedButton4: TSpeedButton
    Left = 472
    Top = 104
    Width = 97
    Height = 33
  end
  object SpeedButton5: TSpeedButton
    Left = 472
    Top = 136
    Width = 97
    Height = 33
  end
  object DBGrid: TDBGrid
    Left = -5
    Top = 0
    Width = 462
    Height = 169
    DataSource = DM.DS_estoque
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
