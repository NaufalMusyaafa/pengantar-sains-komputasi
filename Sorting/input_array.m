% Meminta pengguna memasukkan jumlah elemen array
n = input('Masukkan jumlah elemen array: ');

% Inisialisasi array kosong
arr = zeros(1, n);

% Loop untuk memasukkan elemen array
disp('Masukkan elemen array:');
for i = 1:n
    arr(i) = input(sprintf('Elemen ke-%d: ', i));
end

% Menampilkan array yang telah diinput
disp('Array yang dimasukkan:');
disp(arr);

