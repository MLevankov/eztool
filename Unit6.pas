unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, ShellAPI, Registry;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  len: integer = 25;
  title: string;
  PATH_TO_LIMITATIONS: string = 'C:\MLevankov\EZTool\limitations.txt';

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
var
  reg: TRegistry;
  valueNamesA: TStrings;
begin
  valueNamesA := TStringList.Create;
  reg := TRegistry.Create;

  if not CheckBox1.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\Windows\System');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\Windows\Explorer');
    reg.GetValueNames(valueNamesA);

    reg.CloseKey();

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\MMC');
    reg.GetValueNames(valueNamesA);

    reg.CloseKey();
    reg.Free();

    ListBox1.Items.LoadFromFile(PATH_TO_LIMITATIONS);

    valueNamesA.Free();

    Label2.Caption := 'Статус: Поиск завершен!';
  end else begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');

    reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.DeleteKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer');

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\Windows\System');
    reg.GetValueNames(valueNamesA);

    valueNamesA.SaveToFile(PATH_TO_LIMITATIONS);

    reg.CloseKey();

    reg.DeleteKey('SOFTWARE\Policies\Microsoft\Windows\System');

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\Windows\Explorer');
    reg.GetValueNames(valueNamesA);

    reg.CloseKey();

    reg.DeleteKey('SOFTWARE\Policies\Microsoft\Windows\Explorer');

    reg.OpenKeyReadOnly('SOFTWARE\Policies\Microsoft\MMC');
    reg.GetValueNames(valueNamesA);

    reg.CloseKey();

    reg.DeleteKey('SOFTWARE\Policies\Microsoft\MMC');

    reg.Free();

    ListBox1.Items.LoadFromFile(PATH_TO_LIMITATIONS);

    valueNamesA.Free();

    Label2.Caption := 'Статус: Поиск и разблокировка ограничений завершены!';
  end;
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    Button1.Caption := 'Поиск и разблокировка ограничений';
  end else begin
    Button1.Caption := 'Поиск ограничений';
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20) + ord('a'));

  caption := title;
end;

procedure TForm6.N2Click(Sender: TObject);
begin
  Form2.Show();
  Form6.Close();
end;

procedure TForm6.N4Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm6.N6Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm6.N8Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

end.
