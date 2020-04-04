program ProjetoSistema;





uses
  Vcl.Forms,
  UnFormMenuPrincipal in '..\Src\Menu Principal\UnFormMenuPrincipal.pas' {FormMenuPrincipal},
  UnDmMenuPrincipal in '..\Src\Menu Principal\UnDmMenuPrincipal.pas' {DmMenuPrincipal: TDataModule},
  UnDmConexao in '..\Src\Conex�o\UnDmConexao.pas' {DmConexao: TDataModule},
  UnFormLoginUsuario in '..\Src\Login Usuario\UnFormLoginUsuario.pas' {Form1},
  UnFormInicializaSistema in '..\Src\Tela Inicializa��o Sistema\UnFormInicializaSistema.pas' {Form2},
  UnTypesGeral in '..\Src\Units Types Geral\UnTypesGeral.pas',
  UnTypesValidacoes in '..\Src\Units Types Geral\UnTypesValidacoes.pas',
  UnDmTypes in '..\Src\Units Types Geral\UnDmTypes.pas' {DataModule2: TDataModule},
  UnFormPadraoFramework in '..\Src\Formularios Padr�o Framework\UnFormPadraoFramework.pas' {FormPadraoFramwork},
  UnFormCadastroProdutos in '..\Src\Cadastro de Produtos\UnFormCadastroProdutos.pas' {FormCadastroProdutos},
  UnFormCadastroCliente in '..\Src\Cadastro de Cliente\UnFormCadastroCliente.pas' {FormCadastroCliente},
  UnFormCadastroFornecedor in '..\Src\Cadastro de Fornecedor\UnFormCadastroFornecedor.pas' {Form3},
  UnFormCadastroUsuario in '..\Src\Cadastro Usuario\UnFormCadastroUsuario.pas' {FormCadastroUsuario},
  UnFormPadraoCadastro in '..\Src\Formularios Padr�o Framework\UnFormPadraoCadastro.pas' {FormPadraoCadastro},
  UnFDQueryCon in '..\Src\Units Types Geral\UnFDQueryCon.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuPrincipal, FormMenuPrincipal);
  Application.CreateForm(TDmMenuPrincipal, DmMenuPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFormPadraoFramwork, FormPadraoFramwork);
  Application.CreateForm(TFormCadastroProdutos, FormCadastroProdutos);
  Application.CreateForm(TFormCadastroCliente, FormCadastroCliente);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFormCadastroUsuario, FormCadastroUsuario);
  Application.CreateForm(TFormPadraoCadastro, FormPadraoCadastro);
  Application.Run;
end.
