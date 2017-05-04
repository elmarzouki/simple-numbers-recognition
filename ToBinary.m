function ImBin = ToBinary(image)
    ImGray = rgb2gray(image);
    level = graythresh(ImGray);
    ImBin = im2bw(ImGray, level);
end