clear all
close all
RGB = imread('images.jpg');
%imshow(RGB)
gray = rgb2gray(RGB);
%imshow(RGB)
[x y]=size(gray)
k=120;
n=75;
J=zeros(x+k,y+n)
J=uint8(J)
for i=1:x
    for j=1:y
        J(i+k,j+n)=RGB(i,j);
    end
end
imshow(J), figure, imshow(gray)

J = imresize(RGB,[50 125])
imshow(J)
%d
%g = imtranslate(gray,[35, 186],'FillValues',255);
%X = gpuArray(imread('p'));
%eeee
Y = imrotate(RGB,-38,'bilinear','loose');
Y2 = imrotate(RGB,245,'bilinear','loose');
imshow(Y),figure, imshow(Y2);
ee = imread('resim.jpg');
ss = rgb2gray(ee);
ff = imread('resim1.png');
xx = rgb2gray(ff);
dd = ss-xx;
imshow(dd)
r = RGB.*2.5;
DD = RGB.*0.008;
imshow(r)
%3
clc;
clear all;
close all;
n=2;
img = rgb2gray(imread('uunew.jpg'));
a=size(img);
w=a(2);
h=a(1);
im=zeros(100);
for i=1:n:h
 for j=1:n:w
     for k=0:n-1
         for l=0:n-1
             im(i+k,j+l)=img(i,j);            
  
 end
 end
 end
end
subplot(1,2,1);
imshow(uint8(img));title('Original Image');
subplot(1,2,2);
imshow(uint8(im));title('Sampled Image');