close all
clear
% img = imread('images/rice.png');
% figure, imshow(img)
% % erosion (thinning) followed by dilation 
% background = imopen(img, strel('disk', 15));
% figure, imshow(background);
% img2 = imsubtract(img, background);
% figure,imshowpair(img,img2,"montage");
% img3 = imread('images/riceblurred.png');
 
I = imread('images/cameraman.tif');
J = uint8(filter2(fspecial('gaussian'), I));
figure, imshowpair(I,J,"montage");
K = imabsdiff(I,J);
figure, imshowpair(I,K,"montage");