clc;
clear;

arr = [64, 34, 25, 12, 22, 11, 90];
left = [];
right = [];
fprintf("array sebelum di sorting:");
disp(arr);
n = length(arr);

for i = 1:n-1
  if arr(i)<arr(n)
    left = [left arr(i)];
  else
    right = [right arr(i)];
  endif
endfor

sorted = [left arr(n) right];

% Contoh penggunaan:
disp('Array setelah diurutkan:');
disp(sorted);

