object frmTestes: TfrmTestes
  Left = 0
  Top = 0
  Caption = 'FORM PARA TESTES EM TELA'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnGerarID: TButton
    Left = 39
    Top = 41
    Width = 83
    Height = 25
    Caption = 'GERAR GUID'
    TabOrder = 0
    OnClick = btnGerarIDClick
  end
  object edtID: TEdit
    Left = 128
    Top = 40
    Width = 305
    Height = 26
    Enabled = False
    TabOrder = 1
  end
end
