unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    btnCetak: TButton;
    cbKelamin: TComboBox;
    edBiaya: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbJurusan: TLabel;
    LbKelamin: TLabel;
    rgJurusan: TRadioGroup;
    procedure btnCetakClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.lfm}

{ TForm8 }

procedure TForm8.btnCetakClick(Sender: TObject);
var
  jurusan, kelamin: string;
  biaya: Integer;
begin
  case rgJurusan.ItemIndex of
    0:
    begin
      biaya := 10000;
      jurusan := 'Sistem Informasi';
    end;
    1:
    begin
      biaya := 8000;
      jurusan := 'Pendidikan Teknik Mesin';
    end;
    2:
    begin
      biaya := 12000;
      jurusan := 'Teknik Mesin';
    end;
  end;
  case cbKelamin.Text of
    'Laki-laki':
    begin
      biaya := biaya + 1000;
      kelamin := 'Laki-laki';
    end;
    'Perempuan':
    begin
      biaya := biaya + 3000;
      kelamin := 'Perempuan';
    end;
  end;
  LbJurusan.Caption := jurusan;
  LbKelamin.Caption := kelamin;
  edBiaya.Text := IntToStr(biaya);

end;

end.
