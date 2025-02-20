unit unDelphiDesafio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmDelphiDesafio1 = class(TForm)
    lbArrayDeNumeros: TLabel;
    edtArrayDeNumeros: TEdit;
    pnlAcoes: TPanel;
    btnSair: TButton;
    lbSegundoMaiorNumeroDaLista: TLabel;
    edtSegundoMaiorNumeroDaLista: TEdit;
    lbSomaTodosNumerosPares: TLabel;
    edtSomaTodosNumerosPares: TEdit;
    btnValidar: TButton;
    procedure edtArrayDeNumerosKeyPress(Sender: TObject; var Key: Char);
    procedure btnValidarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDelphiDesafio1: TfrmDelphiDesafio1;

implementation

{$R *.dfm}

procedure TfrmDelphiDesafio1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDelphiDesafio1.btnValidarClick(Sender: TObject);
var
  NumeroArray: array of Integer;
  x,j,y,z,i,s,QtdNumeros,Posicao,NumOrdem,SomaNumPares: Integer;
  Numeros,NumPosicao :String;
begin

  Numeros := edtArrayDeNumeros.Text;

  if (Length(Numeros) = 0) then
  begin
    ShowMessage('Favor informar um array de números, Ex: 1,2,3,4 ');
    edtArrayDeNumeros.SetFocus;
    Exit;
  end;

  NumPosicao   := '';
  Posicao      := 0;
  QtdNumeros   := 1;
  SomaNumPares := 0;

  try

    for j := 1 to Length(Numeros)  do
    begin
      if ( Numeros[j] = ',' ) then
      begin
        Inc(QtdNumeros);
      end;
    end;

  except on E: Exception do
    begin
      ShowMessage('Erro ao pegar a quantidade de números');
    end;
  end;

  SetLength(NumeroArray, QtdNumeros);

  try
    for x := 1 to Length(Numeros)  do
    begin

      if ( Numeros[x] = ',' ) then
      begin

        NumPosicao := '';

      end else
      begin

        NumPosicao := NumPosicao + Numeros[x];
        NumeroArray[Posicao] :=  StrToInt(NumPosicao);

        if (Numeros[x+1] = ',') then
        begin
          inc(Posicao);
        end;

      end;

    end;
  except on E: Exception do
    begin
      ShowMessage('Erro ao pegar os números de cada posição');
    end;
  end;

  try

    for y := 0 to QtdNumeros-1 do
    begin

      for z := 0 to (QtdNumeros - (y+1)) do
      begin

        if (NumeroArray[z] > NumeroArray[z + 1]) then
        begin
          NumOrdem := NumeroArray[z];
          NumeroArray[z] := NumeroArray[z + 1];
          NumeroArray[z + 1] := NumOrdem;
        end;
      end;
    end;
  except on E: Exception do
    begin
      ShowMessage('Erro ao fazer a ordenação dos números');
    end;
  end;

  try

    for s := 0 to QtdNumeros-1 do
    begin
      if (NumeroArray[s] mod 2 = 0) then
      begin
        SomaNumPares := SomaNumPares + NumeroArray[s];
      end;
    end;
  except on E: Exception do
    begin
      ShowMessage('Erro ao fazer a soma dos números pares');
    end;
  end;

  edtSegundoMaiorNumeroDaLista.Text := IntToStr(NumeroArray[QtdNumeros-2]);
  edtSomaTodosNumerosPares.Text := IntToStr(SomaNumPares);

end;


procedure TfrmDelphiDesafio1.edtArrayDeNumerosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ( Key <> #8 ) then
  begin
    if not( Key in [ '0' .. '9',',' ] ) then
      Key := #0;
  end;
end;

end.
