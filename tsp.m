%����λ������  
function [DLn,cityn]=tsp(n)  
DLn=zeros(n,n);  
city=importdata('att48.txt');
%������������Գ��б���
for i=1:48  
    for j=1:48
        %αŷʽ���룬���Ž�Ϊ10628
        dst1=(((city(i,1)-city(j,1))^2+(city(i,2)-city(j,2))^2)/10)^0.5;  
        dst2=round(dst1);
        if (dst2 < dst1)
            DLn(i,j) = dst2 + 1;  
            DLn(j,i) = DLn(i,j);
        else 
            DLn(i,j) = dst2;  
            DLn(j,i)=DLn(i,j);
        end
    end  
end  
cityn=city;  
end