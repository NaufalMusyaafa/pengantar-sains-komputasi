clc
clear

global c
jumlah

function jumlah
  % memanggil variabel global
  global c;
  a = 1;
  b = 2;
  c = a + b
end


function pengurangan
  a = 1;
  b = 2;
  c = a - b
end

function parabola (x)
  y = x.^2 + 3
  plot(x,y)
end;

nilai_x = linspace(-5,5,20);
% nilai_x = input('masukkan nilai x : ');
parabola(nilai_x);
