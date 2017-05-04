
function [ A, B, C, D ] = Split(image)
    img = imread(image);
    A = img(1:size(img,1)/2,1:size(img,2)/2,:);
    B = img(size(img,1)/2+1:size(img,1),1:size(img,2)/2,:);
    C = img(1:size(img,1)/2,size(img,2)/2+1:size(img,2),:);
    D = img(size(img,1)/2+1:size(img,1),size(img,2)/2+1:size(img,2),:);
    % convert the matrix to binary representation
    A = ToBinary(A);
    B = ToBinary(B);
    C = ToBinary(C);
    D = ToBinary(D);
end