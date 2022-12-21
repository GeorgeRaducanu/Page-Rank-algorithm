function B = PR_Inv(A)
  % vom folosi implementarea pseudocod din laboratorul 3 pentru factorizarea QR a matricei A
  % Adica QR modificat pentru o stabilitate numerica mai mare
  [N N] = size(A);
  [Q R] = GM(A);
  % Ax = b QRx = b Rx = Qtb
  % practic ideea in continuare a algoritmului de inversare consta
  %in a rezolva n sisteme SST unde vectorii coloana necunoscuti sunt cele
  % n coloane ale iversei si reunind aceste solutii obtinem chiar invers dorita
  B = zeros(N, N);
  for i = 1:N
    e = zeros(N, 1);
    e(i, 1) = 1;
    %trb sa rezolvam Rx = b;
    b = Q.' * e;
    x = SST(R, b);
    for j = 1:N
      B(j, i) = x(j, 1);
    endfor
  endfor
endfunction
