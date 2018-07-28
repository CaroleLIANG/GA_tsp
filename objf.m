function [f,p]=objf(s,dislist)%�����ʼ����Ⱥ������
  
inn=size(s,1);  %��ȡ��Ⱥ��С  
f=zeros(inn,1);  
for i=1:inn  
   f(i)=CalDist(dislist,s(i,:));  %���㺯��ֵ������Ӧ��  
end  
f=1000./f'; %ȡ���뵹��  
  
%���ݸ������Ӧ�ȼ����䱻ѡ��ĸ���  
fsum=0;  
for i=1:inn  
   fsum=fsum+f(i)^15;% ����Ӧ��Խ�õĸ��屻ѡ�����Խ��  
end  
ps=zeros(inn,1);  
for i=1:inn  
   ps(i)=f(i)^15/fsum;  
end  
  
%�����ۻ�����  
p=zeros(inn,1);  
p(1)=ps(1);  
for i=2:inn  
   p(i)=p(i-1)+ps(i);  
end  
p=p';  
end  