object frmConfirmacao: TfrmConfirmacao
  Left = 0
  Top = 0
  Caption = 'Confirmac'#227'o'
  ClientHeight = 128
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 128
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblTextoConfirmacao: TLabel
      Left = 40
      Top = 16
      Width = 265
      Height = 25
      Caption = 'Confirma operac'#227'o?'
      Constraints.MinWidth = 265
    end
    object btnSim: TButton
      Left = 64
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Sim'
      TabOrder = 0
    end
    object bntNao: TButton
      Left = 192
      Top = 64
      Width = 75
      Height = 25
      Caption = 'N'#227'o'
      TabOrder = 1
    end
  end
end
