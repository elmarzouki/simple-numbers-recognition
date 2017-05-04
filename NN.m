% NN classifier
function Result = NN(DataSet, TestSet)
    
    [rowTest, colTest] = size(TestSet);% Dims of the Test Pattern
    [rowData, colData] = size(DataSet);% Dims of the DataSet
    Result = zeros(rowTest,1); % Extracting Output [vector feh 3add al rows bta3 al test data] map the class to each row
    Distance=0;
    columsPerObj = colData+1;
    
    for iQ = 1:rowTest  % To Loop for all test patterns     
        for ii = 1:rowData         
            for ji = 1:colData-1            
                Distance = Distance + (power(DataSet(ii,ji) - TestSet(iQ,ji), 2));
            end
            Distance = sqrt(double(Distance));            % Ecludians distance  
            DataSet(ii,columsPerObj) = Distance; 
            Distance = 0;
        end
        columsPerObj = columsPerObj+1; %If we have more than pattern in Test 
    end
    j = 1;
    for i = colTest+1:columsPerObj-2
        [~, order] = sort(DataSet(:,i));%sort by the Classes distance column
        Result(j) = DataSet(order(1),33);
        j=j+1;
    end
end