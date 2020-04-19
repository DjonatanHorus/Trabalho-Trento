{ ------------------------------------------------------
  UNIT: UnFormCadastroCliente
  AUTOR: Djonatan Willenz
  OBJETIVO: Unit Cadastrar clientes.
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
unit UnFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadraoCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFormCadastroCliente = class(TFormPadraoCadastro)
    edtCodigo: TMaskEdit;
    lblCodigo: TLabel;
    edtNome: TEdit;
    lblNome: TLabel;
    edtBairro: TEdit;
    edtCPF: TMaskEdit;
    lblCpf: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    edtEndereco: TEdit;
    Label3: TLabel;
    edtCidade: TEdit;
    lblEstado: TLabel;
    edtEstado: TEdit;
    lblCEP: TLabel;
    edtCep: TEdit;
    Label1: TLabel;
    dtpDataNasc: TDateTimePicker;
    lblAtualizacoes: TLabel;
    edtTelefone: TMaskEdit;
    lblTelefone: TLabel;
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    procedure ValidarCampos; override;
    procedure SetarConfig;
    procedure InserirValoresFields; override;
  public
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

uses
  UnTypesGeral, UnFDQueryCon;
{$R *.dfm}

{ ------------------------------------------------------
  METODO: actSalvarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormCadastroCliente.actSalvarExecute(Sender: TObject);
begin
  ValidarCampos;
  InserirValoresFields;
  inherited;
end;

{ ------------------------------------------------------
  METODO: InserirValoresFields
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  SetarConfig;
  inherited;
end;

procedure TFormCadastroCliente.InserirValoresFields;
begin
  SqlCadastro.FieldByName('IDCLIENTE').AsInteger :=
    TConsultas.BuscarProximoID('CLIENTE', 'IDCLIENTE');
  SqlCadastro.FieldByName('NOME').AsString := edtNome.Text;
  SqlCadastro.FieldByName('DATA').AsDateTime := dtpDataNasc.Date;
  SqlCadastro.FieldByName('CPF').AsString := edtCPF.Text;
  SqlCadastro.FieldByName('ENDERECO').AsString := edtEndereco.Text;
  SqlCadastro.FieldByName('UF').AsString := edtEstado.Text;
  SqlCadastro.FieldByName('CEP').AsString := edtCep.Text;
  SqlCadastro.FieldByName('CODIGO').AsString := edtCodigo.Text;
  SqlCadastro.FieldByName('TELEFONE').AsString := edtTelefone.Text;
  SqlCadastro.FieldByName('BAIRRO').AsString := edtBairro.Text;
  inherited;
end;

{ ------------------------------------------------------
  METODO: SetarConfig
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormCadastroCliente.SetarConfig;
begin
  SqlCadastro.Close;
  SqlCadastro.SQL.Text := 'SELECT * FROM CLIENTE';
  SqlCadastro.Open();
end;

{ ------------------------------------------------------
  METODO: ValidarCampos
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormCadastroCliente.ValidarCampos;
begin
end;

end.
