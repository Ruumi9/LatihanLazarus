unit Unit14;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm14 }

  TForm14 = class(TForm)
    btnHitung: TButton;
    btnSelesai: TButton;
    cbKamar: TComboBox;
    edHgKamar: TEdit;
    edMenginap: TEdit;
    edSubTotal: TEdit;
    edKetDiskon: TEdit;
    edTotal: TEdit;
    edDiskon: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnHitungClick(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
    procedure cbKamarChange(Sender: TObject);
    procedure edMenginapChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
    hgKamar, lamaMenginap, subTotal, total, tipeKamar: integer;
    diskon: Double;
    ketDiskon: string;
  public
    { public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.lfm}

{ TForm14 }

procedure TForm14.FormCreate(Sender: TObject);
begin

end;

procedure TForm14.btnHitungClick(Sender: TObject);

begin
  //  hitung subTotal
  subTotal := hgKamar * lamaMenginap;
  edSubTotal.Text := IntToStr(subTotal);
  //  hitung Diskon
  if subTotal >= 1000000 then
  begin
    ketDiskon := 'Diskon';
    diskon := subTotal * 0.1;
  end
  else
  begin
    ketDiskon := 'Tidak Diskon';
    diskon := 0;
  end;
  total := subTotal - trunc(diskon);
  edKetDiskon.Text := ketDiskon;
  edDiskon.Text := FloatToStr(diskon);
  edTotal.Text := IntToStr(total);

end;

procedure TForm14.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TForm14.cbKamarChange(Sender: TObject);
begin
  tipeKamar := cbKamar.ItemIndex;
  case tipeKamar of
    0: hgKamar := 300000;
    1: hgKamar := 350000;
    2: hgKamar := 400000;
    3: hgKamar := 500000;
    else
      hgKamar := 0;
  end;
  edHgKamar.Text := IntToStr(hgKamar);
  edMenginap.ReadOnly := False;
end;

procedure TForm14.edMenginapChange(Sender: TObject);

begin
  if TryStrToInt(edMenginap.Text, lamaMenginap) and (lamaMenginap >= 1) then
  begin
    btnHitung.Enabled := True;
  end
  else
  begin
    edMenginap.Text := '';
  end;

end;

end.



