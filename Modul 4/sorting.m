% File: sorting_algorithms.m
% Program contoh pengurutan menggunakan beberapa algoritma:
% Bubble Sort, Insertion Sort, Selection Sort, Merge Sort, dan Quick Sort.

%% Bubble Sort
function arr = bubbleSort(arr)
    n = length(arr);
    for i = 1:n-1
        for j = 1:n-i
            if arr(j) > arr(j+1)
                % Tukar posisi jika elemen lebih besar daripada elemen berikutnya
                temp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = temp;
            end
        end
    end
endfunction

%% Insertion Sort
function arr = insertionSort(arr)
    n = length(arr);
    for i = 2:n
        key = arr(i);
        j = i - 1;
        % Geser elemen-elemen yang lebih besar dari key ke kanan
        while j >= 1 && arr(j) > key
            arr(j+1) = arr(j);
            j = j - 1;
        end
        arr(j+1) = key;
    end
endfunction

%% Selection Sort
function arr = selectionSort(arr)
    n = length(arr);
    for i = 1:n-1
        minIndex = i;
        % Cari indeks elemen terkecil dalam subarray yang belum terurut
        for j = i+1:n
            if arr(j) < arr(minIndex)
                minIndex = j;
            end
        end
        % Tukar elemen di posisi i dengan elemen terkecil yang ditemukan
        if minIndex != i
            temp = arr(i);
            arr(i) = arr(minIndex);
            arr(minIndex) = temp;
        end
    end
endfunction

%% Merge Sort
function arr = mergeSort(arr)
    n = length(arr);
    if n <= 1
        return;
    end
    mid = floor(n/2);
    % Bagi array menjadi dua bagian
    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));
    % Gabungkan kedua bagian yang sudah terurut
    arr = merge(left, right);
endfunction

% Fungsi untuk menggabungkan dua array yang sudah terurut
function merged = merge(left, right)
    i = 1;
    j = 1;
    merged = [];
    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i);
            i = i + 1;
        else
            merged(end+1) = right(j);
            j = j + 1;
        end
    end
    % Jika masih ada sisa elemen di left atau right, tambahkan semuanya
    while i <= length(left)
        merged(end+1) = left(i);
        i = i + 1;
    end
    while j <= length(right)
        merged(end+1) = right(j);
        j = j + 1;
    end
endfunction

%% Quick Sort
function arr = quickSort(arr)
    n = length(arr);
    if n <= 1
        return;
    end
    % Pilih pivot (di sini kita menggunakan elemen terakhir)
    pivot = arr(n);
    left = [];
    right = [];
    % Partisi array berdasarkan pivot
    for i = 1:n-1
        if arr(i) <= pivot
            left(end+1) = arr(i);
        else
            right(end+1) = arr(i);
        end
    end
    % Rekursif mengurutkan subarray
    left = quickSort(left);
    right = quickSort(right);
    % Menggabungkan hasil
    arr = [left, pivot, right];
endfunction

%% Contoh Penggunaan
% Buat array contoh yang akan diurutkan
disp('Array contoh:');
arrayContoh = [64, 34, 25, 12, 22, 11, 90];
disp(arrayContoh);

disp('Hasil Bubble Sort:');
disp(bubbleSort(arrayContoh));

disp('Hasil Insertion Sort:');
disp(insertionSort(arrayContoh));

disp('Hasil Selection Sort:');
disp(selectionSort(arrayContoh));

disp('Hasil Merge Sort:');
disp(mergeSort(arrayContoh));

disp('Hasil Quick Sort:');
disp(quickSort(arrayContoh));

