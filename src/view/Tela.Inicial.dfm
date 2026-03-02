object frmInicio: TfrmInicio
  Left = 0
  Top = 0
  Caption = 'In'#237'cio'
  ClientHeight = 471
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object grpOpcoes: TGroupBox
    Left = 0
    Top = 0
    Width = 300
    Height = 300
    TabOrder = 0
    object btnConfiguracao: TButton
      Left = 160
      Top = 168
      Width = 105
      Height = 100
      Caption = 'Configura'#231#245'es'
      TabOrder = 3
    end
    object btnEstoque: TButton
      Left = 160
      Top = 31
      Width = 105
      Height = 100
      Caption = 'Estoque'
      TabOrder = 0
      OnClick = btnEstoqueClick
    end
    object btnPDV: TButton
      Left = 32
      Top = 31
      Width = 105
      Height = 100
      Caption = 'PDV'
      TabOrder = 2
      OnClick = btnPDVClick
    end
    object btnUsuario: TButton
      Left = 32
      Top = 168
      Width = 105
      Height = 100
      Caption = 'Usu'#225'rios'
      TabOrder = 1
    end
  end
  object btnTestes: TButton
    Left = 32
    Top = 328
    Width = 105
    Height = 100
    Caption = 'btnTestes'
    TabOrder = 1
    OnClick = btnTestesClick
  end
end
