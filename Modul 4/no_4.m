n = input('Masukkan jumlah baju yang dibeli: ');
harga_per_baju = 100000;
total_belanja = n * harga_per_baju;
% Penerapan diskon berdasarkan jumlah baju
if n > 40
    diskon = 0.35 * total_belanja;
    bonus = sprintf('%d kaos gratis', n);
elseif n >= 20
    diskon = 0.35 * total_belanja;
    bonus = '1 pasang sepatu';
elseif n >= 10
    diskon = 0.25 * total_belanja;
    bonus = '';
elseif n >= 5
    diskon = 0.20 * total_belanja;
    bonus = sprintf('%d sandal gratis', n);
else
    diskon = 0;
    bonus = 'Gratis parkir';
end
total_setelah_diskon = total_belanja - diskon;

fprintf('Total belanjaan setelah diskon: Rp%d\n', total_setelah_diskon);
fprintf('Bonus yang diperoleh: %s\n', bonus);

% Penerapan diskon Big Sale
if total_belanja > 1500000
    fprintf('Kamu mendapatkan kupon potongan seharga Rp.200.000\n');
end

