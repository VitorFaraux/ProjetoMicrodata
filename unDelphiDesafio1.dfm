object frmDelphiDesafio1: TfrmDelphiDesafio1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Delphi - Desafio 1'
  ClientHeight = 231
  ClientWidth = 541
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
    Width = 164
    Height = 13
    Caption = 'Array de N'#250'meros. Ex: 1,2,3,4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbSegundoMaiorNumeroDaLista: TLabel
    Left = 16
    Top = 72
    Width = 189
    Height = 13
    Caption = 'O segundo maior n'#250'mero da lista.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbSomaTodosNumerosPares: TLabel
    Left = 16
    Top = 128
    Width = 201
    Height = 13
    Caption = 'A soma de todos os n'#250'meros pares.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtArrayDeNumeros: TEdit
    Left = 16
    Top = 35
    Width = 414
    Height = 21
    TabOrder = 0
    OnKeyPress = edtArrayDeNumerosKeyPress
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 190
    Width = 541
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 240
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
  object edtSegundoMaiorNumeroDaLista: TEdit
    Left = 16
    Top = 88
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edtSomaTodosNumerosPares: TEdit
    Left = 16
    Top = 144
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object btnValidar: TButton
    Left = 436
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 4
    OnClick = btnValidarClick
  end
end
