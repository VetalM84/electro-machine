unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Save1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  release;
  form3:= nil;  
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
  ii: integer;
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    for ii:= 0 to 10 do
    begin
      form2.Series1.AddXY(strtofloat(form1.grid1.Cells[ii + 1, 2]),
        strtofloat(form1.grid1.Cells[ii + 1, 1]));
    end;
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
var
  ii: integer;
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    for ii:= 0 to 10 do
    begin
      form2.Series2.AddXY(strtofloat(form1.grid2.Cells[ii + 1, 2]),
        strtofloat(form1.grid1.Cells[ii + 1, 1]));
    end;
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var
  ii: integer;
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    for ii:= 0 to 10 do
      form2.Series3.AddXY(strtofloat(form1.grid2.Cells[ii + 1, 1]),
        strtofloat(form1.grid2.Cells[ii + 1, 0]));
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
var
  ii: integer;
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    for ii:= 0 to 10 do
      form2.Series4.AddXY(strtofloat(form1.grid3.Cells[ii + 1, 1]), strtofloat(form1.grid3.Cells[ii + 1, 0]));
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    with form2.Series5 do
    begin
      with form2.Chart1 do
      begin
        LeftAxis.AutomaticMaximum:= false;
        LeftAxis.Maximum:= (p1 + p2 + p3 + p4)/3;
        BottomAxis.AutomaticMaximum:= false;
        BottomAxis.Maximum:= t1 + t2 + t3 + t4 + t0 + t0;
      end;
      AddXY(0, strtofloat(form1.grid4.Cells[1, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]), strtofloat(form1.grid4.Cells[1, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]), strtofloat(form1.grid4.Cells[2, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]), strtofloat(form1.grid4.Cells[2, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]), strtofloat(form1.grid4.Cells[3, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]) + strtofloat(form1.grid4.Cells[8, 1]),
        strtofloat(form1.grid4.Cells[3, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]) + strtofloat(form1.grid4.Cells[8, 1]),
        strtofloat(form1.grid4.Cells[4, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]) + strtofloat(form1.grid4.Cells[8, 1]) +
        strtofloat(form1.grid4.Cells[9, 1]), strtofloat(form1.grid4.Cells[4, 1]));
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]) + strtofloat(form1.grid4.Cells[8, 1]) +
        strtofloat(form1.grid4.Cells[9, 1]), 0);
      AddXY(strtofloat(form1.grid4.Cells[6, 1]) + strtofloat(form1.grid4.Cells[7, 1]) + strtofloat(form1.grid4.Cells[8, 1]) +
        strtofloat(form1.grid4.Cells[9, 1]) + strtofloat(form1.grid4.Cells[5, 1]), 0);
    end;
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
  try
    if form2 = nil then
      form2:= tform2.create(self)
    else
      form2.show;
    with form2.Series6 do
    begin
      AddXY(strtofloat(form1.grid5.Cells[0, 0]), strtofloat(form1.grid5.Cells[0, 1]));
      AddXY(strtofloat(form1.grid5.Cells[1, 0]), strtofloat(form1.grid5.Cells[1, 1]));
      AddXY(strtofloat(form1.grid5.Cells[2, 0]), strtofloat(form1.grid5.Cells[2, 1]));
      AddXY(strtofloat(form1.grid5.Cells[4, 0]), strtofloat(form1.grid5.Cells[4, 1]));
      AddXY(strtofloat(form1.grid5.Cells[5, 0]), strtofloat(form1.grid5.Cells[5, 1]));
      AddXY(strtofloat(form1.grid5.Cells[7, 0]), strtofloat(form1.grid5.Cells[7, 1]));
      AddXY(strtofloat(form1.grid5.Cells[8, 0]), strtofloat(form1.grid5.Cells[8, 1]));
      AddXY(strtofloat(form1.grid5.Cells[10, 0]), strtofloat(form1.grid5.Cells[10, 1]));
      AddXY(strtofloat(form1.grid5.Cells[11, 0]), strtofloat(form1.grid5.Cells[11, 1]));
      AddXY(strtofloat(form1.grid5.Cells[13, 0]), strtofloat(form1.grid5.Cells[13, 1]));
      AddXY(strtofloat(form1.grid5.Cells[14, 0]), strtofloat(form1.grid5.Cells[14, 1]));
    end;
    form2.show;
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
  if save1.Execute then
    form2.Chart1.SaveToBitmapFile(save1.FileName);
end;

end.
