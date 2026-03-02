unit Tela.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmProdutos = class(TForm)
    pnlBotoes: TPanel;
    pnlGrid: TPanel;
    btnNovo: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    grdProdutos: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);

  private
    procedure RedimensionarGrid(ALarguraForm: Integer);

  public

	end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
  Service.Produto, Model.Produto, Tela.Produtos.Cadastro;

{$R *.dfm}

{ TfrmProdutos }


procedure TfrmProdutos.btnEditarClick(Sender: TObject);
begin
  frmCadastroProduto.ShowModal;
end;

procedure TfrmProdutos.btnNovoClick(Sender: TObject);
begin
  frmCadastroProduto.ShowModal;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
   RedimensionarGrid(frmProdutos.Width);
end;

procedure TfrmProdutos.FormResize(Sender: TObject);
begin
   RedimensionarGrid(frmProdutos.Width);
end;

procedure TfrmProdutos.RedimensionarGrid(ALarguraForm: Integer);
var
  LLarguraDoGrid: Integer;

begin
	LLarguraDoGrid := ALarguraForm - 10;
	// barcode, descricao, preco, estoque, status

  grdProdutos.ColWidths[0] := Round(LLarguraDoGrid * 0.15);
  grdProdutos.ColWidths[1] := Round(LLarguraDoGrid * 0.40);
  grdProdutos.ColWidths[2] := Round(LLarguraDoGrid * 0.15);
  grdProdutos.ColWidths[3] := Round(LLarguraDoGrid * 0.15);
  grdProdutos.ColWidths[4] := Round(LLarguraDoGrid * 0.15);

end;
end.
