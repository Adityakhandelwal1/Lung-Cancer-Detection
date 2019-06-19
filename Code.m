clc;
clear all;
close all;
img = imread('16bce2068.jpg');
imshow(img);
z=rgb2gray(img);
img=imread('16bce2068.jpg');
imggray =rgb2gray(img);
row=size(imggray,1);
col=size(imggray,2);
r1=input('Enter the lower input gray level value:');%90
s1=input('Enter the lower output gray level value:');%40
r2=input('Enter the higher input gray level value:');%120
s2=input('Enter the higher output gray level value:');%140
m1=(s1/r1);
m2=(s2-s1)/(r2-r1);
m3=(255-s2)/(255-r2);
for i=1:row
for j=1:col
if imggray(i,j)< r1
out(i,j)=imggray(i,j)*m1;
end
if imggray(i,j)>= r1 && imggray(i,j)<= r2
out(i,j)=s1+(imggray(i,j)-r1)*m2;
else
out(i,j)=s2+(imggray(i,j)-r2)*m3;
end
end
end
figure, imshow(imggray),title('Original Image for contrast stretching');
figure, imshow(out),title('Image after Contrast Stretching');