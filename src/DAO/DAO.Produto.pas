unit DAO.Produto;

interface
uses
  FireDAC.Comp.Client, System.SysUtils, Model.Produto;


type
	TProdutoDAO = class
  private
    FConnection: TFDConnection;

  protected

  public
    constructor Create(AConnection: TFDConnection);

    procedure Inserir(AProduto: TProdutoModel);
    procedure Atualizar(AProduto: TProdutoModel);
    procedure Excluir(AID: TGUID);
    function ObterPorID(AID: TGUID): TProdutoModel;
  end;

implementation

{ TProdutoDAO }

constructor TProdutoDAO.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

procedure TProdutoDAO.Atualizar(AProduto: TProdutoModel);
var
  LQuery: TFDQuery;
begin

  LQuery := TFDQuery.Create(nil);

  try

    LQuery.Connection := FConnection;

    LQuery.SQL.Text :=
      'UPDATE produto SET ' +
      ' descricao = :descricao, ' +
      ' preco = :preco, ' +
      ' estoque = :estoque, ' +
      ' status_produto  = :status_produto  ' +
      'WHERE id = :id';


    LQuery.ParamByName('id').AsString := GUIDToString(AProduto.ID);
    LQuery.ParamByName('descricao').AsString := AProduto.Descricao;
    LQuery.ParamByName('preco').AsCurrency := AProduto.Preco;
    LQuery.ParamByName('estoque').AsFloat := AProduto.Estoque;
    LQuery.ParamByName('status_produto').AsBoolean := AProduto.StatusProduto;

    LQuery.ExecSQL;

  finally
    LQuery.Free;
  end;

end;

procedure TProdutoDAO.Excluir(AID: TGUID);
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(nil);
  try
    LQuery.Connection := FConnection;

    LQuery.SQL.Text :=
      'DELETE FROM produto '+
      '  WHERE id = :id';

    LQuery.ParamByName('id').AsString := GUIDToString(AID);
    LQuery.ExecSQL;
  finally
    LQuery.Free;
  end;
end;

procedure TProdutoDAO.Inserir(AProduto: TProdutoModel);
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(nil);
  try
    LQuery.Connection := FConnection;

    LQuery.SQL.Text :=
      'INSERT INTO produto (' +
      ' id, descricao, preco, estoque, status_produto ' +
      ') VALUES (' +
      ' :id, :descricao, :preco, :estoque, :status_produto ' +
      ')';

    LQuery.ParamByName('id').AsString := GUIDToString(AProduto.ID);
    LQuery.ParamByName('descricao').AsString := AProduto.Descricao;
    LQuery.ParamByName('preco').AsCurrency := AProduto.Preco;
    LQuery.ParamByName('estoque').AsFloat := AProduto.Estoque;
    LQuery.ParamByName('status_produto').AsBoolean := AProduto.StatusProduto;

    LQuery.ExecSQL;

  finally
    LQuery.Free;
  end;
end;

function TProdutoDAO.ObterPorID(AID: TGUID): TProdutoModel;
var
  LQuery: TFDQuery;
  LProduto: TProdutoModel;
begin
  Result := nil;
  LQuery := TFDQuery.Create(nil);
  try
    LQuery.Connection := FConnection;

    LQuery.SQL.Text :=
      'SELECT id, descricao, preco, estoque, status_produto ' +
      'FROM produto ' +
      '  WHERE id = :id';

    LQuery.ParamByName('id').AsString := GUIDToString(AID);

    LQuery.Open;

    if not LQuery.IsEmpty then
    begin
      //LProduto := TProdutoModel.Create;

			LProduto := TProdutoModel.CreateComId(
      							StringToGUID(LQuery.FieldByName('id').AsString));

      LProduto.Descricao := LQuery.FieldByName('descricao').AsString;
			LProduto.Preco := LQuery.FieldByName('preco').AsCurrency;
      LProduto.Estoque := LQuery.FieldByName('estoque').AsFloat;
      LProduto.StatusProduto := LQuery.FieldByName('status_produto').AsBoolean;

      Result := LProduto;
    end;
  finally
    LQuery.Free;
  end;
end;

end.
