object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 73
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 129
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 232
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 73
    Width = 624
    Height = 368
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 113
    ExplicitHeight = 73
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 622
      Height = 366
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 64
      ExplicitWidth = 320
      ExplicitHeight = 120
    end
  end
end
