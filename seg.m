clear 
close all
%Image segmentation 
%Thresholding images using relational operator
I = imread("images/peppers.jpg");
gs = im2gray(I);
gsAdj = imadjust(gs);

BW = gsAdj> 255/2;

figure, montage({gs,BW});
%Identify best threshold auto
level = graythresh(I);
BWg = imbinarize(gsAdj,level);%global threshold
figure,montage({I,gs,BW,BWg}); 

% smaller region
BWadapt = imbinarize(gsAdj,"adaptive");  
figure, imshowpair(gsAdj,BWadapt,"montage");

% smaller region
BWadapt = imbinarize(gsAdj,"adaptive","ForegroundPolarity","dark");
figure, imshowpair(gsAdj,BWadapt,"montage");

