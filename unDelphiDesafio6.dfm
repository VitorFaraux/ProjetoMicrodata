object frmDelphiDesafio6: TfrmDelphiDesafio6
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Delphi - Desafio 6'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAcoes: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 240
    ExplicitWidth = 541
    object btnSair: TButton
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
    object Button1: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Gerar Bot'#245'es'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object srBoxBotoes: TScrollBox
    Left = 0
    Top = 0
    Width = 635
    Height = 258
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 104
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end
