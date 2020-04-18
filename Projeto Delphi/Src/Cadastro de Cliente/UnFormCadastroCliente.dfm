inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de cliente'
  ClientWidth = 604
  ExplicitWidth = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    Left = 540
  end
  inherited pgcFormCadastro: TPageControl
    Width = 540
    inherited tsConsultas: TTabSheet
      inherited pnlConsultas: TPanel
        Width = 532
        inherited gprFiltro: TGroupBox
          Width = 141
          ExplicitWidth = 167
          inherited cbxTipoFiltro: TComboBox
            Width = 124
          end
          inherited cbxModoFiltro: TComboBox
            Width = 124
          end
        end
        inherited gpbConsultar: TGroupBox
          Left = 175
          Width = 347
          ExplicitLeft = 175
          ExplicitWidth = 373
          inherited btnFiltrar: TSpeedButton
            Left = 256
            Width = 85
            ExplicitLeft = 256
            ExplicitWidth = 111
          end
          inherited edtConsultas: TEdit
            Left = 9
            Width = 212
            ExplicitLeft = 9
            ExplicitWidth = 238
          end
        end
      end
      inherited dbConsultas: TDBGrid
        Width = 532
      end
    end
    inherited tsCadastro: TTabSheet
      inherited pgcCadastro: TPageControl
        Width = 532
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitLeft = 28
          ExplicitTop = 30
          ExplicitWidth = 524
          ExplicitHeight = 304
          object lblCodigo: TLabel
            Left = 19
            Top = 29
            Width = 37
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object lblNome: TLabel
            Left = 19
            Top = 75
            Width = 77
            Height = 13
            Caption = 'Nome completo:'
          end
          object lblCpf: TLabel
            Left = 19
            Top = 121
            Width = 23
            Height = 13
            Caption = 'CPF:'
          end
          object lblEndereco: TLabel
            Left = 19
            Top = 168
            Width = 49
            Height = 13
            Caption = 'Endere'#231'o:'
          end
          object lblBairro: TLabel
            Left = 302
            Top = 168
            Width = 32
            Height = 13
            Caption = 'Bairro:'
          end
          object Label3: TLabel
            Left = 19
            Top = 216
            Width = 37
            Height = 13
            Caption = 'Cidade:'
          end
          object lblEstado: TLabel
            Left = 192
            Top = 216
            Width = 54
            Height = 13
            Caption = 'Estado/UF:'
          end
          object lblCEP: TLabel
            Left = 363
            Top = 216
            Width = 23
            Height = 13
            Caption = 'CEP:'
          end
          object Label1: TLabel
            Left = 296
            Top = 75
            Width = 84
            Height = 13
            Caption = 'Data nascimento:'
          end
          object lblAtualizacoes: TLabel
            Left = 19
            Top = 272
            Width = 110
            Height = 13
            Caption = 'Ultima atualiza'#231#227'o......'
          end
          object edtCodigo: TMaskEdit
            Left = 19
            Top = 48
            Width = 97
            Height = 21
            TabOrder = 0
            Text = ''
          end
          object edtNome: TEdit
            Left = 19
            Top = 92
            Width = 263
            Height = 21
            TabOrder = 1
          end
          object edtBairro: TEdit
            Left = 302
            Top = 187
            Width = 211
            Height = 21
            TabOrder = 2
          end
          object edtCPF: TMaskEdit
            Left = 19
            Top = 140
            Width = 166
            Height = 21
            TabOrder = 3
            Text = ''
          end
          object edtEndereco: TEdit
            Left = 19
            Top = 187
            Width = 263
            Height = 21
            TabOrder = 4
          end
          object edtCidade: TEdit
            Left = 19
            Top = 235
            Width = 150
            Height = 21
            TabOrder = 5
          end
          object edtEstado: TEdit
            Left = 192
            Top = 235
            Width = 150
            Height = 21
            TabOrder = 6
          end
          object edtCep: TEdit
            Left = 363
            Top = 235
            Width = 150
            Height = 21
            TabOrder = 7
          end
          object dtpDataNasc: TDateTimePicker
            Left = 296
            Top = 92
            Width = 153
            Height = 21
            Date = 43939.000000000000000000
            Time = 0.653743576389388200
            TabOrder = 8
          end
        end
      end
      inherited pnlCadastro: TPanel
        Width = 532
      end
    end
  end
  inherited pnlFoter: TPanel
    Width = 604
  end
  inherited SqlCadastro: TFDQuery
    Left = 232
    Top = 72
  end
  inherited dsCadastro: TDataSource
    Left = 200
    Top = 65528
  end
  inherited actCadastro: TActionList
    Left = 168
    Top = 65528
  end
  inherited opdCarregarArquivo: TOpenDialog
    Left = 136
    Top = 65529
  end
  inherited SQLConsultas: TFDQuery
    Left = 256
    Top = 65528
  end
  inherited dsConsultas: TDataSource
    Left = 280
    Top = 65528
  end
end
