clear all;
close all;

CityNum=48; 
inn=30; %��ʼ��Ⱥ��С  
gnmax=10000;  %������  
pc=0.8; %�������  
pm=0.5; %�������  
[dislist,Clist]=tsp(CityNum); 

%������ʼ��Ⱥ  
s=zeros(inn,CityNum);  
for i=1:inn  
    s(i,:)=randperm(CityNum);  
end  
[~,p]=objf(s,dislist);  
  
gn=1;  
ymean=zeros(gn,1);  
ymax=zeros(gn,1);  
xmax=zeros(inn,CityNum);  
scnew=zeros(inn,CityNum);  
smnew=zeros(inn,CityNum);
tic
while gn<gnmax+1  
   for j=1:2:inn  
      seln=sel(p);  %ѡ�����  
      scro=cro(s,seln,pc);  %�������  
      scnew(j,:)=scro(1,:);  
      scnew(j+1,:)=scro(2,:);  
      smnew(j,:)=mut(scnew(j,:),pm);  %�������  
      smnew(j+1,:)=mut(scnew(j+1,:),pm);  
   end  
   s=smnew;  %�������µ���Ⱥ  
   [f,p]=objf(s,dislist);  %��������Ⱥ����Ӧ��  
   %��¼��ǰ����ú�ƽ������Ӧ��  
   [fmax,nmax]=max(f);  
   ymean(gn)=1000/mean(f);  
   ymax(gn)=1000/fmax;  
   %��¼��ǰ������Ѹ���  
   x=s(nmax,:);  
   xmax(gn,:)=x;  
   %drawTSP(Clist,x,ymax(gn),gn,0);  
   gn=gn+1;  
end
toc
[min_ymax,index]=min(ymax);  
drawTSP(Clist,xmax(index,:),min_ymax,index,1);

% figure(2);  
% plot(ymax,'r'); hold on;  
% plot(ymean,'b');grid;  
% title('��������');  
% legend('���Ž�','ƽ����');  
fprintf('�Ŵ��㷨�õ�����̾���:%.2f\n',min_ymax);  
fprintf('�Ŵ��㷨�õ������·��');  
disp(xmax(index,:));  