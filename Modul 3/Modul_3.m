% Program untuk menghitung suhu kesetimbangan reaksi

% Masukkan nilai konstanta
A = input('Masukkan nilai konstanta A: ');
B = input('Masukkan nilai konstanta B: ');
P = input('Masukkan nilai tekanan total (P): ');
x = input('Masukkan nilai derajat disosiasi (x): ');

% Hitung tekanan parsial
PA = (0.75 - 0.5*x) * P / (1 - 0.5*x);
PB = 0.25 * (1 - x) * P / (1 - 0.5*x);
PC = 0.25 * x * P / (1 - 0.5*x);

% Hitung konstanta keseimbangan K
K = (PC) / (PA^2 * PB);

% Hitung suhu kesetimbangan T
T = B / log(K / A);

% Tampilkan hasil
fprintf('Suhu kesetimbangan (T) adalah: %.2f K\n', T);

