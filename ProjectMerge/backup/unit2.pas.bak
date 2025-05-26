unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,dateutils;

type

  { TForm2 }

  TForm2 = class(TForm)
    btnKirim: TButton;
    EdAlamat: TEdit;
    EdThAwal: TEdit;
    EdNama: TEdit;
  Label1: TLabel;
  Label2: TLabel;
  Label3: TLabel;
  Label4: TLabel;
  LbNama: TLabel;
  LbAlamat: TLabel;
  LbUmur: TLabel;
  procedure btnKirimClick(Sender: TObject);
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


procedure TForm2.btnKirimClick(Sender: TObject);
var
  tahunSkg, umur, tahunLhr: Integer;
  nama, alamat: String;
begin
  tahunSkg:= YearOf(Date);
  tahunLhr:= StrToInt(EdThAwal.Text);
  nama:= EdNama.Text;
  alamat:= EdAlamat.Text;
  umur:= tahunSkg - tahunLhr;
  LbNama.Caption:= 'Nama : ' + nama;
  LbAlamat.Caption:= 'Alamat: ' + alamat;
  LbUmur.Caption:= 'Umur: ' + IntToStr(umur);
end;

end.

