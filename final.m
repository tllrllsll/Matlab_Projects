T = readtable('mh_tech.csv');
size = T(:,2);
% age 
%size of the company
csize = [T(:,2) T(:,51)];
% '1' '2-5' '6-25' '26-100' '101-500' '501-1000' 'More than 1000'
for i = 1:1433
    %class(csize{i,1});
    if 1 == strcmp('',T{i,2}{1})
       T{i,2}{1} = 1;
    end
    if 1 == strcmp('1-5',T{i,2}{1})
       T{i,2}{1}=5;
    end
    if 1 == strcmp('6-25',T{i,2}{1})
       T{i,2}{1}=25;
    end
    if 1 == strcmp('26-100',T{i,2}{1})
       T{i,2}{1}=100;
    end
    if 1 == strcmp('100-500',T{i,2}{1})
       T{i,2}{1}=500;
    end
    if 1 == strcmp('500-1000',T{i,2}{1})
       T{i,2}{1}=500;
    end
    if 1 == strcmp('More than 1000',T{i,2}{1})
       T{i,2}{1}=2500000;
    end
    if 1 == strcmp('Yes',T{i,2}{1})
       T{i,2}{1}=1;
    end
    if 1 == strcmp('No',T{i,2}{1})
       T{i,2}{1}=0;
    end
end



%{
%size vs mental condition
% self-employed/1 person
county1 = 0; countt1 = 0;
for i = 1:size(csize)
    if 1 == strcmp('1',csize{i,1}{1})
        countt1 = countt1 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county1 = county1 + 1;
        end
    end
end
p1 = county1/countt1*100;
% size 1-5 
county15 = 0; countt15 = 0;
for i = 1:size(csize)
    if 1 == strcmp('1-5',csize{i,1}{1})
        countt15 = countt15 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county15 = county15 + 1;
        end
    end
end
p15 = county15/countt15*100;
% size 6-25 
county625 = 0; countt625 = 0;
for i = 1:size(csize)
    if 1 == strcmp('6-25',csize{i,1}{1})
        countt625 = countt625 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county625 = county625 + 1;
        end
    end
end
p625 = county625/countt625*100;
% size 26-100 
county261 = 0; countt261 = 0;
for i = 1:size(csize)
    if 1 == strcmp('26-100',csize{i,1}{1})
        countt261 = countt261 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county261 = county261 + 1;
        end
    end
end
p261 = county261/countt261*100;
% size 100-500 
county500 = 0; countt500 = 0;
for i = 1:size(csize)
    if 1 == strcmp('100-500',csize{i,1}{1})
        countt500 = countt500 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county500 = county500 + 1;
        end
    end
end
p500 = county500/countt500*100;
% size 500-1000 
county1000 = 0; countt1000 = 0;
for i = 1:size(csize)
    if 1 == strcmp('500-1000',csize{i,1}{1})
        countt1000 = countt1000 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            county1000 = county1000 + 1;
        end
    end
end
p1000 = county1000/countt1000*100;
% size more 1000 
countym1000 = 0; counttm1000 = 0;
for i = 1:size(csize)
    if 1 == strcmp('More than 1000',csize{i,1}{1})
        counttm1000 = counttm1000 + 1;
        if 1 == strcmp('Yes',csize{i,2}{1})
            countym1000 = countym1000 + 1;
        end
    end
end
pm1000 = countym1000/counttm1000*100;
x = categorical({'1/self-employed','1-5','6-25','26-100','100-500','500-1000','More than 1000'});
x = reordercats(x,{'1/self-employed','1-5','6-25','26-100','100-500','500-1000','More than 1000'});
y = [ p1 p15 p625 p261 p500 p1000 pm1000];
%bar(x,y)
%title('size of the company vs percentage of employees suffer from mental health problems')
%xlabel('size of the company') 
%ylabel('% Percentage suffer from mental health') 
%ylim([40 60])
%hold on
subplot(4,2,1)
pie3([p1 100-p1])
title('Size: 1/self-employed')
legend('Diagnosed','Undiagnosed')

subplot(4,2,2)
pie3([p15 100-p15])
title('Size: 1-5')
legend('Diagnosed','Undiagnosed')

subplot(4,2,3)
pie3([p625 100-p625])
title('Size: 6-25')
legend('Diagnosed','Undiagnosed')

subplot(4,2,4)
pie3([p261 100-p261])
title('Size: 26-100')
legend('Diagnosed','Undiagnosed')

subplot(4,2,5)
pie3([p500 100-p500])
title('Size: 100-500')
legend('Diagnosed','Undiagnosed')

subplot(4,2,6)
pie3([p1000 100-p1000])
title('Size: 500-1000')
legend('Diagnosed','Undiagnosed')

subplot(4,2,7)
pie3([pm1000 100-pm1000])
title('Size: More than 1000')
legend('Diagnosed','Undiagnosed')
%}








