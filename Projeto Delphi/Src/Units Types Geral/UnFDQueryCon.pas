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
  UnDmTypes;

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
  DmConsultas.FdsqlCon.SQL.Clear;
  DmConsultas.FdsqlCon.SQL.Add('SELECT MAX(%0:S)');
  DmConsultas.FdsqlCon.SQL.Add('  FROM %0:S');
  DmConsultas.FdsqlCon.Open();

  Try
    Result := DmConsultas.FdsqlCon.FieldByName(ANomeCampoID).AsInteger + 1;
  except
    Result := 0;
  End;
end;

end.
