function I = threshold(I,t)
    if(length(size(I))==3)
        I = rgb2gray(I);
    end
    
    [row,col] = size(I);
     for x = 1: row
          for y =1 : col
              a = I(x,y);
              
              if(a < t)
                  a = 0;
              else if(a >= t)
                      a = 255;
                  end
              end
              I(x,y) = a;
          end
     end
end
