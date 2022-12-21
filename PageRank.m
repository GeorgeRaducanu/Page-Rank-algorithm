function [R1 R2] = PageRank(nume, d, eps)
  %Copyright Raducanu George-Cristian
  [fid, mesaj] = fopen(nume, 'r');
  if fid == -1
    disp(mesaj);
  endif
  %citim din nou desi nu ne trebuie neaparat
  %practic citim doar pentru n, val1 si val2
  N = fscanf(fid, '%d', 1);
  L = zeros(N, 1);
  A = zeros(N, N);
  for i = 1:N
    x = fscanf(fid, '%d', 1);
    L(i, 1) = fscanf(fid, '%d', 1);
    c = 0;
    for j = 1:L(i, 1)
      t = fscanf(fid, '%d', 1);
      A(x, t) = 1;
      if i == t
        c = c+1;
        A(i, i) = 0;
      endif
    endfor
    L(i, 1) = L(i, 1) - c;
  endfor
  val1 = fscanf(fid, '%f', 1);
  val2 = fscanf(fid, '%f', 1);
  fclose(fid);
  %fisierul de output care reprezinta concatenarea lui nume cu ".out"
  out = strcat(nume, '.out');
  [fid1, mesaj1] = fopen(out, 'w');
  %deschidere fisier de output
  if fid1 == -1
    disp(mesaj1);
  endif
  %printam N
  contor = fprintf(fid1, '%d\n', N);
  %printam Iterative
  R1 = Iterative(nume, d, eps);
  for i = 1:N
    contor = fprintf(fid1, '%f\n', R1(i, 1));
  endfor
  contor = fprintf(fid1, '\n');
  %printam Algebraic
  R2 = Algebraic(nume, d);
  for i = 1:N
    contor = fprintf(fid1, '%f\n', R2(i, 1));
  endfor
  contor = fprintf(fid1, '\n');
  v = zeros(N, 1);
  % ne luam un vector auxiliar cu indicii
  % pe care il vom sorta o data cu vectorul R2
  for i = 1:N
    v(i, 1) = i;
  endfor
  % sortam in mod simplist R2 insa xand interschimbam pozitiile i j interschimbam si din v
  for i = 1:N-1
    for j = i+1:N
      if R2(i, 1) <= R2(j, 1)
        t = R2(i, 1);
        R2(i, 1) = R2(j, 1);
        R2(j, 1) = t;
        t = v(i, 1);
        v(i, 1) = v(j, 1);
        v(j, 1) = t;
      endif
    endfor
  endfor
  % avem cei 2 vectori sortati
  %aplicam doar functia Apartenenta
  for i = 1:N
    contor = fprintf(fid1, '%d ', i);
    contor = fprintf(fid1, '%d ', v(i, 1));
    gg = Apartenenta(R2(i), val1, val2);
    contor = fprintf(fid1, '%f\n', gg);
  endfor
fclose(fid1); 
endfunction