%�������ܣ�ģ��DCT�����������̣����ɴ�����ЧӦ����ͼ��  
%���裺�Ҷ�ͼ����DCT����������������IDCT 

close all;clear;clc;
%pkg load image 
%pkg load signal 
img= imread('Fig0726(a).tif'); 
img = imresize(img,2);

figure(1);imshow(img);title('Original Image'); 
%I1=rgb2gray(I);figure(1);imshow(I1);title('ԭʼͼ��');%���ɻҶ�ͼ�񣬲���ʾ 
doubleImg=im2double(img);%�任ǰ��ԭʼ����
 
C= dctmtx(8);%���ɱ�׼DCT�仯�еľ�����8��8��
% DCT�任��ʽ: ���任:Y=CPC';���任:P=C'YC; 
% ������������ 
a1=[16 11 10 16 24  40  51  61; 
    12 12 14 19 26  58  60  55; 
    14 13 16 24 40  57  69  56; 
    14 17 22 29 51  87  80  62; 
    18 22 37 56 68  109 103 77; 
    24 35 55 64 81  104 113 92; 
    49 64 78 87 103 121 120 101; 
    72 92 95 98 112 100 103 99 ]; 
 
%�ֿ���DCT�任��8��8�� 
for i=1:8:512 
    for j=1:8:512 
        P=doubleImg(i:i+7,j:j+7); 
        K=C*P*C'; 
        afterDCT(i:i+7,j:j+7)=K; 
        K=K./a1;%���� 
        K(abs(K)<0.03)=0; 
        qualified(i:i+7,j:j+7)=K; 
    end 
end 
figure;imshow(afterDCT);title('DCT�任����Ƶ��ͼ��');%��ʾDCT�任����Ƶ��ͼ�� 
 
%�ֿ���DCT���任��8��8�� 
for i=1:8:512 
    for j=1:8:512 
        P=qualified(i:i+7,j:j+7).*a1;%������ 
        K=C'*P*C; 
        reconstructed(i:i+7,j:j+7)=K; 
    end 
end 
figure;
imshow(reconstructed);title('The Reconstructed Image'); 
imwrite(reconstructed,'ReconstructedImage.jpg');

figure;
imshow(abs(reconstructed-doubleImg),[]);title('The Difference Image');