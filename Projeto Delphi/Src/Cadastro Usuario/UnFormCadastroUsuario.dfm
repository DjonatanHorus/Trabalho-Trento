inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de usuario'
  ClientHeight = 599
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    Height = 581
  end
  inherited pgcFormCadastro: TPageControl
    Height = 581
    inherited tsConsultas: TTabSheet
      ExplicitHeight = 553
      inherited dbConsultas: TDBGrid
        Height = 450
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited pgcCadastro: TPageControl
        Height = 504
      end
    end
  end
  inherited pnlFoter: TPanel
    Top = 581
  end
end
