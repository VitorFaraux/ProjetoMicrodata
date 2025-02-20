program TesteProgramadorDelphiVitorFarauxMD;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unDelphiDesafio1 in 'unDelphiDesafio1.pas' {frmDelphiDesafio1},
  unDelphiDesafio2 in 'unDelphiDesafio2.pas' {frmDelphiDesafio2},
  unClassePessoa in 'unClassePessoa.pas',
  unDelphiDesafio4 in 'unDelphiDesafio4.pas' {frmDelphiDesafio4},
  unDelphiDesafio5 in 'unDelphiDesafio5.pas' {frmDelphiDesafio5},
  unDelphiDesafio6 in 'unDelphiDesafio6.pas' {frmDelphiDesafio6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDelphiDesafio6, frmDelphiDesafio6);
  Application.Run;
end.
