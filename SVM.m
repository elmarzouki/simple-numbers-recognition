% SVM classifier
function [ result,DataSet ] = SVM(DataSet,sample)
DS = change(DataSet);
w = lineEq (DS);
total =0;
for i=1:32
    total = total + w(i)*sample(i);
end
if total < 18
    result = 1;
else
    result = 2;
end

end

function [w] = lineEq (DataSet)
w = zeros(1,32);
a = w;
r = size(DataSet);
    for y = 1:r(2)
        for i = 1:r(1)
            multi = 0;
            for k=1:32
                multi = multi + w(k)*DataSet(i,k);
            end
            if multi <= 0
                a = [a ; w];
                for k=1:32
                    w(k) = w(k) + DataSet(i,k);
                end
                
                re = checkEq(a,w);
                b = i;
            end  
        end
        if r(1) == b || re == 0
            break;
        else
            r(1) = b;
        end
    end
end

function [DataSet] = change(DataSet)
[x,y] = size(DataSet);
    for i=1:x
        if DataSet(i,33) == 1
            for j=1:(y-1)
                DataSet(i,j)=DataSet(i,j)*-1;
            end
        end
    end
end

function [re] = checkEq(a,w)
r=size(a);
for i = 1:r(1)
    if w == a(i,1:end)
        re = 0;
    else
        re = 1;
    end
end
end