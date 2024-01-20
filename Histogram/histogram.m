function h = histogram (I)
  %if image is a colour image it should convert to grayscale image
    if length(size(I)) == 3 
        I = rgb2gray(I);
    end
    
    %every values of histogram set as zero
    h = zeros (1,256);
    [r,c] = size (I);%get the number of pixel of width and height
    
    
    for x=1:r
        for y=1:c
            a = I(x,y);
            h(a+1) = h(a+1)+1;
        end
    end
end
