%���ݱ��죨���棩�����ж��Ƿ���죨���棩
%((rand()%100 + 0.0) / 100)
%�����������С�ڱ��죨���棩���� ��ø�����б��죨���棩
function pcc=pro(pc)  
    test(1:100)=0;  
    l=round(100*pc);  
    test(1:l)=1;  
    n=round(rand*99)+1;  
    pcc=test(n);     
end  