unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPesan: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    cbBaju: TComboBox;
    cbCelana: TComboBox;
    edHargaBaju: TEdit;
    edHargaCelana: TEdit;
    edTotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnHapusClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnPesanClick(Sender: TObject);
    procedure cbBajuChange(Sender: TObject);
    procedure cbCelanaChange(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { private declarations }

  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.cbBajuChange(Sender: TObject);
var
  hargaBaju : Integer;
begin
     case cbBaju.Text of
     'Blouse':begin
       hargaBaju:= 60000;
     end;
     'Gamis':begin
       hargaBaju := 150000;
     end;
     'Kemeja':begin
       hargaBaju:=45000;
     end;
     'Kaos':begin
       hargaBaju:=35000;
     end;
     end;
     edHargaBaju.Text:= IntToStr(hargaBaju);
end;

procedure TForm1.btnPesanClick(Sender: TObject);
var
  hargaBaju, hargaCelana, total:Integer;
begin
 hargaBaju:=StrToInt(edHargaBaju.Text);
 hargaCelana:=StrToInt(edHargaCelana.Text);
 total:=hargaCelana+hargaBaju;

 edTotal.Text:=IntToStr(total);
end;

procedure TForm1.btnHapusClick(Sender: TObject);
begin
  cbBaju.ItemIndex:=-1;
  cbCelana.ItemIndex:=-1;
  edHargaCelana.Text:= '0';
  edHargaBaju.Text:= '0';
  edTotal.Text:='0';
end;

procedure TForm1.btnKeluarClick(Sender: TObject);
begin
  ShowMessage('Keluar');
  close;
end;

procedure TForm1.cbCelanaChange(Sender: TObject);
var
  hargaCelana: Integer;
begin
 case cbCelana.Text of
 'Formal Bahan': hargaCelana:=100000;
 'Jogger': hargaCelana:= 120000;
 'Cargo': hargaCelana:= 130000;
 'Loose': hargaCelana:=80000;
 end;
 edHargaCelana.Text:=IntToStr(hargaCelana);
end;



end.

