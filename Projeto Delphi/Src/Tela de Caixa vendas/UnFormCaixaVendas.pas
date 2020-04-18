unit UnFormCaixaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFormCaixaVenda = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lblBuscar: TPanel;
    pnlSubtotal: TPanel;
    pnlTotais: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaVenda: TFormCaixaVenda;

implementation

{$R *.dfm}

end.
