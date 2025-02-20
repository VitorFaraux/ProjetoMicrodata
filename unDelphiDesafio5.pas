unit unDelphiDesafio5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,  ActiveX, ComObj;

type
  TfrmDelphiDesafio5 = class(TForm)
    pnlAcoes: TPanel;
    btnSair: TButton;
    lbExpressaoMatematica: TLabel;
    edtExpressaoMatematica: TEdit;
    btnValidar: TButton;
    lbResultado: TLabel;
    edtResultado: TEdit;
    procedure btnValidarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtExpressaoMatematicaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function ValidaExpressaoMatematica(Expressao:String):String;
    function ContarCaracter(Texto: string; Caracter: Char): Integer;
  public
    { Public declarations }
  end;

var
  frmDelphiDesafio5: TfrmDelphiDesafio5;

implementation

{$R *.dfm}

procedure TfrmDelphiDesafio5.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDelphiDesafio5.btnValidarClick(Sender: TObject);
begin
 edtResultado.Text :=  ValidaExpressaoMatematica(edtExpressaoMatematica.Text);
end;

function TfrmDelphiDesafio5.ContarCaracter(Texto: string;
  Caracter: Char): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(Texto) do
  begin
    if Texto[i] = Caracter then
    begin
      Inc(Result);
    end;
  end;
end;

procedure TfrmDelphiDesafio5.edtExpressaoMatematicaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ( Key <> #8 ) then
  begin
    if not( Key in [ '0' .. '9',',','.','(',')','*','/','+','-' ] ) then
      Key := #0;
  end;
end;

function TfrmDelphiDesafio5.ValidaExpressaoMatematica(
  Expressao: String): String;
var
  SControl: OleVariant;
  PAberto,PFechado: Integer;
  Resultado:Double;
begin

  PAberto   := ContarCaracter(Expressao,'(');
  PFechado  := ContarCaracter(Expressao,')');;

  if PAberto <> PFechado  then
  begin
    showmessage('Expressão matemática esta incorreta, favor verificar os parênteses');
    exit;
  end;

  try

    Expressao := StringReplace(Expressao, ',', '.', [rfReplaceAll]);
    SControl := CreateOleObject('MSScriptControl.ScriptControl');
    SControl.Language := 'JScript';

    Resultado := SControl.Eval(Expressao);
    Result    := FloatToStr( Resultado);

  except
    on E: Exception do
      ShowMessage('Erro ao calcular a expressão: ' + E.Message);
  end;



end;

end.
