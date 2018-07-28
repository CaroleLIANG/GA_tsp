%根据变异（交叉）概率判断是否变异（交叉）
%((rand()%100 + 0.0) / 100)
%产生的随机数小于变异（交叉）概率 则该个体进行变异（交叉）
function pcc=pro(pc)  
    test(1:100)=0;  
    l=round(100*pc);  
    test(1:l)=1;  
    n=round(rand*99)+1;  
    pcc=test(n);     
end  