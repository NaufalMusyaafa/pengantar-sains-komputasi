clc;
clear;

arr = [64, 34, 25, 12, 22, 11, 90];
fprintf("array sebelum di sorting:");
disp(arr);

    n = length(arr);
    for i = 1:n-1
        min_idx = i;
        for j = i+1:n
            if arr(j) < arr(min_idx)
                min_idx = j;
            endif
        endfor

        % Tukar elemen minimum dengan elemen pertama yang belum terurut
        if min_idx ~= i
            temp = arr(i);
            arr(i) = arr(min_idx);
            arr(min_idx) = temp;
        endif
endfor


% Contoh penggunaan:
disp('Array setelah diurutkan:');
disp(arr);

