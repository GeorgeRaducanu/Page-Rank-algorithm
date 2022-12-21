function [x] = SST(A, b)
% implementare proprie a alogoritmului descris in laborator
%algoritmul de rezolvare SST al carui peudocod este prezentat in laborator
%varianta nevectorizata
  [N N] = size(A);
  x = zeros(N , 1);
  x(N, 1) = b(N, 1)/A(N, N);
  for i = N-1:-1:1
    s = 0;
    for j = i+1:N
      s = s + A(i, j) * x(j, 1);
    endfor
    x(i, 1) = (b(i, 1) - s)/A(i, i);
  endfor
endfunction