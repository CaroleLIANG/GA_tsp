function seln=sel(p)  %���̶�ѡ��
seln=zeros(2,1);  
%����Ⱥ��ѡ���������壬��ò�Ҫ����ѡ��ͬһ������  
for i=1:2  
   r=mod(randi([1,65535]),1000)/1000.0;  %����һ�������  
   prand=p-r;  
   j=1;  
   while prand(j)<0  %���������С�ڸ����ۼƸ���ʱ��ѡ��
       j=j+1;  
   end  
   seln(i)=j; %ѡ�и�������  
   if i==2&&j==seln(i-1)    %%����ͬ����ѡһ��  
       r=rand;  %����һ�������  
       prand=p-r;
       j=1;
       while prand(j)<0  
           j=j+1;  
       end  
   end  
end  
end  