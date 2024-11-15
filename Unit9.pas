unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellAPI;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  title: string;
  len: integer = 25;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', PChar(Edit1.Text), nil, nil, SW_NORMAL);
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  Form9.Close();
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  OpenDialog1.Execute();

  Edit1.Text := OpenDialog1.FileName;
end;

procedure TForm9.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

end.
