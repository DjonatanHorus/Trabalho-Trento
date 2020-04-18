unit UnDmTypes;

interface

uses
  System.SysUtils, System.Classes, UnDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmConsultas = class(TDataModule)
    FdSqlCon: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConsultas: TDmConsultas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
