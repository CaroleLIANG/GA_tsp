%�����족����  
function snnew=mut(snew,pm)  
  
bn=size(snew,2);  
snnew=snew;  
  
pmm=pro(pm);  %���ݱ�����ʾ����Ƿ���б��������1���ǣ�0���  
if pmm==1  
   c1=mod(randi([65535]),48);  %��[1,bn-1]��Χ���������һ������λ  
   c2=mod(randi([65535]),48);  
   chb1=min(c1,c2);  
   chb2=max(c1,c2);  
   x=snew(chb1+1:chb2);  
   snnew(chb1+1:chb2)=fliplr(x);  
end  
end  