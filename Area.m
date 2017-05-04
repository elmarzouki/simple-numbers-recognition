% ------------------------------------------
% function: Area
% prams: location of image
% retures: number of the black pixels in 
% the image
% written by @iSuperMostafa
% ------------------------------------------
function Zeros = Area(image)
    [row, column] = size(image);
    % count the zeros in the image
    Zeros = 0;
    for i = 1:row
       for j = 1:column
          if image(i,j) == 0
            Zeros =Zeros +1;
            Zeros = int64(Zeros);
            
          end
       end
    end
end

