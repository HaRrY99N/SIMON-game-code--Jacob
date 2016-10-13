program Test1;
uses Crt;
type
  Number = array [0..50] of string;
var RandomSequence:Number;

Procedure GenerateSequence();
var NextColour,a:integer;
begin
  a:=0;
  Randomize;
  while a < 51 do
    begin
      NextColour:=Random(4)+1;
      case NextColour of
      1: RandomSequence[a]:='R';
      2: RandomSequence[a]:='G';
      3: RandomSequence[a]:='B';
      4: RandomSequence[a]:='Y';
      end;
      a+=1;

    end;



end;

Procedure CheckGuess();
begin

end;

Procedure VerifyInput();
begin

end;

Procedure ShowColour();
begin

end;

Procedure WriteGreen();
var y,x:integer;
begin
  TextBackground(LightGreen);
  x:=1;
  y:=1;
  while y < 26 do
  begin
    gotoxy(x,y);
    for x:=1 to 40 do
        write(' ');
        y+=1;
  end;
end;

Procedure WriteRed();
var a,y,x:integer;
begin
  TextBackground(LightRed);
  x:=41;
  y:=1;
  while y < 26 do
  begin
    gotoxy(x,y);
    for a:=41 to 80 do
        write(' ');
        y+=1;
  end;
end;

Procedure WriteBlue();
var a,y,x:integer;
begin
  TextBackground(LightBlue);
  x:=1;
  y:=26;
  while y < 51 do
  begin
    gotoxy(x,y);
    for a:=1 to 40 do
        write(' ');
        y+=1;
  end;
end;

Procedure WriteYellow();
var a,y,x:integer;
begin
  TextBackground(Yellow);
  x:=41;
  y:=26;
  while y < 51 do
  begin
    gotoxy(x,y);
    for a:=41 to 80 do
        write(' ');
        y+=1;
  end;
  gotoxy(1,51);
  TextBackground(Black);
  for a:= 1 to 81 do
    write(' ');

end;

var a:integer;
begin
WriteGreen();
WriteRed();
WriteBlue();
WriteYellow();
GenerateSequence();
gotoxy(27,50);
TextColor(White);
write('Welcome to the SIMON game!');

for a:=1 to 50 do
    write(RandomSequence[a]);
readln();
end.

