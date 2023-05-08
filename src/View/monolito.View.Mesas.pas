unit monolito.View.Mesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.WinXPanels, System.ImageList, Vcl.ImgList, monolito.View.Principal;

type
  TformMesas = class(TForm)
    pnlPrincipal: TCardPanel;
    cardCadastro: TCard;
    cardPesquisa: TCard;
    pnlPesquisa: TPanel;
    pnlRodape: TPanel;
    pnlPesquisaBotoes: TPanel;
    DBGrid1: TDBGrid;
    editpesquisa: TEdit;
    lblpesquisa: TLabel;
    btnPesquisa: TButton;
    ImageList1: TImageList;
    btnVoltar: TButton;
    btnAdicionar: TButton;
    btnExcluir: TButton;
    btnEditar: TButton;
    Panel1: TPanel;
    btnVoltar2: TButton;
    btnSalvar: TButton;
    pnlCentral: TPanel;
    Button1: TButton;
    pnlTop: TPanel;
    Label1: TLabel;
    Button3: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnVoltar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMesas: TformMesas;

implementation

{$R *.dfm}

procedure TformMesas.btnAdicionarClick(Sender: TObject);
begin
pnlPrincipal.ActiveCard := cardCadastro;
end;

procedure TformMesas.btnEditarClick(Sender: TObject);
begin
pnlPrincipal.ActiveCard := cardCadastro;
end;

procedure TformMesas.btnVoltarClick(Sender: TObject);
begin
pnlPrincipal.SendToBack;
end;

procedure TformMesas.btnVoltar2Click(Sender: TObject);
begin
 close;
end;

end.
