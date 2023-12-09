close all
clear
% Digital Image processing hands-on 
% To read an image from a file
% I = imread("images/receipt/receipt1.png");
% I2 = imread("images/receipt/receipt2.png");
% size(I2);
% % To display an image 
% figure,imshowpair(I,I2,"montage");
% 
% % To convert an images to gray scale
% gs = im2gray(I);
% gs2 = im2gray(I2);
% figure, imshowpair(gs,gs2,"montage");
% 
% %To generate hist 
% figure, imhist(gs);
% % To adjust the hist 
% gs2Adj= imadjust(gs2);
% 
% % To show grayscale and adjusted grayscale
% figure, imshowpair(gs2,gs2Adj,"montage");
%  Img = imread("images/pout.tif");
%  Img2 = histeq(Img);
% figure, imshowpair(Img,Img2,"montage");
%  figure, imhist(Img);
% figure, imhist(Img2);
% imwrite(Img2,'images/pout1.tif');
% figure, imshow('images/pout1.tif');
% 
% %To split the multichannel image
% Img1 = imread("images/peppers.jpg");
% figure, imshow(Img1);
% [r,g,b] = imsplit(Img1);
% figure, montage({Img1,r,g,b});

% brighten the image
% I3 = imread("images/lowlight_1.jpg");
% I3adj = imlocalbrighten(I3);
% figure, imshowpair(I3,I3adj,"montage");

%To read a complete folder as a image datastore
ds = imageDatastore("images/receipt");
I =  ds.readimage(3);
figure, imshow(I);
% to display all the images as montage - rectangular region
%figure,montage(ds.Files);
