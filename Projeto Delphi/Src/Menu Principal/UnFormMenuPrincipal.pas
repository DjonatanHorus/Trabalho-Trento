unit UnFormMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons;

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
    CADASTROS1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CNFIGURAES1: TMenuItem;
    actCadProduto: TAction;
    actCadFornecedor: TAction;
    actCadCliente: TAction;
    actCadUsuario: TAction;
    actFinalizarSistema: TAction;
    actConfiguracoes: TAction;
    actRelVendas: TAction;
    actRelCompras: TAction;
    actRelEstoque: TAction;
    Action4: TAction;
    Action5: TAction;
    actCadCliente1: TMenuItem;
    actCadProduto1: TMenuItem;
    actCadFornecedor1: TMenuItem;
    actCadUsuario1: TMenuItem;
    actRelCompras1: TMenuItem;
    actRelEstoque1: TMenuItem;
    actRelVendas1: TMenuItem;
    actConfiguracoes1: TMenuItem;
    actFinalizarSistema1: TMenuItem;
    btnFinalizarSistema: TSpeedButton;
    ImageList: TImageList;
    procedure actFinalizarSistemaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actCadUsuarioExecute(Sender: TObject);
  private
    procedure SetConfigInicial;
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

uses
  UnTypesGeral, UnFormCadastroProdutos, UnFormCadastroFornecedor,
  UnFormCadastroCliente, UnformCadastroUsuario;

{$R *.dfm}
{ TFormMenuPrincipal }

procedure TFormMenuPrincipal.actCadClienteExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroCliente);
end;

procedure TFormMenuPrincipal.actCadFornecedorExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroFornecedor);
end;

procedure TFormMenuPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroProdutos);
end;

procedure TFormMenuPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroUsuario);
end;

procedure TFormMenuPrincipal.actFinalizarSistemaExecute(Sender: TObject);
begin
  close;
end;

procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  SetConfigInicial;
end;

procedure TFormMenuPrincipal.SetConfigInicial;
begin
  lblData.Caption := 'Data: ' + DateToStr(now);
end;

end.
