program TP06_EX02_VERSION3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Function EstPair(laValeur : Integer) : Boolean;

begin
  Result := ((LaValeur mod 2) <> 0);
end;

Var
  nb : Integer;
  somme : Real;
  nbnote : Integer;
  moyenne : Real;


begin

  writeln('Saisir une suite de nombre nb :');
  readln(nb);
  somme := 0;
  nbnote := 0;

  while (nb <= 0) OR EstPair(nb) do
  begin

    somme := somme + nb;
    nbnote := nbnote + 1;
    readln(nb);

  end;

  moyenne := somme/nbnote;
  writeln('La moyenne est de : ', moyenne : 3 : 2);

  readln;

end.



