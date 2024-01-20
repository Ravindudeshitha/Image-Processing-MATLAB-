I = imread('../images/Lenna.png');

Histogram= histogram(I);
cHist= cumulativeHistogram(Histogram);

subplot(1,3,1);title('Image');imshow(rgb2gray(I));hold on;
subplot(1,3,2);bar(Histogram);title('Histogram');hold on;
subplot(1,3,3);bar(cHist);title('Cumulative Histogram');
