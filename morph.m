clear, close all
% open operation  - Erosion followed by Dilation 
I = imread('images/rice.png');
figure,imshow(I)
background = imopen(I, strel('disk',15));
figure,imshow(background)
% subtract images
%Create a more uniform background
I2 = imsubtract(I, background);
figure, imshow(I2)
% adjust the image
%I3 = imadjust(I2, stretchlim(I2), [0 1]);
%figure, imshow(I3)
