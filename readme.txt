Copyright Raducanu George-Cristian 311CA 2021-2022
Tema1 MN
Iterative
Acest subpunct a fost rezolvat in felul urmator:
Am realizat citirile utilizand functtile predefinite de citire din Octave,
Am transformat lista de adiacenta in matrice de adiacenta, memorand de asemenea si nr de muchii ce corespund unui nod.
In cazul in care acel nod are referinta la el insusi il vom face 0 in matricea de adiacenta si vom decrementa L ul.
In continuare am construit matricea M descrisa in sursa [1] iar prin aplicarea algoritmului iterative tot din [1], pana cand
atingem precizia dorita se obtine R ul si se rezolva task ul.

Algebraic
Citirea si prelucrarea datelor este identica ca la subpunctul anterior.
Trecand la limita relatia de recureta ( t+1 = t adica t tinde la infinit - nr mare de iteratii) rezulta R = dMR + (1-d)/N * 1 iar scotand R din relatia respectiva rezulta
R in forma algebrica utilizand inversa.

PR_Inv
Pentru a calcula relativ eficient inversa unei matrici descompunem mai intai QR matricea data utilizand algoritmul GM modificat prezentat in laborator.
In continuarea avem QRT = I unde T este inversa lui A. Q ortogonalarezulta RT = Qt. In continuare interpretam fiecare coloana din T ca fiind o necuniscuta si
o sa obtinem n sisteme de ecuatii liniare iar intrucat R este superior triunghiulara pentru rezolvarea lor eficienta vom utiliza SST care si el a fost prezentat la
laborator. Reunind la final solutiile (adica cele n coloane) rezulta T adica inv(A)

Apartenenta
Functia u(x) trebuie sa fie continua, deci a = 1/(val2 - val1), b = -val1*a; 
In continuare daca x < val 1, y = 0, daca x >=val1 && x <= val2 y = ax+b si in caz contrsrr y = 1.

PageRank
Acest program este "rezultatul final" si combina toti algoritmii de pana acuma. Citirea o mai facem inca o data doar pentru a obtine n, val1 si val2.
Apelam Iterative si Algebraic iar apoi vom sorta R2 Algebraic impreuna cu un vector auxiliar de indici. Pentru afisare afisam i, v(i) unde v este vectorul auxiliar
care a fost "sortat" dar si Apartenenta (R2(i), val1, val2) pentru fiecare i de la 1 la N si astfel se termina programul.