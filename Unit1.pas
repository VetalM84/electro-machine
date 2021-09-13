unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xpman, math, ComCtrls, Grids, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Edit15: TEdit;
    Label15: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    Edit13: TEdit;
    Label13: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit16: TEdit;
    Label16: TLabel;
    Edit17: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit18: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    TabSheet3: TTabSheet;
    Grid3: TStringGrid;
    Grid4: TStringGrid;
    Label30: TLabel;
    TabSheet4: TTabSheet;
    Grid5: TStringGrid;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vrLength, vrSelStart: byte;
  Pn, Nh, Ih, kpd, cosY, M_p, M_min, M_k{или M_max}, Ki, J, m, i,
  sh, n0, Sk, A, Mn, wn, M_, q, S, w_, x, Mc, Mmo, Mmn, w, nnep, nmn,
  jpr, jm, dt, tp, ww, Md, dAp, dApo, dApp, dArp, dUdop, Pekv,
  p1, p2, p3, p4, t0, t1, t2, t3, t4, dU, dPn, tauun, taui, AA,
  dp1, dp2, dp3, dp4, tau1, tau2, tau3, tau4, T_n, T_0, tau0, tt, tt1,
  dp
  : double;

implementation

uses Unit2, Chart, Unit3;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  ii, ii1: integer;
begin
  try
    button2.Enabled:= true;
    s:= 0;
    w:= 0;
    Pn:= strtofloat(edit1.text) * 1000;
    Nh:= strtofloat(edit2.text);
    Ih:= strtofloat(edit3.text);
    kpd:= strtofloat(edit4.text);
    cosY:= strtofloat(edit5.text);
    M_p:= strtofloat(edit6.text);
    M_min:= strtofloat(edit7.text);
    M_k:= strtofloat(edit8.text);
    Ki:= strtofloat(edit9.text);
    J:= strtofloat(edit10.text);
    m:= strtofloat(edit11.text);
    nmn:= strtofloat(edit12.text);
    x:= strtofloat(edit13.text);
    nnep:= strtofloat(edit14.text);
    Mmo:= strtofloat(edit15.text);
    Mmn:= strtofloat(edit16.text);
    Jm:= strtofloat(edit18.text);
    with grid4 do
    begin
      p1:= strtofloat(cells[1, 1]);
      p2:= strtofloat(cells[2, 1]);
      p3:= strtofloat(cells[3, 1]);
      p4:= strtofloat(cells[4, 1]);
      t0:= strtofloat(cells[5, 1]);
      t1:= strtofloat(cells[6, 1]);
      t2:= strtofloat(cells[7, 1]);
      t3:= strtofloat(cells[8, 1]);
      t4:= strtofloat(cells[9, 1]);
      dU:= strtofloat(cells[10, 1]);
    end;

    {МХ ел. дв.}
    n0:= 1500;
    Sh:= (n0 - nh)/n0;
    A:=  (M_k - 1)/((M_k/M_p) - 1);
    Sk:= (Sh + sqrt(Sh * A))/(1 + sqrt(Sh * A));
    wn:= 0.105 * Nh;
    i:= Nh/nmn;
    Mn:= pn/wn;
    q:= ((1/Sk + Sk) * M_p/M_k - 2)/(1 - M_p/M_k);
    for ii:= 0 to 10 do
    begin
      w_:= roundto((1 - S) * wn, -1);
      if s = 0 then
        M_:= 0
      else
        M_:= roundto(((M_k * (2 + q))/((S/Sk) + (Sk/S) + q)) * Mn, -1);
      with grid1 do
      begin
        Cols[ii + 1].Text:= floattostr(S);
        Cells[ii + 1, 1]:= floattostr(w_);
        Cells[ii + 1, 2]:= floattostr(M_);
      end;
      s:= s + 0.1;
    end;

    // мх. рабочей машины
    ww:= wn/10;
    for ii:= 0 to 10 do
    begin
      Mc:= roundto((1/(i * nnep)) * (Mmo + ((Mmn - Mmo) * power(w/wn, x))), -2);
      if md < 0 then
        md:= 0;
      with grid2 do
      begin
        grid3.Cols[ii + 1].Text:= floattostr(roundto(w, -1));
        Cols[ii + 1].Text:= floattostr(roundto(w, -1));
        Cells[ii + 1, 1]:= floattostr(Mc);
      end;
      w:= w + ww;
    end;

    ii1:= 11;
    ii:= 0;
    repeat
      md:= strtofloat(grid1.Cells[ii1, 2]) - strtofloat(grid2.Cells[ii + 1, 1]);
      grid2.cells[ii1, 2]:= floattostr(Md);
      ii:= ii + 1;
      ii1:= ii1 - 1;
    until
      ii1 = 0;

    //длительность разгона
    jpr:= roundto(1.2 * (j/100) + (jm/sqr(i)), -2);
    for ii:= 0 to 10 do
    begin
      md:= strtofloat(grid2.Cells[ii + 1, 2]){Мс};
      dt:= roundto(jpr * (strtofloat(grid2.Cells[ii + 1, 0]){w_}/md){Mд}, -3);
      grid3.Cells[ii + 1, 1]:= floattostr(dt);
      tp:= tp + strtofloat(grid3.Cells[ii + 1, 1]);
      dApp:= dApp + strtofloat(grid2.Cells[ii + 1, 1]) * strtofloat(grid3.Cells[ii + 1, 1]) * strtofloat(grid3.Cells[ii + 1, 0]);
    end;
    dAp:= jpr * sqr(wn) + dApp;
    dApo:= Jpr * sqr(wn);
    dArp:= 3 * Jpr * sqr(wn);
  {  dUdop:= (1 - sqrt((??? + 0.25)/M_p)) * 100;}
    Pekv:= roundto(sqrt((sqr(p1) * t1 + sqr(p2) * t2 + sqr(p3) * t3 + sqr(p4) * t4)/(t1 + t2 + t3 + t4 + 0.5 * t0)), -2);
    dPn:= roundto(((1 - (kpd/100))/(kpd/100)) * Pn, 0);
    dp1:= roundto((p1 * ((1 - (kpd/100))/(kpd/100))) * 1000, 0);
    dp2:= roundto((p2 * ((1 - (kpd/100))/(kpd/100))) * 1000, 0);
    dp3:= roundto((p3 * ((1 - (kpd/100))/(kpd/100))) * 1000, 0);
    dp4:= roundto((p4 * ((1 - (kpd/100))/(kpd/100))) * 1000, 0);
    AA:= roundto((pn * (1 - (kpd/100)))/((kpd/100) * 115), -1);
    tau1:= roundto(dp1/AA, 0);
    tau2:= roundto(dp2/AA, 0);
    tau3:= roundto(dp3/AA, 0);
    tau4:= roundto(dp4/AA, 0);
    T_n:= roundto(((m * 480 * 75 * (kpd/100))/(pn * (1 - (kpd/100))))/60, 0);
    T_0:= roundto(T_n/0.5, 0);

    dp:= t1/2;
    grid5.Cells[1, 0]:= floattostr(dp);

    dp:= t1;
    grid5.Cells[2, 0]:= floattostr(dp);
    grid5.Cells[3, 0]:= floattostr(dp);

    dp:= t1 + t2/2;
    grid5.Cells[4, 0]:= floattostr(dp);

    dp:= t1 + t2;
    grid5.Cells[5, 0]:= floattostr(dp);
    grid5.Cells[6, 0]:= floattostr(dp);

    dp:= dp + t3/2;
    grid5.Cells[7, 0]:= floattostr(dp);

    dp:= t1 + t2 + t3;
    grid5.Cells[8, 0]:= floattostr(dp);
    grid5.Cells[9, 0]:= floattostr(dp);

    dp:= dp + t4/2;
    grid5.Cells[10, 0]:= floattostr(dp);

    dp:= dp + t4/2;
    grid5.Cells[11, 0]:= floattostr(dp);
    grid5.Cells[12, 0]:= floattostr(dp);

    dp:= dp + t0/2;
    grid5.Cells[13, 0]:= floattostr(dp);

    dp:= dp + t0/2;
    grid5.Cells[14, 0]:= floattostr(dp);
