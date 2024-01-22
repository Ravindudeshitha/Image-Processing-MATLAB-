   
function I = invert(I)
    if(length(size(I))==3)
        I = rgb2gray(I);
    end
    
    [row,col] = size(I); amax = 255;
     for x = 1: row
          for y =1 : col
              I(x,y) = amax - I(x,y);
          end
     end
end

    
            