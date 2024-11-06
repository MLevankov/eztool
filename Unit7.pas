unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, ShellAPI, Registry,
  Vcl.ComCtrls;

type
  TForm7 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Label1: TLabel;
    N9: TMenuItem;
    PopupMenu1: TPopupMenu;
    N10: TMenuItem;
    N12: TMenuItem;
    ListView1: TListView;
    N2: TMenuItem;
    N11: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure LoadStartup;
    procedure RemoveFromStartup(const ProgramName: string);
    procedure N2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit5;

procedure TForm7.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20) + ord('a'));

  caption := title;

  LoadStartup;
end;

procedure TForm7.LoadStartup;
var
  reg: TRegistry;
  valueNamesA: TStringList;
  i: integer;
begin
  ListView1.Items.Clear;

  valueNamesA := TStringList.Create;

  reg := TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', true);

  reg.GetValueNames(valueNamesA);

  for i := 0 to valueNamesA.Count-1 do
  begin
    with ListView1.Items.Add do
    begin
      Caption := valueNamesA[i];

      SubItems.Add(reg.ReadString(valueNamesA[i]));
    end;
  end;

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', true);

  reg.GetValueNames(valueNamesA);

  for i := 0 to valueNamesA.Count-1 do
  begin
    with ListView1.Items.Add do
    begin
      Caption := valueNamesA[i];

      SubItems.Add(reg.ReadString(valueNamesA[i]));
    end;
  end;

  reg.CloseKey();
  reg.Free();
end;

procedure TForm7.N10Click(Sender: TObject);
begin
  if ListView1.Selected<>nil then
  begin
    RemoveFromStartup(ListView1.Selected.Caption);
    LoadStartup;
  end;
end;

procedure TForm7.N11Click(Sender: TObject);
var reg: TRegistry;
begin
  reg := TRegistry.Create(KEY_WRITE or KEY_WOW64_64KEY);

  reg.RootKey := HKEY_CURRENT_USER;

  reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');
  reg.CreateKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');

  reg.RootKey := HKEY_LOCAL_MACHINE;

  reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');
  reg.CreateKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');

  reg.CloseKey();
  reg.Free();
end;

procedure TForm7.N12Click(Sender: TObject);
begin
  LoadStartup;
end;

procedure TForm7.N2Click(Sender: TObject);
var reg: TRegistry;
begin
  reg := TRegistry.Create(KEY_WRITE or KEY_WOW64_64KEY);

  reg.RootKey := HKEY_CURRENT_USER;

  reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');
  reg.CreateKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');

  reg.RootKey := HKEY_LOCAL_MACHINE;

  reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');
  reg.CreateKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run');

  reg.CloseKey();
  reg.Free();
end;

procedure TForm7.N4Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm7.N6Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm7.N8Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm7.N9Click(Sender: TObject);
begin
  LoadStartup;
end;

procedure TForm7.RemoveFromStartup(const ProgramName: string);
var reg: TRegistry;
begin
  reg := TRegistry.Create(KEY_WRITE or KEY_WOW64_64KEY);

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', false);

  reg.DeleteValue(ProgramName);

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', false);

  reg.DeleteValue(ProgramName);

  reg.CloseKey();
  reg.Free();
end;

end.
