program ProjetoSistema;

uses
  Vcl.Forms,
  UnFormMenuPrincipal in '..\Src\Menu Principal\UnFormMenuPrincipal.pas' {FormMenuPrincipal},
  UnDmMenuPrincipal in '..\Src\Menu Principal\UnDmMenuPrincipal.pas' {DmMenuPrincipal: TDataModule},
  UnDmConexao in '..\Src\Conexão\UnDmConexao.pas' {DmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuPrincipal, FormMenuPrincipal);
  Application.CreateForm(TDmMenuPrincipal, DmMenuPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
