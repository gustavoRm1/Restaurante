program Monolito;

uses
  Vcl.Forms,
  monolito.View.Principal in 'monolito.View.Principal.pas' {frmprincipal},
  monolito.View.Mesas in 'monolito.View.Mesas.pas' {formMesas},
  monolito.View.Splash in 'monolito.View.Splash.pas' {formSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(TformMesas, formMesas);
  Application.Run;
end.
