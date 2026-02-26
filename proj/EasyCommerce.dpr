program EasyCommerce;

uses
  Vcl.Forms,
  Tela.Inicial in '..\src\view\Tela.Inicial.pas' {frmInicio},
  Tela.PDV in '..\src\view\Tela.PDV.pas' {frmPDV},
  Model.Produto in '..\src\model\Model.Produto.pas',
  Model.Entity in '..\src\model\Model.Entity.pas',
  Tela.Testes in '..\src\view\Tela.Testes.pas' {frmTestes},
  DAO.Produto in '..\src\DAO\DAO.Produto.pas',
  Service.Produto in '..\src\service\Service.Produto.pas',
  Tela.Produtos in '..\src\view\Tela.Produtos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(TfrmTestes, frmTestes);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.Run;
end.
