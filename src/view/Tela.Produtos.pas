unit Tela.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmProdutos = class(TForm)
    pnlBotoes: TPanel;
    pnlGrid: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StringGrid1: TStringGrid;
  private

  public

	end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
  Service.Produto, Model.Produto;

{$R *.dfm}

{ TfrmProdutos }

end.
