object frmDelphiDesafio5: TfrmDelphiDesafio5
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Delphi - Desafio 5'
  ClientHeight = 263
  ClientWidth = 491
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
  object lbExpressaoMatematica: TLabel
    Left = 16
    Top = 16
    Width = 130
    Height = 13
    Caption = 'Express'#227'o matem'#225'tica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 16
    Top = 64
    Width = 57
    Height = 13
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 222
    Width = 491
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
  object edtExpressaoMatematica: TEdit
    Left = 16
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 1
    OnKeyPress = edtExpressaoMatematicaKeyPress
  end
  object btnValidar: TButton
    Left = 255
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 2
    OnClick = btnValidarClick
  end
  object edtResultado: TEdit
    Left = 16
    Top = 80
    Width = 289
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
end
