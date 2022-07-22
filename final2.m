name2016 = 'HaveYouBeenDiagnosedWithAMentalHealthConditionByAMedicalProfess';
name2017 = 'HaveYouEverBeenDiagnosedWithAMentalHealthDisorder_';
name2019 = 'HaveYouEverBeen_diagnosed_WithAMentalHealthDisorder_';

tb2016 = maketable('mh_tech2016.csv',2016,name2016,2,51);
tb2017 = maketable('mh_tech2017.csv',2017,name2017,3,50);
tb2018 = maketable('mh_tech2018.csv',2018,name2017,3,50);
tb2019 = maketable('mh_tech2019.csv',2019,name2019,2,49);
tb2020 = maketable('mh_tech2020.csv',2020,name2019,3,50);

sizeyr = [2016;2017;2018;2019;2020];

size1pd = [tb2016.percentage_diagnoized(1);tb2017.percentage_diagnoized(1);tb2018.percentage_diagnoized(1);tb2019.percentage_diagnoized(1);tb2020.percentage_diagnoized(1)];
size1 = table(size1pd,sizeyr);

size2pd = [tb2016.percentage_diagnoized(2);tb2017.percentage_diagnoized(2);tb2018.percentage_diagnoized(2);tb2019.percentage_diagnoized(2);tb2020.percentage_diagnoized(2)];
size2 = table(size2pd,sizeyr);

size3pd = [tb2016.percentage_diagnoized(3);tb2017.percentage_diagnoized(3);tb2018.percentage_diagnoized(3);tb2019.percentage_diagnoized(3);tb2020.percentage_diagnoized(3)];
size3 = table(size3pd,sizeyr);

size4pd = [tb2016.percentage_diagnoized(4);tb2017.percentage_diagnoized(4);tb2018.percentage_diagnoized(4);tb2019.percentage_diagnoized(4);tb2020.percentage_diagnoized(4)];
size4 = table(size4pd,sizeyr);

size5pd = [tb2016.percentage_diagnoized(5);tb2017.percentage_diagnoized(5);tb2018.percentage_diagnoized(5);tb2019.percentage_diagnoized(5);tb2020.percentage_diagnoized(5)];
size5 = table(size5pd,sizeyr);

sizeyr = [2021;2022;2023;2024;2025];
f1 = table(sizeyr);

yfit1 = size1_model.predictFcn(f1)
yfit2 = size2_model.predictFcn(f1)
yfit3 = size3_model.predictFcn(f1)
yfit4 = size4_model.predictFcn(f1)
yfit5 = size5_model.predictFcn(f1)


