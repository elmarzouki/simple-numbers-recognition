% ------------------------------------------
% function: Density
% prams: location of image
% retures: (Zeros/Area * 100) of the cutted area
% written by @iSuperMostafa
% ------------------------------------------
function [density] = Density(image)
    [row, column] = size(image);
    FirstZeroInRow = row;         % Index of the First Zero In Row
    LastZeroInRow = 1;          % Index of the Last Zero In Row
    FirstZeroInColumn = column;      % Index of the First Zero In Column
    LastZeroInColumn =1;        % Index of the Last Zero In Column
    % removing the unwanted Ones, by gettinh the four corners of
    % picture of the number
    for i = 1:row
       for j = 1:column
           if image(i,j) == 0
               if i < FirstZeroInRow
                   FirstZeroInRow = i;
               elseif i > LastZeroInRow
                   LastZeroInRow = i;
               end
               if j < FirstZeroInColumn
                   FirstZeroInColumn = j;
               elseif j > LastZeroInColumn
                   LastZeroInColumn = j;
               end
           end
       end
    end
    
    % these lines for testing >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> remove later
    %imshow(ImBin);
    % cutting the image with the new four corners
    %Cutted = ImBin(FirstZeroInRow:LastZeroInRow, FirstZeroInColumn:LastZeroInColumn);
    %imshow(Cutted);
    %density = [FirstZeroInRow, LastZeroInRow, FirstZeroInColumn,LastZeroInColumn];
    
    % looping using the new corners to get the Zeros and Ones
    Zeros = 0;
    %Ones = 0;
    Area = (LastZeroInRow-FirstZeroInRow)*(LastZeroInColumn-FirstZeroInColumn);
    for i= FirstZeroInRow:LastZeroInRow
        for j= FirstZeroInColumn:LastZeroInColumn
            if image(i,j) == 0
                Zeros = Zeros + 1;
            %elseif ImBin(i,j) == 1
            %    Ones = Ones + 1;
            end
        end
    end
    density = (Zeros/Area)*100;
    
end


