unit UnFormMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormMenuPrincipal = class(TForm)
    pnlMenuLateral: TPanel;
    MenuTop: TMainMenu;
    actList: TActionList;
    pnlBotonBaar: TPanel;
    ProgressBar1: TProgressBar;
    lblEmpresa: TLabel;
    lblUsuario: TLabel;
    lblData: TLabel;
    dbeImgPlanoFundo: TDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

{$R *.dfm}

end.
