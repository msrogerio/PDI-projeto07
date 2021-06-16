% x=0:1:10;

% 
% y1= x.^2;
% y2= cos(x);
% y3= 1+x*0;
% 
% plot(x,y1,x,y2,x,y3)

close all;clc;clear
myfig = openfig('data1.fig');
h = findobj('Type','line')
x = get(h,'YData')
