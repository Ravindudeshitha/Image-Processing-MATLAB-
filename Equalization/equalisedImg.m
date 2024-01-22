
function J = equalisedImg(I)

    addpath('..\histogram');%histogramfunction in histogram folder

    if length(size(I)) ==3
        I = rgb2gray(I);
    end

    k = 256;
    [m,n] =  size(I);
    J = I;

    h = histogram(I);
    H = cumulativeHistogram(h);

    for i = 1:m
        for j = 1:n
            a = I(i,j);
            J(i,j) = floor((H(a)* (k-1))/(m*n));
        end
    end
    
    h2 = histogram(J);
    H2 = cumulativeHistogram(h2);
    
    subplot(2,3,1);imshow(I);title('Original Image');hold on;
    subplot(2,3,2);bar(h);title('Histogram of Original Image');hold on;
    subplot(2,3,3);bar(H);title('Cumulative Histogram of Original Image');hold on;
    subplot(2,3,4);imshow(J);title('Equalized Image');hold on;
    subplot(2,3,5);bar(h2);title('Histogram of Equalized Image');hold on;
    subplot(2,3,6);bar(H2);title('Cumulative Histogram of Equalized Image');hold on;
    

end
