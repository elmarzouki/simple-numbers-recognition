function[medX,medY] = GetMedoid(image)
    image = double(image);
    % Get logical medoid matrix
    logical_med = image==median(image(:));
    % find medoids indexes [doubles]
    med_indexes = find(logical_med);
    if numel(med_indexes) == 0
        logical_med = ~logical_med;
        med_indexes = find(logical_med);
    end
    % find medoids indexes [(X,Y) pairs]
    [X,Y] = find(logical_med);
    % Get median value of med_indexes
    med_val = med_indexes(round(numel(med_indexes)/2));
    % Get median index of med_indexes
    med_index = find(med_indexes==med_val);
    medX = X(med_index);
    medY = Y(med_index);
end