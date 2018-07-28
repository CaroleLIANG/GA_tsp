function seln=sel(p)  %轮盘赌选择
seln=zeros(2,1);  
%从种群中选择两个个体，最好不要两次选择同一个个体  
for i=1:2  
   r=mod(randi([1,65535]),1000)/1000.0;  %产生一个随机数  
   prand=p-r;  
   j=1;  
   while prand(j)<0  %当随机概率小于个体累计概率时则选中
       j=j+1;  
   end  
   seln(i)=j; %选中个体的序号  
   if i==2&&j==seln(i-1)    %%若相同就再选一次  
       r=rand;  %产生一个随机数  
       prand=p-r;
       j=1;
       while prand(j)<0  
           j=j+1;  
       end  
   end  
end  
end  