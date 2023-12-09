close all
clear
I = imread('images/bag.png');
J = imresize(I, 1.25);
K = imresize(I, [100 150]);
figure, imshow(J);
figure, imshow(K);

R= imrotate(I, 35, 'bilinear');
figure, imshow(R)
