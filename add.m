clear
close all
% adding two images
I = imread('images/cameraman.tif');
J = imread('images/rice.png');
K = imadd(I, J);
figure,subplot(1,3,1);
imshow(I)
subplot(1,3,2)
imshow(J)
subplot(1,3,3)
imshow(K)
%Brighten the image
RGB = imread('images/baby.jpg');
RGB2 = imadd(RGB, 50);
figure, subplot(1, 2, 1); imshow(RGB);
subplot(1, 2, 2); imshow(RGB2);

