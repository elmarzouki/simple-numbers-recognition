function [cen_x,cen_y] = Centroid( image )
    [r, c] = size(image);
    total_x = 0;
    total_y = 0;
    total_1 = 0;
    for i = 1:r
       for j = 1:c
          if image(i,j) == 0
            total_x = total_x + i;
            total_y = total_y + j;
            total_1 = total_1 + 1;
          end
       end
    end
    cen_x = total_x / total_1;
    cen_y = total_y / total_1;
    cen_x = int16(cen_x);
    cen_y = int16(cen_y);
end

