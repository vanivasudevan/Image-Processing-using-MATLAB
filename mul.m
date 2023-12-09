close all
clear
Img = imread('images/moon.tif');
figure, imshow(Img);
J = immultiply(Img, 1.2);
figure, imshowpair(Img,J);
