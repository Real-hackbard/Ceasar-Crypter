unit Unit1;

interface
uses Windows, Messages, SysUtils, Classes, Graphics, Controls,
     Forms, Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    lblShift: TLabel; edtShift: TEdit;
    lblPlain: TLabel; edtPlain: TEdit;
    lblCipher: TLabel; edtCipher: TEdit;
    btnEncode: TButton; btnDecode: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Encode(Sender: TObject);
    procedure Decode(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    private
    { Private declarations }
    public
    { Public declarations }

  end;

var Form1 : TForm1;
        v : integer = 3;

implementation
{$R *.dfm}

procedure TForm1.Encode(Sender: TObject);
var i,len,n : integer;
    klar,geheim : string;
begin
  v := StrToInt(edtShift.Text);
  klar := edtPlain.Text;
  geheim := klar;
  len := length (klar);
  for i:=1 to len do
    begin
      // Determine the ASCII number n of klar[i]
      n := ord (klar[i]);
      // Alphabet end exceeded -> Correction
      n := 97 + (n + v - 97) mod 26;
      // Set i-th character
      geheim[i] := chr (n);
    end;
    // Output ciphertext
  edtCipher.Text := geheim;
end;

procedure TForm1.Decode(Sender: TObject);
var i,len,n : integer;
    klar,geheim : string;
begin
  v := StrToInt(edtShift.Text);
  geheim := edtCipher.Text;
  klar := geheim;
  len := length (geheim);
  for i:=1 to len do
    begin
      // Determine the ASCII number n of secret[i]
      n := ord (geheim[i]);
      // Start exceeded -> correction
      n := 97 + (n - v - 97 + 26) mod 26;
      // Set i-th character
      klar[i] := chr (n);
    end;
    // Output plain text
  edtPlain.Text := klar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  btnEncode.Click;
end;

end.


