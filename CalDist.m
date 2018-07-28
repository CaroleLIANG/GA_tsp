%ÊÊÓ¦¶Èº¯Êı  
function F=CalDist(dislist,s)  
  
DistanV=0;  
n=size(s,2);  
for i=1:(n-1)  
    DistanV=DistanV+dislist(s(i),s(i+1));
end  
DistanV=DistanV+dislist(s(n),s(1));  
F=DistanV;  
end