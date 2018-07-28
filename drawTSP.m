%画图  
function drawTSP(Clist,BSF,bsf,p,f)
CityNum=size(Clist,1);  
for i=1:CityNum-1  
    plot([Clist(BSF(i),1),Clist(BSF(i+1),1)],[Clist(BSF(i),2),Clist(BSF(i+1),2)],'ms-','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g');  
    text(Clist(BSF(i),1),Clist(BSF(i),2),['  ',int2str(BSF(i))]);  
    text(Clist(BSF(i+1),1),Clist(BSF(i+1),2),['  ',int2str(BSF(i+1))]);  
    hold on;  
end  
plot([Clist(BSF(CityNum),1),Clist(BSF(1),1)],[Clist(BSF(CityNum),2),Clist(BSF(1),2)],'ms-','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g');  
title([num2str(CityNum),'城市TSP']);  
if f==0&&CityNum~=10  
    text(10,5500,['第 ',int2str(p),' 代','  最短距离为 ',num2str(bsf)]);  
else  
    text(10,5500,['最终搜索结果：最短距离 ',num2str(bsf),'， 在第 ',num2str(p),' 代达到']);  
end  
hold off;  
pause(0.05);   
end 