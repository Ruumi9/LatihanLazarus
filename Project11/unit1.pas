unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, EditBtn,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnBeli: TButton;
    btnClear: TButton;
    btnClose: TButton;
    cbBaju: TComboBox;
    cbCelana: TComboBox;
    edDate: TDateEdit;
    edHgCelana: TEdit;
    edTotalHg: TEdit;
    edJmlCelana: TEdit;
    edJmlBaju: TEdit;
    edTtlHgCelana: TEdit;
    edTtlHgBaju: TEdit;
    edHgBaju: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnBeliClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cbBajuChange(Sender: TObject);
    procedure cbCelanaChange(Sender: TObject);
    procedure edJmlBajuChange(Sender: TObject);
    procedure edJmlCelanaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
    var
     hargaBaju, hargaCelana: Integer;
     jmlBaju, ttlHgBaju: Integer;
     jmlCelana, ttlHgCelana: Integer;
     ttlHg: Integer;
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  tglSkg: String;
begin
   ttlHgBaju:= 0;
   ttlHgCelana:= 0;
  tglSkg:= FormatDateTime('dd/mm/yyy', Date);
  edDate.Text:=tglSkg;

end;

procedure TForm1.cbBajuChange(Sender: TObject);
begin
   case cbBaju.Text of
   'Blouse': hargaBaju:= 60000;
   'Gamis': hargaBaju:=150000;
   'Kemeja': hargaBaju:=45000;
   'Kaos': hargaBaju:=35000;
   end;
   edHgBaju.Text:= IntToStr(hargaBaju);
   edJmlBaju.ReadOnly:= False;
end;

procedure TForm1.btnBeliClick(Sender: TObject);
begin
   ttlHg:= ttlHgBaju + ttlHgCelana;
   edTotalHg.Text:= IntToStr(ttlHg);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
   cbBaju.ItemIndex:= -1;
   cbCelana.ItemIndex:= -1;
   edJmlCelana.ReadOnly:= True;
   edJmlBaju.ReadOnly:= True;
   edJmlBaju.Text:='0';
   edJmlCelana.Text:='0';
   edHgCelana.Text:= '0';
   edHgBaju.Text:= '0';
   edTtlHgBaju.Text:='0';
   edTtlHgCelana.Text:='0';
   edTotalHg.Text:='0';
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.cbCelanaChange(Sender: TObject);
begin
   case cbCelana.Text of
   'Formal': hargaCelana:= 100000;
   'Jogger': hargaCelana:=120000;
   'Cargo': hargaCelana:=130000;
   'Loose': hargaCelana:=80000;
   end;
   edHgCelana.Text:= IntToStr(hargaCelana);
   edJmlCelana.ReadOnly:= False;
end;

procedure TForm1.edJmlBajuChange(Sender: TObject);
begin
   if trim(edJmlBaju.Text) <> '' then
    begin
    jmlBaju:= StrToInt(edJmlBaju.Text);
    ttlHgBaju:=hargaBaju*jmlBaju;
    edTtlHgBaju.Text:=IntToStr(ttlHgBaju);
    end
    else
     begin
     edTtlHgBaju.Text:='0';
    end;
end;

procedure TForm1.edJmlCelanaChange(Sender: TObject);
begin
    if trim(edJmlCelana.Text) <> '' then
    begin
     jmlCelana:= StrToInt(edJmlCelana.Text);
     ttlHgCelana:=hargaCelana*jmlCelana;
     edTtlHgCelana.Text:=IntToStr(ttlHgCelana);
    end
    else
     begin
     edTtlHgCelana.Text:='0';
    end;
end;

end.

