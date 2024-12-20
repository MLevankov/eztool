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
    PageControl1: TPageControl;
    Run: TTabSheet;
    RunOnce: TTabSheet;
    ListView2: TListView;
    MSoobe: TTabSheet;
    ListView3: TListView;
    Winlogon: TTabSheet;
    ListView4: TListView;
    N13: TMenuItem;
    N14: TMenuItem;
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
    procedure N14Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

uses Unit1, Unit5;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

procedure TForm7.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;

  LoadStartup;
end;

procedure TForm7.LoadStartup;
var
  reg: TRegistry;
  valueNamesA: TStringList;
  i: integer;
  CommaPos: integer;
  WordStart: integer;
  WordEnd: integer;
  result: string;
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

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce', true);

  reg.GetValueNames(valueNamesA);

  for i := 0 to valueNamesA.Count-1 do
  begin
    with ListView2.Items.Add do
    begin
      Caption := valueNamesA[i];

      SubItems.Add(reg.ReadString(valueNamesA[i]));
    end;
  end;

  reg.CloseKey();

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce', true);

  reg.GetValueNames(valueNamesA);

  for i := 0 to valueNamesA.Count-1 do
  begin
    with ListView2.Items.Add do
    begin
      Caption := valueNamesA[i];

      SubItems.Add(reg.ReadString(valueNamesA[i]));
    end;
  end;

  reg.CloseKey();

  reg.OpenKey('SYSTEM\Setup', true);

  with ListView3.Items.Add do
  begin
    Caption := reg.ReadString('CmdLine');
  end;

  reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', true);

  // #1
  CommaPos := Pos(',', reg.ReadString('Shell'));

  WordStart := CommaPos+1;

  while (WordStart<=Length(reg.ReadString('Shell'))) and (reg.ReadString('Shell')[WordStart] = ' ') do
  begin
    Inc(WordStart);
  end;

  WordEnd := WordStart;

  while (WordEnd<=Length(reg.ReadString('Shell'))) and (reg.ReadString('Shell')[WordEnd] = ' ') do
  begin
    Inc(WordEnd);
  end;

  result := Copy(reg.ReadString('Shell'), WordStart, WordEnd-WordStart);

  with ListView4.Items.Add do
  begin
    Caption := result;
  end;

  // #2
  CommaPos := Pos(',', reg.ReadString('Userinit'));

  WordStart := CommaPos+1;

  while (WordStart<=Length(reg.ReadString('Userinit'))) and (reg.ReadString('Userinit')[WordStart] = ' ') do
  begin
    Inc(WordStart);
  end;

  WordEnd := WordStart;

  while (WordEnd<=Length(reg.ReadString('Userinit'))) and (reg.ReadString('Userinit')[WordEnd] = ' ') do
  begin
    Inc(WordEnd);
  end;

  result := Copy(reg.ReadString('Userinit'), WordStart, WordEnd-WordStart);

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

procedure TForm7.N14Click(Sender: TObject);
begin
  Application.Terminate();
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

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce', false);

  reg.DeleteValue(ProgramName);

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce', false);

  reg.DeleteValue(ProgramName);

  reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', false);

  reg.WriteString('Shell', 'explorer.exe');
  reg.WriteString('Userinit', 'C:\Windows\system32\userinit.exe,');

  reg.CloseKey();
  reg.Free();
end;

end.
