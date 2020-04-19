{ ------------------------------------------------------
  UNIT UnFDQueryCon
  AUTOR: Djonatan Willenz
  OBJETIVO: Unit para consultas ao banco com métodos.
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
unit UnFDQueryCon;

interface

uses
  UnDmTypes, System.SysUtils;

type
  TConsultas = class
    class function BuscarProximoID(ANomeTabela, ANomeCampoID: string): integer;
  end;

implementation

{ ------------------------------------------------------
  METODO: BuscarProximoID
  AUTOR: Djonatan Willenz
  OBJETIVO: Buscar o próximo ID para inserir registro.
  DATA: 13/04/2020
  NOTAS: Criação do método.
  ------------------------------------------------------ }
class function TConsultas.BuscarProximoID(ANomeTabela,
  ANomeCampoID: string): integer;
begin
  DmConsultas.FdsqlCon.Close;
  DmConsultas.FdsqlCon.SQL.Text :=
    Format('SELECT MAX(%0:S)AS %0:S FROM  %1:S', [
    { 0 } ANomeCampoID,
    { 1 } ANomeTabela]);
  DmConsultas.FdsqlCon.Open();

  Try
    Result := DmConsultas.FdsqlCon.FieldByName(ANomeCampoID).AsInteger + 1;
  except
    Result := 0;
  End;
end;

end.
