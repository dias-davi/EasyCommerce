unit Service.Produto;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, Model.Produto, DAO.Produto;

type
  TProdutoService = class
  private
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);

    procedure Salvar(AProduto: TProdutoModel);
    procedure Excluir(AID: TGUID);
    function ObterPorID(AID: TGUID): TProdutoModel;
  end;

implementation

{ TProdutoService }

constructor TProdutoService.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

procedure TProdutoService.Salvar(AProduto: TProdutoModel);
var
  LDAO: TProdutoDAO;
begin
  LDAO := TProdutoDAO.Create(FConnection);
  try
    if AProduto.ID = TGUID.Empty then
      LDAO.Inserir(AProduto)
    else
      LDAO.Atualizar(AProduto);
  finally
    LDAO.Free;
  end;
end;

procedure TProdutoService.Excluir(AID: TGUID);
var
  LDAO: TProdutoDAO;
begin
  LDAO := TProdutoDAO.Create(FConnection);
  try
    LDAO.Excluir(AID);
  finally
    LDAO.Free;
  end;
end;

function TProdutoService.ObterPorID(AID: TGUID): TProdutoModel;
var
  LDAO: TProdutoDAO;
begin
  LDAO := TProdutoDAO.Create(FConnection);
  try
    Result := LDAO.ObterPorID(AID);
  finally
    LDAO.Free;
  end;
end;

end.
