clc;
clear;

% Program untuk memasukkan jumlah array yang ingin diimput
n = input('Masukkan jumlah elemen array: ');

% Inisialisasi array kosong
arr = zeros(1, n);

% Loop untuk memasukkan elemen array
disp('Masukkan elemen array:');
for i = 1:n
    arr(i) = input(sprintf('Elemen ke-%d: ', i));
end

% Menampilkan array yang telah diinput
fprintf('Array yang dimasukkan:');
disp(arr);

% algoritma bubble sort
n = length(arr);
for i = 1:n-1
  for j = 1:n-i
    if arr(j) > arr(j+1)
      temp = arr(j);
      arr(j) = arr(j+1);
      arr(j+1) = temp;
    endif
  endfor
endfor

% Menampilkan hasil sorting
fprintf("array setelah disorting");
disp(arr);

