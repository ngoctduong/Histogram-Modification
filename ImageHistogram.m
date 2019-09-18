% Q. 1 Load images 'muscle.bmp' and 'lena.jpg' in Scilab with the function imread.
im1 = imread('muscle.bmp');
im2 = imread('lena.jpg');
im3 = imread('aquitain.bmp');
% Q. 2 Visualize these two images using the function imshow. What is the difference between these two
% images?
%  figure, imshow(im1);
% figure, imshow(im2);

% Q. 3 Compute and explain the size of the variables using the prede?ned function size.
size1 = size(im1);
% size1 is 256x256 because it has only 1 chanel color with width =256 and
% height = 256

size2 = size(im2);
% size2 is 512x512x3 because it is a colored image which means there are 3 chanels (Red Green Blue), each chanel has 512x512 pixels

% Q. 4 Implement a function hist=histogram(img) to compute the histogram of the image grayscale
% img.

% Q. 5 Display the histogram of the image 'muscle.bmp'. What information do you deduce from the
% visualization of this histogram?
hist1=histogram(im1);
% figure, plot(hist1);
% figure, plot(0:255,hist1);

% hist2=vertcat(histogram(im2(:,:,1)),histogram(im2(:,:,2)),histogram(im2(:,:,3)))

% Q. 6 
% n_classes = 8;
% hist((double(im1(:))),8);
% hist((double(im1(:))),24);
% figure, plot(hist1);

e_im = equalization(im3);
plot(histogram(im3));
% imshow(e_im/max(e_im(:)));
% imshow(e_im);
% 
% % figure, plot(histogram(im3));
% eim3 = equalization(im3);
% plot(v);
figure;stem(histogram(e_im))
