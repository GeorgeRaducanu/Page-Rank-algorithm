function [y] = Apartenenta(x, val1, val2)
  %rezolvam a si b (sistem 2 * 2 simplu, direct formula)
  a = 1/(val2 - val1);
  b = - val1/(val2 - val1);
  y = 1;
  if x < val1
    y = 0;
  endif
  if x >= val1 && x <= val2
    y = a * x + b;
  endif
  if x > val2
    y = 1;
  endif
	endfunction