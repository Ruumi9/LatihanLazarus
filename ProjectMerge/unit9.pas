unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    btnHasil: TButton;
    btnClear: TButton;
    edNilai1: TEdit;
    edOperasi: TEdit;
    edNilai2: TEdit;
    edHasil: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Hasil: TLabel;
    procedure btnClearClick(Sender: TObject);
    procedure btnHasilClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.lfm}

{ TForm9 }

procedure TForm9.btnHasilClick(Sender: TObject);
var
  angka1, angka2, total: double;
  operand: string;
begin
  if (Trim(edNilai1.Text)) = '' then
    angka1 := 0
  else
    angka1 := StrToInt(edNilai1.Text);
  if (Trim(edNilai2.Text)) = '' then
    angka2 := 0
  else
    angka2 := StrToInt(edNilai2.Text);

  if (Trim(edOperasi.Text)) = '' then
    operand := '+'
  else
    operand := edOperasi.Text;

  case operand of
    '+': total := angka1 + angka2;
    '-': total := angka1 - angka2;
    '*': total := angka1 * angka2;
    '/': total := angka1 / angka2;
    else
      ShowMessage('operator tidak valid');
      total:= 0;
  end;

  edHasil.Text:= FloatToStr(total);

end;

procedure TForm9.btnClearClick(Sender: TObject);
begin
  edNilai2.Text:= '';
  edNilai1.Text:= '';
  edHasil.Text:= '';
  edOperasi.Text:= '';
end;

end.

