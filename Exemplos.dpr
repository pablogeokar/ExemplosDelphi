program Exemplos;

uses
  Vcl.Forms,
  uFrmExemploJSON in 'uFrmExemploJSON.pas' {FrmExemploJSON};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploJSON, FrmExemploJSON);
  Application.Run;
end.
