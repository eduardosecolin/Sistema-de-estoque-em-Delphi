object F_estoque: TF_estoque
  Left = 860
  Top = 392
  Width = 600
  Height = 360
  Caption = 'Estoque'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 544
    Top = 264
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      ShortCut = 16449
      object Adicionar1: TMenuItem
        Caption = 'Adicionar'
        OnClick = Adicionar1Click
      end
      object Consultar1: TMenuItem
        Caption = 'Consultar'
        OnClick = Consultar1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        OnClick = Fechar1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      ShortCut = 16456
      OnClick = Ajuda1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      ShortCut = 16453
      OnClick = Sair1Click
    end
  end
end
