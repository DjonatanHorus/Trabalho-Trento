{ ------------------------------------------------------








  UNIT: UnFormPadraoCadastro
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }

unit UnFormPadraoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  UnDmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, UnFormPadraoFramework;

type
  TFormPadraoCadastro = class(TFormPadraoFramwork)
    pnlOpcoes: TPanel;
    pgcFormCadastro: TPageControl;
    tsConsultas: TTabSheet;
    pnlConsultas: TPanel;
    dbConsultas: TDBGrid;
    tsCadastro: TTabSheet;
    pgcCadastro: TPageControl;
    pnlCadastro: TPanel;
    tsCadastroPrincipal: TTabSheet;
    cbxTipoFiltro: TComboBox;
    edtConsultas: TEdit;
    gprFiltro: TGroupBox;
    SqlCadastro: TFDQuery;
    dsCadastro: TDataSource;
    pnlFoter: TPanel;
    pgbAguarde: TProgressBar;
    cbxModoFiltro: TComboBox;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCanselar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnSair: TSpeedButton;
    btnDeletar: TSpeedButton;
    actCadastro: TActionList;
    actSalvar: TAction;
    actEditar: TAction;
    actNovo: TAction;
    actCanselar: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actSair: TAction;
    btnFiltrar: TSpeedButton;
    opdCarregarArquivo: TOpenDialog;
    actAvancar: TAction;
    actUltimo: TAction;
    actVoltar: TAction;
    actPrimeiro: TAction;
    actPesquisar: TAction;
    lblStatus: TLabel;
    gpbConsultar: TGroupBox;
    SQLConsultas: TFDQuery;
    dsConsultas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCanselarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAvancarExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actVoltarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure edtConsultasChange(Sender: TObject);
  private
    FCampoFiltro: string;
  public
  protected
    property CampoFiltro: string read FCampoFiltro write FCampoFiltro;
    procedure SetConfigInicial; virtual;
    procedure FiltrarSQL(ATextoFiltro, ANomeTabela: string); virtual;
    procedure CarregarItemComboBox(ATextExibicao, ANomeItem: string); virtual;
    procedure ConfigVisual; virtual;
    procedure ValidarCamposTexto(Sender: TObject; dbeEdit: TEdit;
      ANomeCampo, ATexto: string); virtual;
    procedure ValidarEmail(Sender: TObject; dbeEdit: TEdit;
      ANomeCampo, ATextoEmail: string); virtual;
    procedure CarregarBarraProgresso; virtual;
    procedure ControlaLabelStatusFrom;
    procedure ValidarCampos; virtual;
    procedure InserirValoresFields; virtual;
  end;

var
  FormPadraoCadastro: TFormPadraoCadastro;
  LCoutListItems: array [0 .. 10] of string;

implementation

uses
  UnTypesGeral;

var
  I: integer;
{$R *.dfm}

  { ------------------------------------------------------
    METODO: ValidarCampos
    AUTOR: Djonatan Willenz
    OBJETIVO:
    DATA: 13/04/2020
    NOTAS: Criação do método.
    ------------------------------------------------------ }
procedure TFormPadraoCadastro.ValidarCampos;
begin

end;

