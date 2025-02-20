unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    gpDesafioDelphi: TGroupBox;
    btnDesafio1: TButton;
    btnDesafio2: TButton;
    btnDesafio3: TButton;
    Timer1: TTimer;
    lbTempoRegressivo: TLabel;
    btnDesafio4: TButton;
    btnDesafio5: TButton;
    btnDesafio6: TButton;
    procedure btnDesafio1Click(Sender: TObject);
    procedure btnDesafio2Click(Sender: TObject);
    procedure btnDesafio3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnDesafio4Click(Sender: TObject);
    procedure btnDesafio5Click(Sender: TObject);
    procedure btnDesafio6Click(Sender: TObject);
  private
    { Private declarations }
    ContagemRegressiva:integer;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unDelphiDesafio1, unDelphiDesafio2, unDelphiDesafio4, unDelphiDesafio5,
  unDelphiDesafio6;

procedure TfrmPrincipal.btnDesafio1Click(Sender: TObject);
begin

  try

    Application.CreateForm(TfrmDelphiDesafio1, frmDelphiDesafio1);
    frmDelphiDesafio1.ShowModal;

  finally
    FreeAndNil(frmDelphiDesafio1);
  end;

end;

procedure TfrmPrincipal.btnDesafio2Click(Sender: TObject);
begin
  try

    Application.CreateForm(TfrmDelphiDesafio2, frmDelphiDesafio2);
    frmDelphiDesafio2.ShowModal;

  finally
    FreeAndNil(frmDelphiDesafio2);
  end;
end;

procedure TfrmPrincipal.btnDesafio3Click(Sender: TObject);
begin
  lbTempoRegressivo.Visible := True;
  ContagemRegressiva := -10000;
  Timer1.Enabled := True;
end;

procedure TfrmPrincipal.btnDesafio4Click(Sender: TObject);
begin

  try

    Application.CreateForm(TfrmDelphiDesafio4, frmDelphiDesafio4);
    frmDelphiDesafio4.ShowModal;

  finally
    FreeAndNil(frmDelphiDesafio4);
  end;

end;

procedure TfrmPrincipal.btnDesafio5Click(Sender: TObject);
begin

 try
    Application.CreateForm(TfrmDelphiDesafio5, frmDelphiDesafio5);
    frmDelphiDesafio5.ShowModal;

  finally
    FreeAndNil(frmDelphiDesafio5);
  end;
end;

procedure TfrmPrincipal.btnDesafio6Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmDelphiDesafio6, frmDelphiDesafio6);
    frmDelphiDesafio6.ShowModal;

  finally
    FreeAndNil(frmDelphiDesafio6);
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
var
  Segundos:Double;
begin

  ContagemRegressiva := (ContagemRegressiva +Timer1.Interval);
  Segundos :=  ( ContagemRegressiva / (-1000));
  lbTempoRegressivo.Caption := 'Tempo: ' + floatToStr( Segundos ) ;

  if (ContagemRegressiva =0) then
  begin

    Timer1.Enabled := false;
    Showmessage('Tempo esgotado!');
    lbTempoRegressivo.Visible := False;
    lbTempoRegressivo.Caption :='Tempo: 10';

  end;

end;

end.
