addpath('..\histogram');%histogramfunction in histogram folder

I = imread('..\images\Lenna.png');

J = contrast(I,1.2);

h1 = histogram(I);
h2 = histogram(J);

subplot(2,2,1);imshow(rgb2gray(I));title('Original Image');hold on;
subplot(2,2,2);imshow(J);title('Contrast Image');hold on;
subplot(2,2,3);bar(h1);title('Histogram of Original Image');hold on;
subplot(2,2,4);bar(h2);title('Histogram of Contrast Image');