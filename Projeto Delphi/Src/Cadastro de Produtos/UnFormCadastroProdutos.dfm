inherited FormCadastroProdutos: TFormCadastroProdutos
  Caption = 'Cadastro de produtos'
  ClientHeight = 581
  ClientWidth = 716
  ExplicitWidth = 722
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    Left = 646
    Height = 563
  end
  inherited pgcFormCadastro: TPageControl
    Width = 646
    Height = 563
    inherited tsConsultas: TTabSheet
      ExplicitWidth = 638
      ExplicitHeight = 535
      inherited pnlConsultas: TPanel
        Width = 638
      end
      inherited dbConsultas: TDBGrid
        Width = 638
        Height = 432
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited pgcCadastro: TPageControl
        Width = 638
        Height = 486
      end
      inherited pnlCadastro: TPanel
        Width = 638
      end
    end
  end
  inherited pnlFoter: TPanel
    Top = 563
    Width = 716
  end
end
