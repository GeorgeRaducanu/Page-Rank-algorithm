function R = Iterative(nume, d, eps)
    %Copyright Raducanu George-Cristianss
  [fid, mesaj] = fopen(nume, 'r');
  %deschid fisierul
  if fid == -1
    disp(mesaj);
  endif
  N = fscanf(fid, '%d', 1);
  L = zeros(N, 1);
  A = zeros(N, N);
  %citirea si prelucrarea datelor
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
  M = zeros(N, N);
  %matricea M
  for i = 1:N
    for j = 1:N
      if A(j, i) == 1
        M(i, j) = 1/L(j, 1);
      endif
    endfor
  endfor
  %algoritmul iterative efectiv
  R0 = (1/N)*ones(N, 1);
  succes = 0;
  v = ones(N, 1);
  while succes == 0
    R = d * M * R0 + ((1-d)/N)*v;
    if max(abs(R-R0)) < eps
      succes = 1;
    else
    R0 = R;
    endif
  endwhile
  R = R0;
  % rezultatul final in R
end
