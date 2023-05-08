unit monolito.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  Tfrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuMesas: TMenuItem;
    mnuAjuda: TMenuItem;
    menuMesas: TMenuItem;
    pnlMesas: TPanel;
    ImageList1: TImageList;
    imgDisp1: TImage;
    Label1: TLabel;
    pnlMesaDisponivel: TPanel;
    pnlMesaDisponivel1: TPanel;
    imgDisp: TImage;
    lblMesasNome: TLabel;
    pnlMesaIndisponivel: TPanel;
    imgIndp: TImage;
    Label2: TLabel;
    pnlMesasIndisponivel1: TPanel;
    Image1: TImage;
    Label3: TLabel;
    procedure menuMesasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

uses
  monolito.View.Mesas, monolito.View.Splash;

{$R *.dfm}

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
 formSplash  := TformSplash.Create(nil);
 try
   formSplash.ShowModal;
 finally
   FreeAndNil(formSplash);
 end;
end;

procedure Tfrmprincipal.Image1Click(Sender: TObject);
begin

  formMesas.pnlPrincipal.ActiveCard := formMesas.cardCadastro;
end;

procedure Tfrmprincipal.menuMesasClick(Sender: TObject);
begin
          formMesas.Show;
end;

end.
