unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type

  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Splitter1: TSplitter;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  chain : integer;
  TableChar : array of char;
  abort : boolean;

implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  u : integer;
  x_ascii, y_ascii : byte;
  c : char;
{$R-}
begin
  if Edit1.Text = '' then
  begin
    Beep;
    ShowMessage('Type Password key please !');
    Exit;
  end;

  if Memo1.Text = '' then
  begin
    Beep;
    ShowMessage('No Data to encrypt !');
    Exit;
  end;

  Edit1.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button6.Enabled := false;
  Button2.Enabled := false;
  Button1.Enabled := false;

  StatusBar1.Panels[4].Text := 'encrypting please wait..';
  Screen.Cursor := crHourGlass;
  abort := false;
  Memo2.Text := '';
  chain := length(Memo1.text) + 2;
  SetLength(TableChar, chain);

    for u := 1 to chain - 1 do
    begin
      c := Memo1.text[u];
      x_ascii := ord(c);
      y_ascii := (x_ascii + StrToInt(Edit1.text)) mod 255;

        while y_ascii < 0 do
           begin
                y_ascii := y_ascii + 255;
           end;

        if abort = true then Exit;
    TableChar[u] := chr(y_ascii);

    end;

    for u := 1 to  chain - 1 do
    begin
      Memo2.Text := Memo2.Text + TableChar[u];
      StatusBar1.Panels[3].Text := IntToStr(u);
      if abort = true then Exit;
      Application.ProcessMessages;
    end;
  Screen.Cursor := crDefault;
  Button3.Enabled := true;
  Button4.Enabled := true;
  Button6.Enabled := true;
  Button2.Enabled := true;
  Button1.Enabled := true;
  Edit1.Enabled := true;
  StatusBar1.Panels[4].Text := 'finish.';
{$R+}
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  u : integer;
  x_ascii,y_ascii : byte;
  c : char;
{$R-}
begin
  if Edit1.Text = '' then
  begin
    Beep;
    ShowMessage('Type Password key please !');
    Exit;
  end;

  if Memo2.Text = '' then
  begin
    Beep;
    ShowMessage('No Data to decrypt !');
    Exit;
  end;

  StatusBar1.Panels[4].Text := 'decrypting please wait..';
  Edit1.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button6.Enabled := false;
  Button1.Enabled := false;

  abort := false;
  Screen.Cursor := crHourGlass;
  Memo1.Text := '';
  chain := length(Memo2.Text);
  SetLength(TableChar, chain - 1);


  for u := 1 to chain - 1 do
    begin
      c := Memo2.text[u];
      x_ascii := ord(c);
      y_ascii := (x_ascii - StrToInt(Edit1.text)) mod 255;

        while y_ascii < 0 do
           begin
                y_ascii := y_ascii + 255;
           end;
      if abort = true then Exit;
      TableChar[u] := chr(y_ascii);
    end;

    for u := 1 to  chain - 1 do
    begin
      Memo1.Text := Memo1.Text + TableChar[u];
      if abort = true then Exit;
      Application.ProcessMessages;
    end;
  Screen.Cursor := crDefault;
{$R+}
  Button3.Enabled := true;
  Button4.Enabled := true;
  Button6.Enabled := true;
  Button1.Enabled := true;
  Edit1.Enabled := true;
  StatusBar1.Panels[4].Text := 'finsh.';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Memo1.Clear;
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    StatusBar1.Panels[1].Text := IntToStr(Memo1.Lines.Count);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo2.Lines.SaveToFile(SaveDialog1.FileName + '.txt');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  abort := true;
  Button3.Enabled := true;
  Button4.Enabled := true;
  Button6.Enabled := true;
  Button2.Enabled := true;
  Button1.Enabled := true;
  Edit1.Enabled := true;
  Screen.Cursor := crDefault;
  StatusBar1.Panels[4].Text := 'abort.';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then
    Key := #0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.DoubleBuffered := true;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := IntToStr(Memo1.Lines.Count);
end;

end.
