program TP06_EX04;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  nb : Real;
  somme : Real;
  nbnote : Integer;
  moyenne :  Real;
  rep : Char;
  sortie : Boolean;

begin

  writeln('Saisir une suite de notes : ');
  readln(nb);
  somme := 0;
  nbnote := 0;
  rep := 'o';
  sortie := False;

  while (sortie <> True) do
  begin

    if nb = -1 then
    begin

      writeln('-1 doit-il être pris en compte ? o/n');
      readln(rep);

      if rep  = 'o' then
      begin
        somme := somme + nb;
        nbnote := nbnote + 1;
        readln(nb);
      end
      else
      begin
        sortie := True;
      end;

    end

    else
    begin
      somme := somme + nb;
      nbnote := nbnote + 1;
      readln(nb);
    end;

  end;


  if nbnote = 0 then
  begin
    writeln('Aucune note n''a été saisi.');
  end
  else
  begin
    moyenne := somme / nbnote;
    writeln('La moyenne est de : ', moyenne : 8 : 2);
  end;

  readln;

end.
