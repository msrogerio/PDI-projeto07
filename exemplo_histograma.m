clear;close all
%pkg load image

%% 
I = imread('lena.bmp');

%imtool(I)
I2n = imresize(I,2);
I2 = imresize(I,0.5);
I3 = imresize(I,0.25);
