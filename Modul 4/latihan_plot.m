clc
clear

x = linspace(0,,100);
y1 = sin(x);
y2 = sin(x + 0.5);
y3 = sin(x + 1);

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

% plot multi lines dengan warna dan tipe garis
figure(4)
plot(x,y1,'r--',x,y2,'g:',x,y3,'b-.')
axis([0 2*pi -1 5]);
title('Plot sin(x)')
xlabel('Radiant')
ylabel('Magnituda')
