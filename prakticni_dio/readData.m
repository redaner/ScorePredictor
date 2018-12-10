[num,txt,prva] = xlsread('season-0910_csv.csv');
[num,txt,druga] = xlsread('season-1011_csv.csv');
[num,txt,treca] = xlsread('season-1112_csv.csv');
[num,txt,cetvrta] = xlsread('season-1213_csv.csv');
[num,txt,peta] = xlsread('season-1314_csv.csv');
[num,txt,sesta] = xlsread('season-1415_csv.csv');
[num,txt,sedma] = xlsread('season-1516_csv.csv');
[num,txt,osma] = xlsread('season-1617_csv.csv');
[num,txt,deveta] = xlsread('season-1718_csv.csv');

prva(1, :) = [];
druga(1, :) = [];
treca(1, :) = [];
cetvrta(1, :) = [];
peta(1, :) = [];
sesta(1, :) = [];
sedma(1, :) = [];
osma(1, :) = [];
deveta(1, :) = [];

fullData = [prva; druga; treca; cetvrta; peta; sesta; sedma; osma; deveta];





   


