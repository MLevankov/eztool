unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ShellAPI;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  Form1.Button1.Enabled := true;
  Form1.Button2.Enabled := true;
  Form1.Button3.Enabled := true;
  Form1.Button4.Enabled := true;
  Form1.Button5.Enabled := true;
  Form1.Button6.Enabled := true;
  Form1.Button7.Enabled := true;

  CanClose := true;
end;

procedure TForm5.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

procedure TForm5.Label6Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
  // Unsupported
end;

end.
