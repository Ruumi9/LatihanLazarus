unit Unit13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, StdCtrls, EditBtn, dateutils;

type

  { TForm13 }

  TForm13 = class(TForm)
    btnHasil: TButton;
    btnTambah: TButton;
    Button3: TButton;
    edCalendar: TDateEdit;
    edHari: TEdit;
    edBulan: TEdit;
    edTahun: TEdit;
    edTambahHari: TEdit;
    edHasilTambah: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;


    procedure btnHasilClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
    tanggal, tanggalStlhTambah: TDateTime;
    hari, bulan, tahun: string;
    tambahTanggal: integer;
  public
    { public declarations }
    nama: string;
  end;

var
  Form13: TForm13;

implementation

{$R *.lfm}

{ TForm13 }
uses Unit12;

procedure TForm13.FormShow(Sender: TObject);
begin
  Form13.Position := poOwnerFormCenter;
  Label2.Caption := 'Halo, ' + nama;
end;

procedure TForm13.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Form12.Show;
end;

procedure TForm13.btnHasilClick(Sender: TObject);
begin
  if TryStrToDate(edCalendar.Text, tanggal) then
  begin
    hari := FormatDateTime('d', tanggal);
    bulan := FormatDateTime('m', tanggal);
    tahun := FormatDateTime('yyyy', tanggal);
    edHari.Text := hari;
    edBulan.Text := bulan;
    edTahun.Text := tahun;
    btnTambah.Enabled := True;
  end
  else
    ShowMessage('Inputan tidak valid');
end;

procedure TForm13.btnTambahClick(Sender: TObject);
begin
  tambahTanggal := StrToInt(edTambahHari.Text);
  tanggalStlhTambah := IncDay(tanggal, tambahTanggal);
  edHasilTambah.Text := FormatDateTime('dd mmmm yyyy', tanggalStlhTambah);

end;

procedure TForm13.Button3Click(Sender: TObject);
begin
  Form13.Close;
end;

end.
