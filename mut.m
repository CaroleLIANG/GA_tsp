%“变异”操作  
function snnew=mut(snew,pm)  
  
bn=size(snew,2);  
snnew=snew;  
  
pmm=pro(pm);  %根据变异概率决定是否进行变异操作，1则是，0则否  
if pmm==1  
   c1=mod(randi([65535]),48);  %在[1,bn-1]范围内随机产生一个变异位  
   c2=mod(randi([65535]),48);  
   chb1=min(c1,c2);  
   chb2=max(c1,c2);  
   x=snew(chb1+1:chb2);  
   snnew(chb1+1:chb2)=fliplr(x);  
end  
end  