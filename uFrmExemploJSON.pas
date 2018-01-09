unit uFrmExemploJSON;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  System.JSON, Vcl.StdCtrls;

type
  TFrmExemploJSON = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Resultado: String;
  end;

var
  FrmExemploJSON: TFrmExemploJSON;

implementation

{$R *.dfm}

const jsonString = '{"jsonteste":[{"campo1":"valor1"}]}';

procedure TFrmExemploJSON.Button1Click(Sender: TObject);
var
  jsonRaiz,jsonObject: TJSONObject;
  jsArray: TJSONArray;
  i: Integer;
begin
  jsonRaiz := TJSONObject.ParseJSONValue(jsonString) as TJSONObject;
  if(jsonRaiz <> nil)then
  begin
      jsArray := jsonRaiz.GetValue<TJSONArray>('jsonteste') as TJSONArray;
      for i := 0 to jsArray .Count-1 do
      begin
        jsonObject := jsArray.Items[i] as TJSONObject;
        showmessage(jsonObject.GetValue<string>('campo1'));
      end;
  end;
end;


end.
