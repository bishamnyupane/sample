male(dasarath).
male(ram).
male(laxman).
male(luv).
male(david).
male(harka).
male(kush).
 
female(kaushalya).
female(sita).
female(urmila).
female(priya).
female(usha).
female(alisa).
female(fulmaya).
 
husband(dasarath, kaushalya).
husband(ram,sita).
husband(laxman, urmila).
husband(luv,priya).
husband(kush,usha).
husband(david,alisa).
husband(harka,fulmaya).

father(dasarath,ram).
father(dasarath,laxman).
father(ram,luv).
father(ram,kush).
father(luv,david).
father(luv,harka).
father(luv,grk).

grandfather(A,C):- father(A,B),father(B,C).
grandmother(A,B):- grandfather(C,B) ,father(C,A).

brother(A,B) :- father(F,A),father(F,B),A\=B.
uncle(U,A) :- father(F,A),brother(U,F).
auntie(T,X) :- uncle(U,X),husband(U,T).