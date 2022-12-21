function [Q R] = GM(A)
    %implementare proprie a algoritmului GM modificat descris in laborator
    %algoritmul prezentat in laborator de GM modificat
    %algoritmul este banal, fiind o simpla implementare a pseudocodului din laborator
  [N N] = size(A);
  AA = A;
  Q = zeros(N, N);
  R = zeros(N, N);
  for i = 1:N
    R(i, i) = norm(AA(:, i));
    Q(:, i) = AA(:, i) / R(i, i);
    for j = i+1 : N
      R(i, j) = Q(:, i).' * AA(:, j);
      AA(:, j) = AA(:, j) - Q(:, i) * R(i, j);
    endfor
  endfor
endfunction