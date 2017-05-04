function [ xx ] = Perimeter( image )
    x = regionprops(image,'Perimeter');
    x = x.Perimeter;
    xx= int64(x);
end
