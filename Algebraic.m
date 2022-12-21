function R = Algebraic(nume, d)
    %Copyright Raducanu George-Cristian
  [fid, mesaj] = fopen(nume, 'r');
  if fid == -1
    disp(mesaj);
  endif
  %citirea si prelucrarea datelor
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
  M = zeros(N, N);
  %matricea M necesara rezolvarii
  for i = 1:N
    for j = 1:N
      if A(j, i) == 1
        M(i, j) = 1/L(j, 1);
      endif
    endfor
  endfor
  %prin trecere la limita a relatiei iterative rezulta
  % R = dMR + (1-d)/N*1
  % (I - dM)R = (1-d)/n *1
  I = eye(N, N);
  INV = PR_Inv(I - d * M);
  v = ones(N, 1);
  R = INV * ((1 - d)/N)*v;
endfunction