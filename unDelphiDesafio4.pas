unit unDelphiDesafio4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,unClassePessoa;

type
  TfrmDelphiDesafio4 = class(TForm)
    pnlAcoes: TPanel;
    btnSair: TButton;
    lbNome: TLabel;
    edtNome: TEdit;
    lnIdade: TLabel;
    edtIdade: TEdit;
    Label1: TLabel;
    edtNomeIdade: TEdit;
    btnValidar: TButton;
    procedure btnValidarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDelphiDesafio4: TfrmDelphiDesafio4;

implementation

{$R *.dfm}

procedure TfrmDelphiDesafio4.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDelphiDesafio4.btnValidarClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create(edtNome.Text, StrToInt(edtIdade.Text));
  try
    edtNomeIdade.Text := Pessoa.ToString;
  finally
    Pessoa.Free;
  end;
end;

end.
