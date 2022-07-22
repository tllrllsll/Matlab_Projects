function tcs = maketable(x,y,z,line1,line2)
T = readtable(x);
T.Properties.VariableNames{'HowManyEmployeesDoesYourCompanyOrOrganizationHave_'} = 'comp_size';
T.Properties.VariableNames{z} = 'diagnozied';
for i = 1:length(T{:,line1})
    if 1 == strcmp('',T{i,line1}{1})
       T{i,line1}{1} = 1;
    end
    if 1 == strcmp('1-5',T{i,line1}{1})
       T{i,line1}{1}=5;
    end
    if 1 == strcmp('6-25',T{i,line1}{1})
       T{i,line1}{1}=25;
    end
    if 1 == strcmp('26-100',T{i,line1}{1})
       T{i,line1}{1}=100;
    end
    if 1 == strcmp('100-500',T{i,line1}{1})
       T{i,line1}{1}=500;
    end
    if 1 == strcmp('500-1000',T{i,line1}{1})
       T{i,line1}{1}=1000;
    end
    if 1 == strcmp('More than 1000',T{i,line1}{1})
       T{i,line1}{1}=2500000;
    end
    if 1 == strcmp('Yes',T{i,line2}{1})
       T{i,line2}{1}=1;
    end
    if 1 == strcmp('No',T{i,line2}{1})
       T{i,line2}{1}=0;
    end
end
%size vs mental condition

%self-employed/1 person
county1 = 0; countt1 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==1
        countt1 = countt1 + 1;
        if T{i,line2}{1}==1
            county1 = county1 + 1;
        end
    end
end
p1 = county1/countt1*100;
% size 1-5 
county15 = 0; countt15 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==5
        countt15 = countt15 + 1;
        if T{i,line2}{1}==1
            county15 = county15 + 1;
        end
    end
end
p15 = county15/countt15*100;
% size 6-25 
county625 = 0; countt625 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==25
        countt625 = countt625 + 1;
        if T{i,line2}{1}==1
            county625 = county625 + 1;
        end
    end
end
p625 = county625/countt625*100;
% size 26-100 
county261 = 0; countt261 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==100
        countt261 = countt261 + 1;
        if T{i,line2}{1}==1
            county261 = county261 + 1;
        end
    end
end
p261 = county261/countt261*100;
% size 100-500 
county500 = 0; countt500 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==500
        countt500 = countt500 + 1;
        if T{i,line2}{1}==1
            county500 = county500 + 1;
        end
    end
end
p500 = county500/countt500*100;
% size 500-1000 
county1000 = 0; countt1000 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==1000
        countt1000 = countt1000 + 1;
        if T{i,line2}{1}==1
            county1000 = county1000 + 1;
        end
    end
end
p1000 = county1000/countt1000*100;
% size more 1000 
countym1000 = 0; counttm1000 = 0;
for i = 1:length(T{:,line1})
    if T{i,line1}{1}==2500000
        counttm1000 = counttm1000 + 1;
        if T{i,line2}{1}==1
            countym1000 = countym1000 + 1;
        end
    end
end
pm1000 = countym1000/counttm1000*100;
%{
T.diagnozied;

T.comp_size=cell2mat(T.comp_size);
T.diagnozied=cell2mat(T.diagnozied);
Csize = [T(:,line1) T(:,line2)];
Csize.comp_size = log(Csize.comp_size);
%}
percentage_diagnoized = [p1;p15;p625;p261;p500;p1000;pm1000];
year = [y;y;y;y;y;y;y];
n1 = "1"; n2 = "2-5"; n3 = "6-25"; n4 = "26-100"; n5 = "101-500"; n6 = "500-1000";n7 = "More than 1000";
size_company = [n1;n2;n3;n4;n5;n6;n7];
tcs = table(year,size_company,percentage_diagnoized);
end


