object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Teste Programador Delphi MicroData - Vitor Faraux dos Santos'
  ClientHeight = 355
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object gpDesafioDelphi: TGroupBox
    Left = 0
    Top = 0
    Width = 650
    Height = 161
    Align = alTop
    Caption = 'Desafio Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbTempoRegressivo: TLabel
      Left = 178
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Tempo: 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnDesafio1: TButton
      Left = 16
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnDesafio1Click
    end
    object btnDesafio2: TButton
      Left = 97
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDesafio2Click
    end
    object btnDesafio3: TButton
      Left = 178
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnDesafio3Click
    end
    object btnDesafio4: TButton
      Left = 259
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnDesafio4Click
    end
    object btnDesafio5: TButton
      Left = 340
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnDesafio5Click
    end
    object btnDesafio6: TButton
      Left = 421
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Desafio 6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnDesafio6Click
    end
  end
  object gpDesafioSQL: TGroupBox
    Left = 0
    Top = 161
    Width = 650
    Height = 184
    Align = alTop
    Caption = 'Desafio SQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnSqlDesafio1: TButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Desafio 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 600
    Top = 24
  end
end
