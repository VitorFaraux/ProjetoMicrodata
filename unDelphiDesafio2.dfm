object frmDelphiDesafio2: TfrmDelphiDesafio2
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Delphi - Desafio 2'
  ClientHeight = 272
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbArrayDeNumeros: TLabel
    Left = 16
    Top = 16
    Width = 93
    Height = 13
    Caption = 'Digite uma frase'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPalavrasEmOrdemInversa: TLabel
    Left = 16
    Top = 72
    Width = 175
    Height = 13
    Caption = 'As palavras em ordem inversa.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbQuantidadeVogais: TLabel
    Left = 16
    Top = 128
    Width = 135
    Height = 13
    Caption = 'A quantidade de vogais.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 231
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 240
    ExplicitWidth = 541
    object btnSair: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object edtFrase: TEdit
    Left = 16
    Top = 35
    Width = 414
    Height = 21
    TabOrder = 1
  end
  object btnValidar: TButton
    Left = 436
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 2
    OnClick = btnValidarClick
  end
  object edtPalavrasEmOrdemInversa: TEdit
    Left = 16
    Top = 88
    Width = 414
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edtQuantidadeVogais: TEdit
    Left = 16
    Top = 144
    Width = 414
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
end
