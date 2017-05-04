function [l]= NN_Callback(sample , ds)
    disp('NN Result is :');
    l=NN(sample,ds);
    
end


function [ group ] = NN(sample,table)
[x,y] = size(table);
group =zeros(1,20) ;
 for j = 1:20
     for i = 1:x
      dis = sqrt(double((sample(j,1)-table(i,1))^2+(sample(j,2)-table(i,2))^2+(sample(j,3)-table(i,3))^2+(sample(j,4)-table(i,4))^2+(sample(j,5)-table(i,5))^2+(sample(j,6)-table(i,6))^2+(sample(j,7)-table(i,7))^2+(sample(j,8)-table(i,8))^2+(sample(j,9)-table(i,9))^2+(sample(j,10)-table(i,10))^2+(sample(j,11)-table(i,11))^2+(sample(j,12)-table(i,12))^2+(sample(j,13)-table(i,13))^2+(sample(j,14)-table(i,14))^2+(sample(j,15)-table(i,15))^2+(sample(j,16)-table(i,16))^2+(sample(j,17)-table(i,17))^2+(sample(j,18)-table(i,18))^2+(sample(j,19)-table(i,19))^2+(sample(j,20)-table(i,20))^2+(sample(j,21)-table(i,21))^2+(sample(j,22)-table(i,22))^2+(sample(j,23)-table(i,23))^2+(sample(j,24)-table(i,24))^2));    
      if i == 1
          mini = dis;
         continue;
      else   
          if dis < mini
            mini = dis;
            group(j) = table(i,25);
          end
      end
     end
 end

end