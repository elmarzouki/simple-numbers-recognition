% ------------------------------------------
% function: Normalize
% prams: Matrix
% retures: Normalized Matrix 
% written by @iSuperMostafa
% ------------------------------------------
function Matrix = Normalize(Matrix)
    Maxi = max(Matrix);
    [row, col] = size(Matrix);
    col = col -1; %this last col refers to the class
    for i=1:row
        for j=1:col
            Matrix(i,j) = double(Matrix(i,j)/Maxi(j));
        end
    end
end