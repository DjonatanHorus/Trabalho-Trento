object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Trabalho-Trento\Projeto Delphi\Base de Dados\BASEDAD' +
        'OSSISTEMA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 40
  end
end
