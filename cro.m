%“交叉”操作  
function scro=cro(s,seln,pc)  
  
bn=size(s,2);  
pcc=pro(pc);  %根据交叉概率决定是否进行交叉操作，1则是，0则否  
scro(1,:)=s(seln(1),:);  
scro(2,:)=s(seln(2),:); 
if pcc==1  
   c1=mod(randi([65535]),48);  %在[1,bn-1]范围内随机产生一个交叉位  
   c2=mod(randi([65535]),48);  
   chb1=min(c1,c2);  
   chb2=max(c1,c2);  
   middle=scro(1,chb1+1:chb2);  
   scro(1,chb1+1:chb2)=scro(2,chb1+1:chb2);  
   scro(2,chb1+1:chb2)=middle;  
   for i=1:chb1  
       while find(scro(1,chb1+1:chb2)==scro(1,i))  
           zhi=find(scro(1,chb1+1:chb2)==scro(1,i));  
           y=scro(2,chb1+zhi);  
           scro(1,i)=y;  
       end  
       while find(scro(2,chb1+1:chb2)==scro(2,i))  
           zhi=find(scro(2,chb1+1:chb2)==scro(2,i));  
           y=scro(1,chb1+zhi);  
           scro(2,i)=y;  
       end  
   end  
   for i=chb2+1:bn  
       while find(scro(1,1:chb2)==scro(1,i))  
           zhi=logical(scro(1,1:chb2)==scro(1,i));  
           y=scro(2,zhi);  
           scro(1,i)=y;  
       end  
       while find(scro(2,1:chb2)==scro(2,i))  
           zhi=logical(scro(2,1:chb2)==scro(2,i));  
           y=scro(1,zhi);  
           scro(2,i)=y;  
       end  
   end  
end  
end  