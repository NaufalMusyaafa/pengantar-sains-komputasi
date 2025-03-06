tugas1 = input('Masukkan nilai Tugas 1: ');
tugas2 = input('Masukkan nilai Tugas 2: ');
responsi = input('Masukkan nilai Responsi: ');
keaktifan = input('Masukkan nilai Keaktifan: ');
nilai_akhir = 0.25*tugas1 + 0.25*tugas2 + 0.40*responsi + 0.10*keaktifan;
fprintf('Nilai akhir MK Praktikum Komputasi 1 adalah: %.2f\n', nilai_akhir);

if nilai_akhir >= 80
  fprintf('Kamu dapat nilai A');
 elseif nilai_akhir >= 75
  fprintf('Kamu dapat nilai A-');
   elseif nilai_akhir >= 70
  fprintf('Kamu dapat nilai B+');
   elseif nilai_akhir >= 65
  fprintf('Kamu dapat nilai B');
   elseif nilai_akhir >= 60
  fprintf('Kamu dapat nilai B-');
   elseif nilai_akhir >= 55
  fprintf('Kamu dapat nilai C+');
   elseif nilai_akhir <= 55
  fprintf('Kamu ngulang tahun depan');
  end;

