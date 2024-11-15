unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  len: integer = 25;
  title: string;
  a: integer;

implementation

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  a := a + 1;

  Label2.Caption := IntToStr(a);
end;

procedure TForm4.Timer2Timer(Sender: TObject);
var b: integer;
begin
  b := a + 1;

  Form4.Caption := IntToStr(a);
end;

procedure TForm4.Timer3Timer(Sender: TObject);
begin
  sleep(500);
end;

procedure TForm4.Timer4Timer(Sender: TObject);
begin
  sleep(500);
end;

procedure TForm4.Timer5Timer(Sender: TObject);
begin
  sleep(500);
end;

procedure TForm4.Timer6Timer(Sender: TObject);
begin
  sleep(500);
end;

procedure TForm4.Timer7Timer(Sender: TObject);
begin
  sleep(500);
end;

procedure TForm4.Timer8Timer(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

end.
