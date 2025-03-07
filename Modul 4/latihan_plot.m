clc
clear

x = linspace(0,1,100);
y1 = sin(x);
y2 = sin(x + 0.5);
y3 = sin(x + 1);
y4 = sin(2*x);
y5 = cos(2*x);

% plot single line
figure(1)
plot(x,y1)

% plot multi lines
figure(2)
plot(x,y1,x,y2,x,y3)

% plot multi lines dengan warna custom
figure(3)
plot(x,y1,'r',x,y2,'g',x,y3,'b')

% plot multi lines dengan warna dan tipe garis
figure(4)
plot(x,y1,'r--',x,y2,'g:',x,y3,'b-.')

% plot multi lines dengan warna dan beberapa adjusment lainnya
figure(4)
subplot(2,1,1);
plot(x,y1,'r--',x,y2,'g:',x,y3,'b-.')
axis([0 2*pi -1 1]);
title('Plot sin(x)')
xlabel('Radiant')
ylabel('Magnituda')

% menggabungkan plot di satu figure dengan hold
hold on;
plot(x,y4,'ko');
hold off;

% menggabungkan plot di satu figure dengan subplot
subplot(2,1,2); % (dua baris, satu kolom, posisi kedua)
plot(x,y5);
