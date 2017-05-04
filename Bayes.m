% Bayes classifier
function [ group ] = Bayes( matrix,vector )
[row,col]=size(matrix);
[~,w] = size(vector);
 counter2 = 0 ; 
      propFeatureMatrix = zeros(6,w); 
      for clas=1:6 
          for i=1:w %1:32
              for j=1:row %1:150
                  if vector(i)<= matrix(j,i) && matrix(j,col)==clas
                      counter2=counter2+1 ; 
                  end
              end
              propFeatureMatrix(clas,i)=counter2/25 ; 
              
              counter2=0;
          end
          disp(propFeatureMatrix)
      end
      

hold = 1 ;
      for i=1:6
          for j=1:w % el width ele gai mn foo2 
            hold = hold * propFeatureMatrix(i,j) ; 
          end
          propClasses(i) = (1\6)*hold ;
          hold = 1 ; 
      end
     
if propClasses(1) > propClasses(2) && propClasses(1)> propClasses(3) && propClasses(1) >propClasses(4)  &&propClasses(1)  > propClasses(5) && propClasses(1) >propClasses(6)
    group=1;
else
    if  propClasses(2) > propClasses(1) && propClasses(2)> propClasses(3) && propClasses(2) >propClasses(4)  &&propClasses(2)  > propClasses(5) && propClasses(2) >propClasses(6)
        group = 2;
    else
        if  propClasses(3) > propClasses(1) && propClasses(3)> propClasses(2) && propClasses(3) >propClasses(4)  &&propClasses(3)  > propClasses(5) && propClasses(3) >propClasses(6)
           group = 3;
        else
            if  propClasses(4) > propClasses(1) && propClasses(4)> propClasses(2) && propClasses(4) >propClasses(3)  &&propClasses(4)  > propClasses(5) && propClasses(4) >propClasses(6)
                group = 4;
            else
                if  propClasses(5) > propClasses(1) && propClasses(5)> propClasses(2) && propClasses(5) >propClasses(3)  &&propClasses(5)  > propClasses(4) && propClasses(5) >propClasses(6)
                    group = 5;
                else 
                  if propClasses(6) > propClasses(1) &&( propClasses(6)> propClasses(2)) && (propClasses(6) >propClasses(3) ) && (propClasses(6)  > propClasses(4)) && (propClasses(6) >propClasses(5));
                   group = 6;
                  else
                      group = -1;
                  end
                end
            end
        end
    end
end
end