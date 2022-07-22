mhealth2016 = readtable('mh_tech.csv');
age = mhealth2016.WhatIsYourAge_;
min_index = find(age<10);
mhealth2016(min_index,:)=[];
max_index = find(age>100);
mhealth2016(max_index,:)=[];
