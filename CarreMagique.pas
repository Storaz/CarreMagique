{PROGRAMME CarreMagique

//BUT: Afficher un carré magique d'une dimension impaire avec différents chiffres en suivant des règles précises.
//ENTREE: Aucune
//SORTIE: Nombres s'affichant dans les carrés


Const

        dim=5;


Type

    Tableau2dim=Tableau[1..dim,1..dim]de ENTIER;


PROCEDURE initTab(var Tab:Tableau2dim):ENTIER;

    VAR
        x:ENTIER;
        y:ENTIER;

    DEBUT

    POUR x DE 1 A dim FAIRE
           DEBUT
           POUR y DE 1 A dim FAIRE
            DEBUT
            T1[x,y]:=0;
            FIN;
        FIN;

    FIN;

FINPROCEDURE


PROCEDURE milieu(var Tab:Tableau2dim):ENTIER;

    VAR
        x:ENTIER;
        y:ENTIER;

    DEBUT
        x<-(dim div 2);
        y<-(dim div 2)+1;
        ECRIRE x,y;
    FIN

FINPROCEDURE


PROCEDURE  place(var Tab:Tableau2dim):ENTIER;
    
        VAR
            x:ENTIER;
            y:ENTIER;
            compteur:ENTIER;

        DEBUT

            POUR compteur DE 2 A (dim*dim) FAIRE
                DEBUT
                    
                    SI (x+1)>dim ALORS FAIRE
                        DEBUT
                            x<-0
                        FIN
                    SINON FAIRE x+1 

                    SI (y+1)>dim ALORS FAIRE
                        DEBUT
                            y<-0
                        FIN
                    SINON FAIRE y+1
                FIN
            FINPOUR
        ECRIRE Tableau2dim
        FIN
FINPROCEDURE


VAR
    x,y,nbr:ENTIER;
    
DEBUT

    initTab;
    milieu;
    place;
    nbr<-1
    POUR x DE 1 A dim FAIRE
        DEBUT
            POUR y DE 1 A dim FAIRE
                DEBUT
                    SI x+1 ET y+1 <>0 ALORS 
                        ECRIRE nbr+1
                    SINON SI 
                        x+1 ET y-1 <>0 ALORS
                        ECRIRE nbr+1
                    FINSI
                FIN
            FINPOUR
        FIN
    FINPOUR

    ECRIRE Tableau2dim

FIN}

program CarreMagique;

uses crt;

//BUT: Afficher un carre magique d'une dimension impaire avec differents chiffres en suivant des regles precises.
//ENTREE: Aucune
//SORTIE: Nombres s'affichant dans les carres


Const

        dim=5;


Type

    Tableau2dim=array[1..dim,1..dim]of integer; // On definit la taille du tableau


procedure initTab(var Tab:Tableau2dim); //On initialise le tableau

    VAR
        x:integer;
        y:integer;

    begin

    for x:=1 to dim do
        begin
           for y:=1 to dim do
            begin
            Tab[x,y]:=0;
            end;
        end;
        writeln;
end;



PROCEDURE milieu(var Tab:Tableau2dim); //On definit qui sera le premier chiffre

    VAR
        x:integer;
        y:integer;

    begin
        x:=(dim div 2);
        y:=(dim div 2)+1;
        Tab[x,y]:=2;

    end;




PROCEDURE  place(var Tab:Tableau2dim); // ON definit le placement des chiffres suivants

        VAR
            x:integer;
            y:integer;
            compteur:integer;

        begin

            for compteur := 2 TO (dim*dim) do // On commence a compter a partir du chiffre 2
                begin

                    if (x+1)>dim then //Si le chifre sort du tableau, il recommencera au debut de la ligne
                        begin
                            x:=0
                        end
                    else write (x+1);

                    if (y+1)>dim then //Si le chiffre sort du tableau, il recommencera au debut de la colonne
                        begin
                            y:=0
                        end
                    else write (y+1);
                end;
        end;



VAR
    x,y,nbr:integer;
    Tableau:Tableau2dim;
	
begin

    initTab(Tableau); //On initialise le tableau
    milieu(Tableau); //On initialise le milieu
    place(Tableau); //On initialise les deplacements
    nbr:=1;
   for x:=1 TO dim do
        begin
            for y:=1 to dim do
                begin
                    if x+1 and y+1 <>0 then //Si x est different de 0 alors le programme va chercher en haut a gauche le prochain jusqu'a trouver une place libre
                        write (nbr+1)
                    else if
                        x+1 and y-1 <>0 then
                        write (nbr+1)
                end;
                write(Tableau[x,y]:2);


        end;


    readln();

end.
