% Iniciar o programa com os seguintes comandos
clear;
close all;
clc;

% Processando e mostrando imagem a ser usada
img_escala_cinza = imread("img_escala_cinza.jpeg");
imshow(img_escala_cinza);
title('Imagem em Escala Cinza');

% Elementos da imagem entre as linhas de 10 a 50 e das colunas de 10 a 50
elementde10a50 = img_escala_cinza(10:50, 10:50);
disp('Elementos entre as linhas de 10 a 50 e colunas de 10 a 50 da imagem original:');
disp(elementde10a50);

% Aplicando transformada discreta de Fourier
fourier = fftshift(fft2(img_escala_cinza));

% Mostrando a imagem transformada (magnitude em escala logarítmica)
figure;
subplot(1, 2, 1);
imshow(img_escala_cinza);
title('Imagem Original');

subplot(1, 2, 2);
imshow(log(1 + abs(fourier)), []);
title('Imagem Transformada (Log da Magnitude)');

% Elementos da transformada entre as linhas de 10 a 50 e das colunas de 10 a 50
elementos_fourier_10a50 = fourier(10:50, 10:50);
disp('Elementos entre as linhas de 10 a 50 e colunas de 10 a 50 da transformada de Fourier:');
disp(elementos_fourier_10a50);

% Adicionando ruído "sal e pimenta" à imagem original
img_ruidosa = imnoise(img_escala_cinza, 'salt & pepper', 0.9);

% Mostrando a imagem com ruído
figure;
subplot(1, 2, 1);
imshow(img_escala_cinza);
title('Imagem Original');

subplot(1, 2, 2);
imshow(img_ruidosa);
title('Imagem com Ruído Sal e Pimenta');

