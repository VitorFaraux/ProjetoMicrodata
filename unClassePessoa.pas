unit unClassePessoa;


interface
type
  TPessoa = class
  private
    FNome: String;
    FIdade: Integer;
  public
    constructor Create( PNome: string; PIdade: Integer);
    procedure SetNome( PNome: string);
    function GetNome: string;
    procedure SetIdade(PIdade: Integer);
    function GetIdade: Integer;
    function ToString: string; override;

    property Nome: string read GetNome write SetNome;
    property Idade: Integer read GetIdade write SetIdade;

  end;
implementation

uses  System.SysUtils;
{ TPessoa }

constructor TPessoa.Create( PNome: string; PIdade: Integer);
begin
  FNome := PNome;
  FIdade := PIdade;
end;


procedure TPessoa.SetNome( PNome: string);
begin
  FNome := PNome;
end;

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.SetIdade(PIdade: Integer);
begin
  FIdade := PIdade;
end;


function TPessoa.GetIdade: Integer;
begin
  Result := FIdade;
end;

function TPessoa.ToString: string;
begin
 Result := 'Nome: ' +FNome+' - Idade: '+IntToStr(FIdade);
end;

end.
