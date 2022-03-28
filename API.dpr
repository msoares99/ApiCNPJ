program API;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPRINCIPAL in 'uPRINCIPAL.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
