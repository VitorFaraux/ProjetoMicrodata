unit unDelphiDesafio6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDelphiDesafio6 = class(TForm)
    pnlAcoes: TPanel;
    btnSair: TButton;
    srBoxBotoes: TScrollBox;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
     procedure RetornaNumBotao(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    PNumBotao:Integer;
    PBotaoPosicaoTop:Integer;
    procedure CriarBotao;

  public
    { Public declarations }
  end;

var
  frmDelphiDesafio6: TfrmDelphiDesafio6;

implementation

{$R *.dfm}

{ TfrmDelphiDesafio6 }

procedure TfrmDelphiDesafio6.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDelphiDesafio6.Button1Click(Sender: TObject);
begin
  CriarBotao;
end;

procedure TfrmDelphiDesafio6.CriarBotao;
var
  Btn: TButton;
begin
  Btn := TButton.Create(Self);
  Inc(PNumBotao);

  try

    Btn.Parent  := srBoxBotoes;
    Btn.Caption := 'Botão: '+IntToStr(PNumBotao);
    Btn.Left    := 10;
    Btn.Height  := 30;
    PBotaoPosicaoTop := PBotaoPosicaoTop + Btn.Height+ 10;
    Btn.Top     := PBotaoPosicaoTop;
    Btn.Width   := 100;
    Btn.Tag     := PNumBotao;
    Btn.OnClick := RetornaNumBotao;

  except
    on E: Exception do
    begin
      Btn.Free;
      ShowMessage('Erro ao gerar botão: ' +E.Message)
    end;

  end;

end;

procedure TfrmDelphiDesafio6.FormShow(Sender: TObject);
begin
  PNumBotao := 0;
  PBotaoPosicaoTop := 10;
end;

procedure TfrmDelphiDesafio6.RetornaNumBotao(Sender: TObject);
var
  Botao: TButton;
begin
  Botao := Sender as TButton;
  ShowMessage('Número do botão:'+IntToStr(Botao.Tag));
end;

end.
