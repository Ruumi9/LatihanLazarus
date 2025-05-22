unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Clear: TButton;
    Lnama: TLabel;
    Lumur: TLabel;
    Kirim: TButton;
    EBNama: TEdit;
    LabelAkhir: TLabel;
    thnLahir: TEdit;
    LabelAwal: TLabel;
    LinpNama: TLabel;
    thnSkg: TEdit;
    procedure ClearClick(Sender: TObject);
    procedure KirimClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.KirimClick(Sender: TObject);
Var
Nama:string;
TahunAwal,TahunAkhir,umur:integer;
begin
    Nama:= EBNama.Text;
    TahunAwal := StrToInt(thnLahir.Text);
    TahunAkhir := StrToInt(thnSkg.Text);

    umur := TahunAkhir - TahunAwal;

    Lnama.Caption := 'Nama : ' + Nama;
    Lumur.Caption := 'Umur : ' + IntToStr(umur);


end;

procedure TForm2.ClearClick(Sender: TObject);
begin
     Lnama.Caption := 'Nama';
     Lumur.Caption := 'Umur';
       EBNama.Caption := '';
       thnLahir.Caption := '';
       thnSkg.Caption := '';
end;

end.

