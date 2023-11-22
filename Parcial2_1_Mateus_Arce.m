%ALuno: Mateus Silva Andrade Arce

%nicie o programa com os seguintes comandos: clear, close all, clc
clear;
close all;
clc;

%Mostrar a imagem a ser processada
img_path = 'gay.jpeg';
img = imread(img_path);
figure  ("Name", "Imagem Original"); imshow(img);

%Informar o nome, tamanho, bytes e classe da imagem original
info = imfinfo(img_path);
fprintf('Nome da imagem: %s\n', info.Filename);
fprintf('Tamanho da imagem: %d x %d pixels\n', info.Width, info.Height);
fprintf('Bytes da imagem: %d bytes\n', info.FileSize);
fprintf('Classe da imagem: %s\n', info.Format);

%Informar os elementos da imagem entre as linhas de 1 a 20 e das colunas de 1 a 20
elementos1a20 = img(1:20, 1:20);
disp('Elementos entre as linhas de 1 a 20 e colunas de 1 a 20:');
disp(elementos1a20);

%Mudar os valores das linhas de 20 a 100 e das colunas de 20 a 100 para 255;
imgModificada = img;
imgModificada(20:100, 20:100) = 255;
%Mostrar a imagem, após a mudança aplicada anteriormente
figure("Name", "Imagem Modificada");imshow(imgModificada);

%Mostrar as três bandas (R, G, B) da imagem modificada
R = imgModificada(:, :, 1);
G = imgModificada(:, :, 2);
B = imgModificada(:, :, 3);
figure("Name", "Bandas da imagem modificada");imshow([ R G B]);
concatenacao3bandas = cat(3, R, G, B);
figure("Name", "Concatenação das 3 bandas da imagem modificada"); imshow(concatenacao3bandas);

%Mostrar o histograma da imagem modificada
figure("Name", "Histograma da imagem modificada"),imhist(imgModificada);
