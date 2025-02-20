unit unDelphiDesafio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDelphiDesafio2 = class(TForm)
    pnlAcoes: TPanel;
    btnSair: TButton;
    lbArrayDeNumeros: TLabel;
    edtFrase: TEdit;
    btnValidar: TButton;
    lbPalavrasEmOrdemInversa: TLabel;
    edtPalavrasEmOrdemInversa: TEdit;
    lbQuantidadeVogais: TLabel;
    edtQuantidadeVogais: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
  private
    function InverterPalavras(Frase:String):String;
    function QtdVogais(Frase:String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDelphiDesafio2: TfrmDelphiDesafio2;

implementation

{$R *.dfm}

procedure TfrmDelphiDesafio2.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDelphiDesafio2.btnValidarClick(Sender: TObject);
begin

  edtPalavrasEmOrdemInversa.Text := InverterPalavras(edtFrase.Text);
  edtQuantidadeVogais.Text       := QtdVogais(edtFrase.Text);

end;

function TfrmDelphiDesafio2.InverterPalavras(Frase:String): String;
var
  lstPalavras: TStringList;
  i: Integer;
begin

  lstPalavras := TStringList.Create;

  try

    lstPalavras.Delimiter       := ' ';
    lstPalavras.StrictDelimiter := True;
    lstPalavras.DelimitedText   := Frase;

    Result := '';

    for i := lstPalavras.Count - 1 downto 0 do
    begin
      Result := Result + lstPalavras[i] + ' ';
    end;

    Result := Trim(Result);

  finally
    lstPalavras.Free;
  end;

end;

function TfrmDelphiDesafio2.QtdVogais( Frase: String): String;
var
  i,Resultado: Integer;
  Letra: Char;
begin

  Resultado := 0;

  for i := 1 to Length(Frase) do
  begin

    Letra := UpCase(Frase[i]);

    if Letra in ['A', 'E', 'I', 'O', 'U'] then
    begin
      Inc(Resultado);
    end;

  end;

  Result := IntToStr(Resultado);

end;

end.
