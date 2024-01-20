addpath('..\histogram');%histogramfunction in histogram folder

I = imread('..\images\Lenna.png');

J = brightness(I,-30);
K = brightness(I,30);

h1 = histogram(I);
h2 = histogram(J);
h3 = histogram(K);

subplot(2,3,1);imshow(rgb2gray(I));title('Original Image');hold on;
subplot(2,3,2);imshow(J);title('Low Brightness Image(1) ');hold on;
subplot(2,3,3);imshow(K);title('High Brightness Image(2)');hold on;
subplot(2,3,4);bar(h1);title('Histogram of Original Image');hold on;
subplot(2,3,5);bar(h2);title('Histogram of Brightness Image(1)');hold on;
subplot(2,3,6);bar(h3);title('Histogram of Brightness Image(2)');