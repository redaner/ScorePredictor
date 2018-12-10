formColumn = zeros(3420, 1);
fullData = [fullData formColumn];

for i = 1:size(fullData, 1)
    homeTeam = fullData(i, 1);
    awayTeam = fullData(i, 2);
    headToHead = 0;
    counter = 0;
    
    for j = i-1:-1:1
        if (fullData(j, 1) == homeTeam && fullData(j, 2) == awayTeam) || (fullData(j, 1) == awayTeam && fullData(j, 2) == homeTeam)
            counter = counter +  1;
            if fullData(j, 1) == homeTeam
                if fullData(j, 3) == 1
                    if counter <= 6 
                        headToHead = headToHead + 1;
                    else
                        headToHead = headToHead + 0.8;
                    end
                elseif fullData(j, 3) == 0
                   
                else
                    if counter <= 6
                        headToHead = headToHead - 1;
                    else
                        headToHead = headToHead - 0.8;
                    end
                end
            else
                if fullData(j, 3) == 1
                    if counter <= 6 
                        headToHead = headToHead - 1;
                    else
                        headToHead = headToHead - 0.8;
                    end
                elseif fullData(j, 3) == 0
                   
                else
                    if counter <= 6
                        headToHead = headToHead + 1;
                    else
                        headToHead = headToHead + 0.8;
                    end
                end
            end
        end   
    end
    
    if counter > 0
        fullData(i, 6) = headToHead / counter;
    end
    
end