program ProjetoSistema;

uses
  Vcl.Forms,
  UnFormMenuPrincipal in '..\Src\Menu Principal\UnFormMenuPrincipal.pas' {FormMenuPrincipal},
  UnDmMenuPrincipal in '..\Src\Menu Principal\UnDmMenuPrincipal.pas' {DmMenuPrincipal: TDataModule},
  UnDmConexao in '..\Src\Conex�o\UnDmConexao.pas' {DmConexao: TDataModule},
  UnFormLoginUsuario in '..\Src\Login Usuario\UnFormLoginUsuario.pas' {Form1},
  UnFormInicializaSistema in '..\Src\Tela Inicializa��o Sistema\UnFormInicializaSistema.pas' {FormInicial},
  UnTypesGeral in '..\Src\Units Types Geral\UnTypesGeral.pas',
  UnTypesValidacoes in '..\Src\Units Types Geral\UnTypesValidacoes.pas',
  UnDmTypes in '..\Src\Units Types Geral\UnDmTypes.pas' {DmConsultas: TDataModule},
  UnFormPadraoFramework in '..\Src\Formularios Padr�o Framework\UnFormPadraoFramework.pas' {FormPadraoFramwork},
  UnFormCadastroProdutos in '..\Src\Cadastro de Produtos\UnFormCadastroProdutos.pas' {FormCadastroProdutos},
  UnFormCadastroCliente in '..\Src\Cadastro de Cliente\UnFormCadastroCliente.pas' {FormCadastroCliente},
  UnFormCadastroFornecedor in '..\Src\Cadastro de Fornecedor\UnFormCadastroFornecedor.pas' {FormCadastroFornecedor},
  UnFormCadastroUsuario in '..\Src\Cadastro Usuario\UnFormCadastroUsuario.pas' {FormCadastroUsuario},
  UnFormPadraoCadastro in '..\Src\Formularios Padr�o Framework\UnFormPadraoCadastro.pas' {FormPadraoCadastro},
  UnFDQueryCon in '..\Src\Units Types Geral\UnFDQueryCon.pas',
  UnFormCaixaVendas in '..\Src\Tela de Caixa vendas\UnFormCaixaVendas.pas' {FormCaixaVenda},
  UnFormCadastroMateriaPrima in '..\Src\Cadastro de Materia Prima\UnFormCadastroMateriaPrima.pas' {FormCadastroMateriaPrima},
  UnFormCadastroReceitas in '..\Src\Cadastro de Receitas\UnFormCadastroReceitas.pas' {FormCadastroReceitas},
  UnFormOrcamentosPedidos in '..\Src\Or�amentos\UnFormOrcamentosPedidos.pas' {FormOrcamentos},
  UnFormCalcularMagemLucro in '..\Src\Calcular Margem de Lucro\UnFormCalcularMagemLucro.pas' {Form4},
  UnFormConfiguracoes in '..\Src\Configura��es\UnFormConfiguracoes.pas' {FormConfiguracoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmMenuPrincipal, DmMenuPrincipal);
  Application.CreateForm(TFormMenuPrincipal, FormMenuPrincipal);
  Application.CreateForm(TFormConfiguracoes, FormConfiguracoes);
  Application.CreateForm(TFormOrcamentos, FormOrcamentos);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormConfiguracoes, FormConfiguracoes);
  Application.Run;

end.
