load([pwd, '\DataSet.mat']);
load([pwd, '\TestSet.mat']);
c = NN(DataSet, TestSet);
truelabels = [1 3 1 1 1 5 2 2 2 2 3 4 4 4 4 6 5 6 6 6];
cp = classperf(truelabels,c);
get(cp)
 

 
            