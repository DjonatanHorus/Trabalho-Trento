unit UnFormInicializaSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormInicial = class(TForm)
    pgbProgress: TProgressBar;
    Time: TTimer;
    procedure TimeTimer(Sender: TObject);
  private
    procedure AbrirFormMenuPrincipal;
  public
    { Public declarations }
  end;

var
  FormInicial: TFormInicial;

implementation

uses
  UnTypesGeral, UnFormMenuPrincipal;
{$R *.dfm}
{ ------------------------------------------------------
  METODO: TimeTimer
  AUTOR: Djonatan Willenz
  OBJETIVO:
  OBJETIVO: Delay para abrir menu.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }

procedure TFormInicial.TimeTimer(Sender: TObject);
begin
end;

{ ------------------------------------------------------
  METODO: AbrirFormMenuPrincipal
  AUTOR: Djonatan Willenz
  OBJETIVO:
  OBJETIVO: Instanciar e executar formulario do menu principal.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
Procedure TFormInicial.AbrirFormMenuPrincipal;
begin
  TGTypeGeral.CarregarFormulario(TFormMenuPrincipal);
end;

end.
