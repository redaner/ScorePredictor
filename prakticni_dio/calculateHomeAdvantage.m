homeAdvantageColumn = zeros(3420, 1);
fullData = [fullData homeAdvantageColumn];

for i = 1:size(fullData, 1)
    homeTeam = fullData(i, 1);
    counter = 0;
    homeAdvantage = 0;
    
    for j = i-1:-1:1
        if fullData(j, 1) == homeTeam
            counter = counter + 1;
            if fullData(j, 3) == 1
                homeAdvantage = homeAdvantage + 1;
            end
        end
    end
    
    if counter > 0
        fullData(i, 7) = homeAdvantage / counter;
    end
    
    
end