% Program Octave untuk menghitung error persen hasil interpolasi linear suhu
% Contoh ini menggunakan data contoh (misalnya untuk kota Medan)

clear; clc;

% Data suhu (misalnya pada beberapa waktu)
% x: waktu (misalnya jam)
% y: suhu (dalam °C)
x = [0, 3, 6, 10, 16, 19, 22];         % Contoh: waktu dalam jam
y = [24, 24, 23, 30, 29, 26, 25];        % Contoh: suhu di Medan pada waktu tersebut

% Tampilkan data agar user mengetahui referensinya
fprintf('Data waktu (jam): '); disp(x);
fprintf('Data suhu (°C): '); disp(y);

% Input nilai x untuk interpolasi (misalnya waktu yang ingin dicari suhunya)
x_interp = input('Masukkan nilai waktu (x) untuk interpolasi: ');

% Lakukan interpolasi linear menggunakan fungsi interp1
y_interp = interp1(x, y, x_interp, 'linear');

% Tampilkan hasil interpolasi
fprintf('Hasil interpolasi suhu pada waktu %.2f jam adalah %.2f °C\n', x_interp, y_interp);

% Input nilai suhu aktual untuk menghitung error
y_actual = input('Masukkan nilai suhu aktual pada waktu tersebut: ');

% Hitung error persen
error_percent = abs((y_interp - y_actual) / y_actual) * 100;

% Tampilkan error persen
fprintf('Error persen: %.2f %%\n', error_percent);

