unit monolito.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TformSplash = class(TForm)
    pnlPrincipal: TPanel;
    imgLogo: TImage;
    lblAplicacao: TLabel;
    ProgressBar1: TProgressBar;
    lblStatus: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSplash: TformSplash;

implementation

{$R *.dfm}

procedure TformSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then

begin
   ProgressBar1.Stepit;
   case ProgressBar1.Position of
     10 : lblStatus.Caption := 'Carregando arquivos...';
     25 : lblStatus.Caption := 'Conectando ao Banco de Dados...';
     45 : lblStatus.Caption := 'Carregando Configurações...';
     75 : lblStatus.Caption := 'iniciando o Sistema...';
   end;
   end;
   if ProgressBar1.Position = 100  then
   close;
end;

end.
