inherited FormCadastroMateriaPrima: TFormCadastroMateriaPrima
  Caption = 'Cadastro de materia prima'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    ExplicitHeight = 520
  end
  inherited pgcFormCadastro: TPageControl
    ExplicitWidth = 630
    inherited tsConsultas: TTabSheet
      ExplicitWidth = 622
      inherited pnlConsultas: TPanel
        ExplicitWidth = 622
        inherited gprFiltro: TGroupBox
          ExplicitWidth = 191
          inherited cbxTipoFiltro: TComboBox
            ExplicitWidth = 151
          end
          inherited cbxModoFiltro: TComboBox
            ExplicitWidth = 151
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 622
      inherited pgcCadastro: TPageControl
        ExplicitWidth = 622
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitTop = 24
          ExplicitWidth = 614
          ExplicitHeight = 424
        end
      end
      inherited pnlCadastro: TPanel
        ExplicitWidth = 622
      end
    end
  end
end