////////////////////////////
    tt:= strtofloat(grid5.Cells[0, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[1, 0]); //t
    tau0:= roundto(tt + (tau1 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[1, 1]:= floattostr(tau0);

    tt:= strtofloat(grid5.Cells[0, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[2, 0]); //t
    tau0:= roundto(tt + (tau1 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[2, 1]:= floattostr(tau0);

  grid5.Cells[3, 1]:= floattostr(tau0);
///////////////////////////////
    tt:= strtofloat(grid5.Cells[3, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[4, 0]); //t
    tau0:= roundto(tt + (tau2 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[4, 1]:= floattostr(tau0);

    tt:= strtofloat(grid5.Cells[3, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[5, 0]); //t
    tau0:= roundto(tt + (tau2 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[5, 1]:= floattostr(tau0);

  grid5.Cells[6, 1]:= floattostr(tau0);
///////////////////////////////
    tt:= strtofloat(grid5.Cells[6, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[7, 0]); //t
    tau0:= roundto(tt + (tau3 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[7, 1]:= floattostr(tau0);

    tt:= strtofloat(grid5.Cells[6, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[8, 0]); //t
    tau0:= roundto(tt + (tau3 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[8, 1]:= floattostr(tau0);

  grid5.Cells[9, 1]:= floattostr(tau0);
///////////////////////////////
    tt:= strtofloat(grid5.Cells[9, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[10, 0]); //t
    tau0:= roundto(tt + (tau4 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[10, 1]:= floattostr(tau0);

    tt:= strtofloat(grid5.Cells[9, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[11, 0]); //t
    tau0:= roundto(tt + (tau4 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[11, 1]:= floattostr(tau0);

  grid5.Cells[12, 1]:= floattostr(tau0);
///////////////////////////////
    tt:= strtofloat(grid5.Cells[12, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[13, 0]); //t
    tau0:= roundto(tt + (0 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[13, 1]:= floattostr(tau0);

    tt:= strtofloat(grid5.Cells[12, 1]); //ТАУо
    tt1:= strtofloat(grid5.Cells[14, 0]); //t
    tau0:= roundto(tt + (0 - tt) * (1 - exp(-tt1/T_n)), -1);
    grid5.Cells[14, 1]:= floattostr(tau0);
///////////////////////////////
  except
    messagebox(handle, 'Одно из полей ввода не имеет значения!' + #13 +
                       '        Проверьте все поля ввода.', 'Ошибка', 16);
  end;


end;





procedure TForm1.FormCreate(Sender: TObject);
begin
  with grid1 do
  begin
    rows[0].Text:= 'S';
    rows[1].Text:= 'w';
    rows[2].Text:= 'M';
  end;
  with grid2 do
  begin
    rows[0].Text:= 'w';
    rows[1].Text:= 'Mc';
    rows[2].Text:= 'Mд';
  end;
  with grid3 do
  begin
    rows[0].Text:= 'w';
    rows[1].Text:= 'delta t';
  end;
  with grid4 do
  begin
    cells[1, 0]:= 'P1';
    cells[2, 0]:= 'P2';
    cells[3, 0]:= 'P3';
    cells[4, 0]:= 'P4';
    cells[5, 0]:= 't0';
    cells[6, 0]:= 't1';
    cells[7, 0]:= 't2';
    cells[8, 0]:= 't3';
    cells[9, 0]:= 't4';
    cells[10, 0]:= 'U, %';
  end;

  grid5.cells[0, 1]:= '0';
  grid5.Cells[0, 0]:= '0';

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  release;
  form1:= nil;
end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TEdit do
  begin
    vrLength := Length(Text); //определяем длину текста
    vrSelStart := SelStart; //определяем положение курсора
  end;
  case Key of

    '0'..'9':;
    ',', '.':
      begin
        if (vrSelStart = 0) or (vrLength = 0) then
          Key := #0 //"погасить" клавишу
        else
          Key := #44; //всегда заменять точку на запятую
      end;
    #8: ; //позволить удаление знаков клавишей 'Back Space'
  else
    Key := #0; //"погасить" все остальные клавиши
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if form3 = nil then
  begin
    form3:= tform3.Create(self);
    form3.Show;
  end
  else
    form3.Show;
end;

end.
