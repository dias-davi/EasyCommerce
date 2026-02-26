unit Tela.PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.StdCtrls, model.Produto;

type
  TfrmPDV = class(TForm)
    grpSelecaoProduto: TGroupBox;
    edtCodigoProduto: TEdit;
    edtDescricaoProduto: TEdit;
    edtValorProduto: TEdit;
    grpDesconto: TGroupBox;
    lbledtDescontoPercentual: TLabeledEdit;
    lbledtDescontoValor: TLabeledEdit;
    grpValores: TGroupBox;
    lbledtValorTotal: TLabeledEdit;
    lbledtSubTotal: TLabeledEdit;
    grpDescontoFinal: TGroupBox;
    lbledtDescontoFinalPercentual: TLabeledEdit;
    lbledtDescontofinalValor: TLabeledEdit;
    strngrdProdutos: TStringGrid;
    pnlSuperior: TPanel;
    pnlInferior: TPanel;
    pnlProdutos: TPanel;
    pnlValores: TPanel;

  private


  public


  end;

var
  frmPDV: TfrmPDV;

implementation

{$R *.dfm}


{ TfrmPDV }


end.
