unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, EditBtn, StdCtrls, dateutils;

type

  { TForm11 }

  TForm11 = class(TForm)
    btnHasil: TButton;
    btnClear: TButton;
    cbBaju: TComboBox;
    cbCelana: TComboBox;
    edDate: TDateEdit;
    edHgBaju: TEdit;
    edHgCelana: TEdit;
    edJmBaju: TEdit;
    edJmlCelana: TEdit;
    edSubBaju: TEdit;
    edSubCelana: TEdit;
    edTotal: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnClearClick(Sender: TObject);
    procedure btnHasilClick(Sender: TObject);
    procedure cbBajuChange(Sender: TObject);
    procedure cbCelanaChange(Sender: TObject);
    procedure edJmBajuChange(Sender: TObject);
    procedure edJmlCelanaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label10Click(Sender: TObject);
  private
    { private declarations }
  var
    hargaBaju, hargaCelana, subBaju, subCelana, Total, jmlBaju, jmlCelana: integer;
  public
    { public declarations }

  end;

var
  Form11: TForm11;

implementation

{$R *.lfm}

{ TForm11 }

procedure TForm11.Label10Click(Sender: TObject);
begin

end;

procedure TForm11.FormCreate(Sender: TObject);
var
  tanggal: TDateTime;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  tanggal := date;
  edDate.Text := DateToStr(tanggal);
end;

procedure TForm11.cbBajuChange(Sender: TObject);
begin
  case cbBaju.Items[cbBaju.ItemIndex] of
    'Blouse': hargaBaju := 100000;
    'Gamis': hargaBaju := 120000;
    'Kemeja': hargaBaju := 130000;
    'Kaos': hargaBaju := 80000;
  end;
  edJmBaju.ReadOnly := False;
  edHgBaju.Text := IntToStr(hargaBaju);
  if(jmlBaju > 0) then
    edJmBajuChange(cbBaju);
end;

procedure TForm11.btnHasilClick(Sender: TObject);
begin
  Total := subCelana + subBaju;
  edTotal.Text := IntToStr(Total);
end;

procedure TForm11.btnClearClick(Sender: TObject);
begin
  cbCelana.ItemIndex := -1;
  cbBaju.ItemIndex := -1;
  edHgCelana.Text := '';
  edHgBaju.Text := '';
  edJmlCelana.Text := '';
  edJmBaju.Text := '';
  edSubCelana.Text := '';
  edSubBaju.Text := '';
  edTotal.Text:='';
end;

procedure TForm11.cbCelanaChange(Sender: TObject);
begin
  case cbCelana.Items[cbCelana.ItemIndex] of
    'Formal': hargaCelana := 80000;
    'Jogger': hargaCelana := 60000;
    'Cargo': hargaCelana := 50000;
    'Loose': hargaCelana := 45000;
  end;
  edJmlCelana.ReadOnly := False;
  edHgCelana.Text := IntToStr(hargaCelana);
  if(jmlCelana > 0) then
    edJmlCelanaChange(cbCelana);
end;

procedure TForm11.edJmBajuChange(Sender: TObject);
begin
  if (Trim(edJmBaju.Text)) = '' then
    jmlBaju := 0
  else
    jmlBaju := StrToInt(edJmBaju.Text);

  subBaju := hargaBaju * jmlBaju;
  edSubBaju.Text := IntToStr(subBaju);
end;

procedure TForm11.edJmlCelanaChange(Sender: TObject);
begin
  if (Trim(edJmlCelana.Text)) = '' then
    jmlCelana := 0
  else
    jmlCelana := StrToInt(edJmlCelana.Text);

  subCelana := hargaCelana * jmlCelana;
  edSubCelana.Text := IntToStr(subCelana);
end;

end.

