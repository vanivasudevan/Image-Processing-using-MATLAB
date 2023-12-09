close all
clear
I = imread('images/rice.png');
background = imopen(I, strel('disk', 15));
Ip = imdivide(I, background);
imshow(Ip, []);
%linear combination
% Scale an image by a factor of two.
I = imread('images/cameraman.tif');
J = imlincomb(2,I);
figure, imshow(J)
