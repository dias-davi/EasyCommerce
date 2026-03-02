unit Tela.Confirmacao.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmConfirmacao = class(TForm)
    pnlGeral: TPanel;
    btnSim: TButton;
    bntNao: TButton;
    lblTextoConfirmacao: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmacao: TfrmConfirmacao;

implementation

{$R *.dfm}

end.
