function [result]= KNN_Callback(sample , ds)
disp('please enter the number of photo :');
n=input('Number :');
kk = input ('k :');
disp('KNN Result is :');
result=KNN(sample,ds,kk,n);
end


function [ group ] = KNN( sample,table,k,pic )
count_1 = 0;
count_2 = 0;
count_3 = 0;
count_4 = 0;
count_5 = 0;
count_6 = 0;
group = 0;
[x,y] = size(table);
result = zeros(x,2);
for i = 1:x
    result(i,1) = sqrt(double((table(i,1)-sample(pic,1)))^2+(table(i,2)-sample(pic,2))^2+(table(i,3)-sample(pic,3))^2+(table(i,4)-sample(pic,4))^2+(table(i,5)-sample(pic,5))^2+(table(i,6)-sample(pic,6))^2+(table(i,7)-sample(pic,7))^2+(table(i,8)-sample(pic,8))^2+(table(i,9)-sample(pic,9))^2+(table(i,10)-sample(pic,10))^2+(table(i,11)-sample(pic,11))^2+(table(i,12)-sample(pic,12))^2+(table(i,13)-sample(pic,13))^2+(table(i,14)-sample(pic,14))^2+(table(i,15)-sample(pic,15))^2+(table(i,16)-sample(pic,16))^2+(table(i,17)-sample(pic,17))^2+(table(i,18)-sample(pic,18))^2+(table(i,19)-sample(pic,19))^2+(table(i,20)-sample(pic,20))^2+(table(i,21)-sample(pic,21))^2+(table(i,22)-sample(pic,22))^2+(table(i,23)-sample(pic,23))^2+(table(i,24)-sample(pic,24))^2+(table(i,25)-sample(pic,25))^2+(table(i,26)-sample(pic,26))^2+(table(i,27)-sample(pic,27))^2+(table(i,28)-sample(pic,28))^2+(table(i,29)-sample(pic,29))^2+(table(i,30)-sample(pic,30))^2+(table(i,31)-sample(pic,31))^2+(table(i,32)-sample(pic,32))^2);
    result(i,2) = table(i,33);
end

for pass = 1:x
    for m = 1:(x-1)
        if result(m,1)>result(m+1,1)
            temp = result(m,1);
            result(m,1) = result(m+1,1);
            result(m+1,1) = temp;
            gr = result(m,2);
            result(m,2) = result(m+1,2);
            result(m+1,2) = gr;
        end
    end
    
end
for n = 1:k
    if result(n,2) == 1
        count_1 = count_1 + 1;
    else
        if result(n,2) == 2
            count_2 = count_2 + 1;
        else
            
            if result(n,2) == 3
                count_3 = count_3 + 1;
            else
                if result(n,2) == 4
                    count_4 = count_4 + 1;
                else
                    
                    if result(n,2) == 5
                        count_5 = count_5 + 1;
                    else
                        if result(n,2) == 6
                            count_6 = count_6 + 1;
                        end
                    end
                end
            end
        end
    end
end

if count_1 > count_2 && count_1 > count_3 && count_1 > count_4 && count_1 > count_5 && count_1 > count_6
    group = 1;
else
    if count_2 > count_1 && count_2 > count_3 && count_2 > count_4 && count_2 > count_5 && count_2 > count_6
        group = 2;
    else
        if count_3 > count_1 && count_3 > count_2 && count_3 > count_4 && count_3 > count_5 && count_3 > count_6
            group = 3;
        else
            if count_4 > count_1 && count_4 > count_2 && count_4 > count_3 && count_4 > count_5 && count_4 > count_6
                group = 4;
            else
                if count_5 > count_1 && count_5 > count_2 && count_5 > count_3 && count_5 > count_4 && count_5 > count_6
                    group = 5;
                else
                    if count_6 > count_1 && count_6 > count_2 && count_6 > count_3 && count_6 > count_4 && count_6 > count_5
                        group = 6;
                    end
                end
            end
        end
    end
end


end

