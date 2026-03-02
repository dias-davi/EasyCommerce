object frmTestes: TfrmTestes
  Left = 0
  Top = 0
  Caption = 'FORM PARA TESTES EM TELA'
  ClientHeight = 120
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object btnGerarID: TButton
    Left = 16
    Top = 39
    Width = 137
    Height = 33
    Caption = 'GERAR GUID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnGerarIDClick
  end
  object edtID: TEdit
    Left = 159
    Top = 40
    Width = 418
    Height = 33
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
