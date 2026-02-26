object frmPDV: TfrmPDV
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 665
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 305
    Align = alTop
    TabOrder = 0
    object pnlProdutos: TPanel
      Left = 1
      Top = 1
      Width = 432
      Height = 303
      Align = alLeft
      TabOrder = 0
      object grpSelecaoProduto: TGroupBox
        Left = 15
        Top = 32
        Width = 338
        Height = 217
        Caption = 'Selecao Produto'
        TabOrder = 0
        object edtCodigoProduto: TEdit
          Left = 16
          Top = 34
          Width = 121
          Height = 23
          TabOrder = 0
          Text = 'Insira o C'#243'digo'
        end
        object edtDescricaoProduto: TEdit
          Left = 16
          Top = 76
          Width = 245
          Height = 23
          Enabled = False
          TabOrder = 1
          Text = 'Descri'#231#227'o Produto'
        end
        object edtValorProduto: TEdit
          Left = 267
          Top = 76
          Width = 58
          Height = 23
          Enabled = False
          TabOrder = 2
          Text = 'R$ 0,00'
        end
        object grpDesconto: TGroupBox
          Left = 16
          Top = 119
          Width = 192
          Height = 79
          Caption = 'Desconto'
          TabOrder = 3
          object lbledtDescontoPercentual: TLabeledEdit
            Left = 11
            Top = 43
            Width = 73
            Height = 23
            EditLabel.Width = 71
            EditLabel.Height = 15
            EditLabel.Caption = 'Desconto (%)'
            TabOrder = 0
            Text = ''
          end
          object lbledtDescontoValor: TLabeledEdit
            Left = 105
            Top = 43
            Width = 73
            Height = 23
            EditLabel.Width = 74
            EditLabel.Height = 15
            EditLabel.Caption = 'Desconto (R$)'
            TabOrder = 1
            Text = ''
          end
        end
      end
    end
    object pnlValores: TPanel
      Left = 433
      Top = 1
      Width = 392
      Height = 303
      Align = alClient
      Caption = 'pnlValores'
      TabOrder = 1
      ExplicitLeft = 416
      ExplicitWidth = 409
      object grpValores: TGroupBox
        Left = 98
        Top = 32
        Width = 224
        Height = 217
        Caption = 'Valores'
        TabOrder = 0
        object lbledtValorTotal: TLabeledEdit
          Left = 17
          Top = 181
          Width = 121
          Height = 23
          EditLabel.Width = 88
          EditLabel.Height = 15
          EditLabel.Caption = 'Total da Compra'
          Enabled = False
          TabOrder = 0
          Text = 'R$ 0,00'
        end
        object lbledtSubTotal: TLabeledEdit
          Left = 16
          Top = 48
          Width = 121
          Height = 23
          EditLabel.Width = 46
          EditLabel.Height = 15
          EditLabel.Caption = 'SubTotal'
          Enabled = False
          TabOrder = 1
          Text = 'R$ 0,00'
        end
        object grpDescontoFinal: TGroupBox
          Left = 16
          Top = 77
          Width = 192
          Height = 79
          Caption = 'Desconto'
          TabOrder = 2
          object lbledtDescontoFinalPercentual: TLabeledEdit
            Left = 11
            Top = 43
            Width = 73
            Height = 23
            EditLabel.Width = 71
            EditLabel.Height = 15
            EditLabel.Caption = 'Desconto (%)'
            TabOrder = 0
            Text = ''
          end
          object lbledtDescontofinalValor: TLabeledEdit
            Left = 105
            Top = 43
            Width = 73
            Height = 23
            EditLabel.Width = 74
            EditLabel.Height = 15
            EditLabel.Caption = 'Desconto (R$)'
            TabOrder = 1
            Text = ''
          end
        end
      end
    end
  end
  object pnlInferior: TPanel
    Left = 0
    Top = 305
    Width = 826
    Height = 360
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 367
    ExplicitWidth = 681
    ExplicitHeight = 546
    object strngrdProdutos: TStringGrid
      Left = 1
      Top = 1
      Width = 824
      Height = 358
      Align = alClient
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowDefAlign]
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitWidth = 901
      ExplicitHeight = 550
      ColWidths = (
        64
        233
        64
        64
        64)
    end
  end
end
