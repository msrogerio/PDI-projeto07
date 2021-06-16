close all;clc;clear

% The current extension mode is zero-padding (see dwtmode).

% Load image. 
X =imread('Fig0734(a).tif');
% X contains the loaded image.

% For an image the decomposition is performed using: 
t = wpdec2(X,3,'bior2.2','threshold',0.5); 
% The default entropy is shannon.

% Plot wavelet packet tree 
% (quarternary tree, or tree of order 4). 
plot(t)

BstTree = besttree(t);
plot(BstTree)

