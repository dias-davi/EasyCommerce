unit Tela.Testes;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;


type
  TfrmTestes = class(TForm)
    btnGerarID: TButton;
    edtID: TEdit;
    procedure btnGerarIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestes: TfrmTestes;

implementation

{$R *.dfm}


uses
	Model.Produto;

procedure TfrmTestes.btnGerarIDClick(Sender: TObject);
var
	LTeste: TProdutoModel;
begin
  LTeste := TProdutoModel.Create;
  edtID.text := LTeste.ID.ToString;
end;
end.
