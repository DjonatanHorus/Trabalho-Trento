{ ------------------------------------------------------
  UNIT: UnFormMenuPrincipal
  AUTOR: Djonatan Willenz
  OBJETIVO: Tela principal do sistema.
  DATA: 13/04/2020
  ------------------------------------------------------ }
unit UnFormMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    SqlConfigUsuario: TFDQuery;
    dsConfigEmpresa: TDataSource;
    SqlConfEmpresa: TFDQuery;
    actCaixaVendas: TAction;
    actHelp: TAction;
    HELP: TMenuItem;
    actCadMateriaPrima: TAction;
    MATERIAPRIMA1: TMenuItem;
    actCadReceitas: TAction;
    Receitas1: TMenuItem;
    Timer: TTimer;
    actGerarOrcamento: TAction;
    Oramento1: TMenuItem;
    procedure actFinalizarSistemaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCaixaVendasExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actCadMateriaPrimaExecute(Sender: TObject);
    procedure actCadReceitasExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actConfiguracoesExecute(Sender: TObject);
    procedure actGerarOrcamentoExecute(Sender: TObject);
  private
    procedure SetConfigInicial;
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

uses
  UnTypesGeral, UnFormCadastroProdutos, UnFormCadastroFornecedor,
  UnFormCadastroCliente, UnformCadastroUsuario, UnDmConexao, UnFormCaixaVendas,
  ShellApi, UnFormCadastroMateriaPrima, UnFormCadastroReceitas,
  UnFormConfiguracoes, UnFormOrcamentosPedidos;

{$R *.dfm}

{ ------------------------------------------------------
  METODO: actCadClienteExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de clientes.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadClienteExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroCliente);
end;

{ ------------------------------------------------------
  METODO: actCadFornecedorExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de fornecedores.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadFornecedorExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroFornecedor);
end;

{ ------------------------------------------------------
  METODO: actCadMateriaPrimaExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de materia prima.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadMateriaPrimaExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroMateriaPrima);
end;

{ ------------------------------------------------------
  METODO: actCadProdutoExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de produtos.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroProdutos);
end;

{ ------------------------------------------------------
  METODO: actCadReceitasExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de receitas.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadReceitasExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroReceitas);
end;

{ ------------------------------------------------------
  METODO: actCadUsuarioExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de usuarios.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroUsuario);
end;

{ ------------------------------------------------------
  METODO: actCaixaVendasExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario caixa de vendas.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actCaixaVendasExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCaixaVenda);
end;

{ ------------------------------------------------------
  METODO: actConfiguracoesExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario Configuracoes.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actConfiguracoesExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormConfiguracoes);
end;

{ ------------------------------------------------------
  METODO: actFinalizarSistemaExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Finalizar o sistema.
  DATA: 13/04/2020
  NOTAS: 13/04/2020 - Cria��o do m�todo.
  NOTAS: 15/04/2020 - Adicionado valida��o para finalizar sistema.
  ---------------------------------------------------------------- }
procedure TFormMenuPrincipal.actFinalizarSistemaExecute(Sender: TObject);
begin
  if MessageDlg('Deseja finalizar o sistema', mtConfirmation, [mbYes, mbNo],
    MB_YESNO) = mrYes then
    close;
end;

{ ------------------------------------------------------
  METODO: actGerarOrcamentoExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir formulario de cadastro de Orcamentos.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.actGerarOrcamentoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormOrcamentos);
end;

{ ------------------------------------------------------
  METODO: actHelpExecute
  AUTOR: Djonatan Willenz
  OBJETIVO: Abrir help do sistema.
  DATA: 13/04/2020
  NOTAS: 13/04/2020 - Cria��o do m�todo.
  ---------------------------------------------------------------- }
procedure TFormMenuPrincipal.actHelpExecute(Sender: TObject);
begin
  ShellExecute(Application.Handle, nil,
    'C:\Trabalho-Trento\Projeto Delphi\Documenta��o\Help\index.html', nil, nil,
    SW_SHOWNORMAL);
end;

{ ------------------------------------------------------
  METODO: FormShow
  AUTOR: Djonatan Willenz
  OBJETIVO: Setar valores inicias ao criar formul�rio.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  SetConfigInicial;
end;

{ ------------------------------------------------------
  METODO: SetConfigInicial
  AUTOR: Djonatan Willenz
  OBJETIVO: Setar valores inicias ao criar formul�rio.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.SetConfigInicial;
begin

  SqlConfigUsuario.close;
  SqlConfigUsuario.SQL.Add('SELECT * FROM USUARIO WHERE IDUSUARIO = 1');
  SqlConfigUsuario.Open();

  SqlConfEmpresa.close;
  SqlConfEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE EMPRESA.IDEMPRESA = 1');
  SqlConfEmpresa.Open();

  lblUsuario.Caption := format('USUARIO: %S-%S', [
    { 0 } FormatCurr('00000', SqlConfigUsuario.FieldByName('IDUSUARIO')
    .AsInteger),
    { 1 } SqlConfigUsuario.FieldByName('NOME').AsString]);

  lblEmpresa.Caption := format('EMPRESA: %S-%S', [
    { 0 } FormatCurr('00000', SqlConfEmpresa.FieldByName('CODEMPRESA').AsFloat),
    { 1 } SqlConfEmpresa.FieldByName('NOME').AsString]);
end;

{ ------------------------------------------------------
  METODO: TimerTimer
  AUTOR: Djonatan Willenz
  OBJETIVO: Eventos para atualizar constantemente.
  DATA: 13/04/2020
  NOTAS: Cria��o do m�todo.
  ------------------------------------------------------ }
procedure TFormMenuPrincipal.TimerTimer(Sender: TObject);
begin
  lblData.Caption := DateTimeToStr(now);
end;

end.
