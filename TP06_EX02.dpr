program TP06_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  nb : Integer;
  somme : Real ;
  nbnote : Integer;
  moyenne :  Real;

begin

  writeln('Saisir une suite de notes : ');
  readln(nb);
  somme := 0;
  nbnote := 0;

  while ((nb <= 0) OR (nb mod 2 <> 0)) do
  begin

    somme := somme + nb;
    nbnote := nbnote + 1;

    readln(nb);

  end;

  moyenne := somme / nbnote;
  writeln('La moyenne est de : ', moyenne : 8 : 2);

  readln;

end.
