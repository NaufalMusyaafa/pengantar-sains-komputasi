clc;
clear;

arr = [64, 34, 25, 12, 22, 11, 90];
fprintf("array sebelum di sorting:");
disp(arr);
    n = length(arr);
    for i = 2:n
        key = arr(i);
        j = i - 1;

        % Geser elemen yang lebih besar ke kanan
        while j > 0 && arr(j) > key
            arr(j + 1) = arr(j);
            j = j - 1;
        endwhile

        % Tempatkan elemen pada posisi yang benar
        arr(j + 1) = key;
    endfor


disp('Array setelah diurutkan:');
disp(arr);

