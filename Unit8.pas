unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PsAPI, Vcl.ExtCtrls,
  Vcl.Menus, ShellAPI, Vcl.ComCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    UpdateProcessList: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    ListView1: TListView;
    N16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LoadProcesses;
    procedure UpdateProcessListTimer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  title: string;
  len: integer = 25;

implementation

{$R *.dfm}

uses Unit1, Unit5, Unit9;

procedure TForm8.FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

procedure TForm8.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;

  LoadProcesses;
end;

procedure TForm8.LoadProcesses;
var
  procList: array[0..1023] of DWORD;
  procCount: DWORD;
  i: DWORD;
  procHandle: THandle;
  procName: array[0..MAX_PATH-1] of Char;
begin
  ListView1.Items.Clear();

  if EnumProcesses(@procList, sizeof(procList), procCount) then
  begin
    procCount := procCount div sizeof(DWORD);

    for i := 0 to procCount-1 do
    begin
      procHandle := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, false, procList[i]);

      try
        if GetModuleFileNameEx(procHandle, 0, procName, sizeof(procName) div sizeof(char)) > 0 then
        begin
          with ListView1.Items.Add do
          begin
            Caption := procName;

            SubItems.Add(Format('%d', [procList[i]]));
          end;
        end;
      finally
        CloseHandle(procHandle);
      end;
    end;
  end;
end;

procedure TForm8.N12Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm8.N14Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm8.N16Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm8.N17Click(Sender: TObject);
begin
  Form9.Show();
end;

procedure TForm8.N20Click(Sender: TObject);
begin
  LoadProcesses;
end;

procedure TForm8.N2Click(Sender: TObject);
begin
  LoadProcesses;
end;

procedure TForm8.N4Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 5000;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N5Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 2500;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N6Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 1000;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N7Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 500;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N8Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 55;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.UpdateProcessListTimer(Sender: TObject);
begin
  LoadProcesses;
end;

end.
