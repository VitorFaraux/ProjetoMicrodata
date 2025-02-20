object frmDelphiDesafio4: TfrmDelphiDesafio4
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Delphi - Desafio 4'
  ClientHeight = 299
  ClientWidth = 514
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
  object lbNome: TLabel
    Left = 16
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lnIdade: TLabel
    Left = 311
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Nome - Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 258
    Width = 514
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
  object edtNome: TEdit
    Left = 16
    Top = 32
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object edtIdade: TEdit
    Left = 311
    Top = 32
    Width = 42
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtNomeIdade: TEdit
    Left = 16
    Top = 80
    Width = 289
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object btnValidar: TButton
    Left = 359
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 4
    OnClick = btnValidarClick
  end
end
