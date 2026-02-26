unit Model.Produto;

interface

uses
  SysUtils, Model.Entity;

type
  TProdutoModel = class(TEntity)
  private
    FDescricao: string;
    FCodigoDeBarras: string;
    FPreco: Currency;
    FEstoque: Double;
    FStatusProduto: Boolean;

    procedure SetDescricao(const Value: string);
    procedure SetCodigoDeBarras(const Value: string);
    procedure SetPreco(const Value: Currency);
    procedure SetEstoque(const Value: Double);
    procedure SetProdutoAtivo(const Value: Boolean);


  public
    constructor CreateComID(AID: TGUID);
    property Descricao: string read FDescricao write SetDescricao;
    property CodigoDeBarras: string read FCodigoDeBarras write SetCodigoDeBarras;
    property Preco: Currency read FPreco write SetPreco;
    property Estoque: Double read FEstoque write SetEstoque;
    property StatusProduto: Boolean read FStatusProduto write SetProdutoAtivo;

  end;

implementation

constructor TProdutoModel.CreateComID(AID: TGUID);
begin
  inherited Create;
  SetId(AID);
end;

procedure TProdutoModel.SetCodigoDeBarras(const Value: string);
begin
  if Trim(Value) = '' then
    raise Exception.Create('Código de barras não pode ser vazio');

  FCodigoDeBarras := Value;
end;

procedure TProdutoModel.SetDescricao(const Value: string);
begin
  if Trim(Value) = '' then
    raise Exception.Create('Descrição não pode ser vazio');

  FDescricao := Value;
end;

procedure TProdutoModel.SetEstoque(const Value: Double);
begin
	if Value < 0 then
    raise Exception.Create('Estoque não pode ser negativo');
  FEstoque := Value;
end;

procedure TProdutoModel.SetPreco(const Value: Currency);
begin
  if Value < 0 then
    raise Exception.Create('Preço não pode ser negativo');

  FPreco := Value;
end;

procedure TProdutoModel.SetProdutoAtivo(const Value: Boolean);
begin
  FStatusProduto := Value;
end;

end.
