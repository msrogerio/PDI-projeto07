clc;close all;clear
% 
%Y = wavecdf97(X, 5); Decompose image X up to 5 level
%R = wavecdf97(Y, -5); Reconstruct from Y

%You can test wavecdf97.m with the following lines:
% get a 2-D uint8 image
x = imread('im0001.ppm');
x = rgb2gray(x);
% decompose
y=wavecdf97(x,1);
% show decomposed result
figure;imshow(mat2gray(y));
% reconstruct without change of anything
ix=wavecdf97(y,-1);
% show and compare the original and reconstructed images
figure;subplot(1,2,1);imshow(x);subplot(1,2,2);imshow(uint8(ix));
% look at the MSE difference
sum(sum((double(x)-ix).^2))/numel(x)