unit Tela.Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmInicio = class(TForm)
    grpOpcoes: TGroupBox;
    btnConfiguracao: TButton;
    btnEstoque: TButton;
    btnPDV: TButton;
    btnUsuario: TButton;
    btnTestes: TButton;
    procedure btnPDVClick(Sender: TObject);
    procedure btnTestesClick(Sender: TObject);

  private


  public


  end;

var
  frmInicio: TfrmInicio;

implementation
uses
  Tela.PDV, Tela.Testes;

{$R *.dfm}

procedure TfrmInicio.btnPDVClick(Sender: TObject);
begin
  frmPDV.ShowModal;
end;

procedure TfrmInicio.btnTestesClick(Sender: TObject);
begin
  frmTestes.ShowModal();
end;

end.