{ ------------------------------------------------------
  METODO: actAvancarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actAvancarExecute(Sender: TObject);
begin
  SqlCadastro.Next;
end;

{ ------------------------------------------------------
  METODO: actCanselarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actCanselarExecute(Sender: TObject);
begin
  SqlCadastro.Cancel;
  SetConfigInicial;
  tsConsultas.Show;
  CarregarBarraProgresso;
end;

{ ------------------------------------------------------
  METODO: actEditarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actEditarExecute(Sender: TObject);
begin
  SqlCadastro.Edit;
  SetConfigInicial;
end;

{ ------------------------------------------------------
  METODO: actExcluirExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actExcluirExecute(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir o Registro ?', mtInformation, mbYesNo, 0, mbYes)
    = mrYes then
  begin
    try
      SqlCadastro.Delete;
      actSalvar.Execute;
      SetConfigInicial;
      CarregarBarraProgresso;
    except
      ShowMessage('Erro não foi possivel completar exclusão');
    end;
  end;
end;

{ ------------------------------------------------------
  METODO: actImprimirExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actImprimirExecute(Sender: TObject);
begin
  ShowMessage('Não Disponivel nesta Versão!!');
end;

{ ------------------------------------------------------
  METODO: actNovoExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actNovoExecute(Sender: TObject);
begin
  tsCadastro.Show;
  SqlCadastro.Insert;
  SetConfigInicial;
end;

{ ------------------------------------------------------
  METODO: actPrimeiroExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actPrimeiroExecute(Sender: TObject);
begin
  SqlCadastro.First;
end;

{ ------------------------------------------------------
  METODO: actSairExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actSairExecute(Sender: TObject);
begin
  if SqlCadastro.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Existem dados não salvos, Deseja sair sem salvar ?',
      mtWarning, mbYesNo, 0, mbYes) = mrYes then
    begin
      actCanselar.Execute;
      Close;
    end;
  end
  else
    Close;
end;

{ ------------------------------------------------------
  METODO: actSalvarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actSalvarExecute(Sender: TObject);
begin
  CarregarBarraProgresso;
  if dsCadastro.State in [dsInsert, dsEdit] then
  begin
    SqlCadastro.Post;
    SQLConsultas.Active := False;
    SQLConsultas.Active := True;
    // SqlCadastro.ApplyUpdates(-1);
    SetConfigInicial;
    tsConsultas.Show;
    // TGTypeGeral.SetFocusCampo(Sender, edtConsultas);
  end;
end;

{ ------------------------------------------------------
  METODO: actUltimoExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actUltimoExecute(Sender: TObject);
begin
  SqlCadastro.Last;
end;

{ ------------------------------------------------------
  METODO: actVoltarExecute
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.actVoltarExecute(Sender: TObject);
begin
  SqlCadastro.Prior;
end;

{ ------------------------------------------------------
  METODO: CarregarBarraProgresso
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.CarregarBarraProgresso;
var
  I: integer;
begin
  I := 50;
  while I < 100 do
  begin
    pgbAguarde.Position := I;
    Sleep(1);
    I := I + 3;
  end;
  pgbAguarde.Position := 0;
end;

{ ------------------------------------------------------
  METODO: CarregarItemComboBox
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.CarregarItemComboBox(ATextExibicao,
  ANomeItem: string);
begin
  cbxTipoFiltro.Items.Add(ATextExibicao);
  LCoutListItems[I] := ANomeItem;
  I := I + 1;
end;

{ ------------------------------------------------------
  METODO: ConfigVisual
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.ConfigVisual;
begin
  tsConsultas.TabVisible := False;
  tsCadastro.TabVisible := False;
  tsConsultas.Show;
  cbxTipoFiltro.ItemIndex := 0;
  cbxModoFiltro.ItemIndex := 0;
end;

{ ------------------------------------------------------
  METODO: ControlaLabelStatusFrom
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.ControlaLabelStatusFrom;
begin
  case SqlCadastro.State of
    dsInsert:
      lblStatus.Caption := 'Inserindo Registro  ';
    dsEdit:
      lblStatus.Caption := 'Editando Registro  ';
    dsBrowse:
      lblStatus.Caption := 'Navegando  ';
  end;
  if dsConsultas.State = dsFilter then
    lblStatus.Caption := 'Consultado Registro  ';
end;

{ ------------------------------------------------------
  METODO: edtConsultasChange
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.edtConsultasChange(Sender: TObject);
begin
  btnFiltrar.Enabled := edtConsultas.Text <> '';
end;

{ ------------------------------------------------------
  METODO: FiltrarSQL
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.FiltrarSQL(ATextoFiltro, ANomeTabela: string);
begin
  with SQLConsultas do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT *');
    sql.Add('FROM ' + ANomeTabela);
    if edtConsultas.Text <> EmptyStr then
    begin
      sql.Add('WHERE ' + ANomeTabela + '.' + LCoutListItems
        [cbxModoFiltro.ItemIndex]);

      case cbxModoFiltro.ItemIndex of
        1:
          sql.Add('LIKE ' + QuotedStr(ATextoFiltro + '%'));
        2:
          sql.Add('LIKE ' + QuotedStr('%' + ATextoFiltro + '%'));
        3:
          sql.Add('LIKE ' + QuotedStr('%' + ATextoFiltro));
        4:
          sql.Add('= ' + ATextoFiltro);
      end;
    end;
    Open();
    Active := True;
  end;
end;

{ ------------------------------------------------------
  METODO: FormShow
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.FormShow(Sender: TObject);
begin
  SetConfigInicial;
  ConfigVisual;
end;

{ ------------------------------------------------------
  METODO: InserirValoresFields
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.InserirValoresFields;
begin
end;

{ ------------------------------------------------------
  METODO: SetConfigInicial
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.SetConfigInicial;
begin
  btnNovo.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnEditar.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnSalvar.Enabled := SqlCadastro.State in [dsInsert, dsEdit];
  btnCanselar.Enabled := SqlCadastro.State in [dsInsert, dsEdit];
  btnImprimir.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnDeletar.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnPrimeiro.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnAvancar.Enabled := not(SqlCadastro.State in [dsInsert]);
  btnVoltar.Enabled := not(SqlCadastro.State in [dsInsert]);
  btnUltimo.Enabled := not(SqlCadastro.State in [dsInsert]);
  ControlaLabelStatusFrom;
end;

{ ------------------------------------------------------
  METODO: ValidarCamposTexto
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.ValidarCamposTexto(Sender: TObject;
  dbeEdit: TEdit; ANomeCampo, ATexto: string);
begin
  if ATexto.Length = 0 then
    ShowMessage('Campo [' + ANomeCampo + '] é de preemchimento obrigatório');
end;

{ ------------------------------------------------------
  METODO: ValidarEmail
  AUTOR: Djonatan Willenz
  OBJETIVO:
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
procedure TFormPadraoCadastro.ValidarEmail(Sender: TObject; dbeEdit: TEdit;
  ANomeCampo, ATextoEmail: string);
var
  I: integer;
  LValidou: Boolean;
begin
  LValidou := True;
  for I := 0 to ATextoEmail.Length do
  begin
    if ATextoEmail[I] = '@' then
      exit
    else
      LValidou := False;
  end;
  if LValidou then
    ShowMessage('Campo [' + ANomeCampo + '] é de preemchimento obrigatório');
end;

initialization

RegisterClass(TFormPadraoCadastro);

finalization

UnRegisterClass(TFormPadraoCadastro);

end.
