%% Projeto 07
% *Autor:* Marlon da Silva Rogério

%% Referências
% *GONZALEZ, R. C.*, WOODS, R. E. Processamento de Imagens Digitais. 
% Editora Edgard Blucher, ISBN São Paulo, 2000.
% *Support MathWorks*, 2021. Disponível em: <https://www.mathworks.com/help/>.
% Acesso em: 31 de maio. de 2021.

close all; clear; clc;

%% 1 Transformada Wavelet & Multiresolução
% Utilizando a transformada Wavelet e a teoria de sub-bandas:
% 1.1 Identificar e analisar ‘ruído’ de uma imagem
% 1.2 Crie um algoritmo simples para subtrair ruído de uma imagem
% 1.2.1 Visualizar e comentar

img_original = imread('tumografia.tif');

%%
% *Haar*
[c, s] = wavefast(img_original, 1, 'haar');
wavedisplay(c, s, 20);
title('Sub-bandas da transformada de Wavelet'); 
[~, g8] = wavezero(c, s, 1, 'haar');
figure;
subplot(1,2,1);
imshow(img_original);
title('Imagem Original');
subplot(1,2,2);
imshow(g8);
title('Imagem reconstruida por Haar'); 

%%
% *Daubechies*
[c, s] = wavefast(img_original, 2, 'db4');
wavedisplay(c, s, 20);
title('Sub-bandas da transformada de Wavelet'); 
[~, g8] = wavezero(c, s, 2, 'db4');
figure;
subplot(1,2,1);
imshow(img_original);
title('Imagem Original');
subplot(1,2,2);
imshow(g8);
title('Imagem reconstruida por Daubechies'); 

%%
% *Symlet*
[c, s] = wavefast(img_original, 2, 'sym4');
wavedisplay(c, s, 20);
title('Sub-bandas da transformada de Wavelet'); 
[~, g8] = wavezero(c, s, 2, 'sym4');
figure;
subplot(1,2,1);
imshow(img_original);
title('Imagem Original');
subplot(1,2,2);
imshow(g8);
title('Imagem reconstruida por Symlet'); 

%%
% *Biorthogonal*
[c, s] = wavefast(img_original, 3, 'bior6.8');
wavedisplay(c, s, 20);
title('Sub-bandas da transformada de Wavelet'); 
[~, g8] = wavezero(c, s, 3, 'bior6.8');
figure;
subplot(1,2,1);
imshow(img_original);
title('Imagem Original');
subplot(1,2,2);
imshow(g8);
title('Imagem reconstruida por Symlet'); 

