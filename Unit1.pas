unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Button4: TButton;
    Button2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form6.Show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form7.Show();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.Show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form4.Show()
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20) + ord('a'));

  caption := title;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // Unsupported
end;

end.
