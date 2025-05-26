unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, StdCtrls, EditBtn, dateutils;

type

  { TForm3 }

  TForm3 = class(TForm)
    btnHitung: TButton;
    EdDateAwal: TDateEdit;
    EdDateAkhir: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LbHariTrunc: TLabel;
    Label5: TLabel;
    LbHariDaysB: TLabel;
    Label7: TLabel;
    procedure btnHitungClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.btnHitungClick(Sender: TObject);
var
  tglAwal,tglAkhir: TDateTime;
  selisihTrunc,selisihBetwn: Integer;
begin
     tglAkhir:= StrToDate(EdDateAkhir.Text);
     tglAwal:=StrToDate(EdDateAwal.Text);
     selisihTrunc:= trunc(tglAwal)-trunc(tglAkhir);
     selisihBetwn:= DaysBetween(tglAwal, tglAkhir);
     LbHariTrunc.Caption:= IntToStr(selisihTrunc) + ' Hari';
     LbHariDaysB.Caption:= IntToStr(selisihBetwn) + ' Hari';
end;

end.

