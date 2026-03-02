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
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 73
    Align = alTop
    TabOrder = 0
    object btnNovo: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TButton
      Left = 129
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
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
    object grdProdutos: TStringGrid
      Left = 1
      Top = 1
      Width = 622
      Height = 366
      Align = alClient
      TabOrder = 0
    end
  end
end
