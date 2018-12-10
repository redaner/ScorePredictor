formColumn = zeros(3420, 1);
fullData = [fullData formColumn formColumn];

for i = 1:size(fullData, 1)
    homeTeam = fullData(i, 1);
    awayTeam = fullData(i, 2);
    homeTeamForm = 0;
    awayTeamForm = 0;
    counterHomeTeam = 0;
    counterAwayTeam = 0;
    for j = i-1:-1:1
        if fullData(j, 1) == homeTeam || fullData(j, 2) == homeTeam 
            if counterHomeTeam >= 10
                break;
            end
            counterHomeTeam = counterHomeTeam + 1;
            if fullData(j,1) == homeTeam
                if fullData(j, 3) == 1
                    homeTeamForm = homeTeamForm + 1;
                elseif fullData(j, 3) == 0
                    homeTeamForm = homeTeamForm + 0.5;
                else
                    homeTeamForm = homeTeamForm;
                end
            else
                if fullData(j, 3) == -1
                    homeTeamForm = homeTeamForm + 1;
                elseif fullData(j, 3) == 0
                    homeTeamForm = homeTeamForm + 0.5;
                else
                    homeTeamForm = homeTeamForm;
                end
            end
        end
    end
    for j = i-1:-1:1
        if fullData(j, 1) == awayTeam || fullData(j, 2) == awayTeam 
            if counterAwayTeam >= 10
                break;
            end
            counterAwayTeam = counterAwayTeam + 1;
            if fullData(j,1) == awayTeam
                if fullData(j, 3) == 1
                    awayTeamForm = awayTeamForm + 1;
                elseif fullData(j, 3) == 0
                    awayTeamForm = awayTeamForm + 0.5;
                else
                    awayTeamForm = awayTeamForm;
                end
            else
                if fullData(j, 3) == -1
                    awayTeamForm = awayTeamForm + 1;
                elseif fullData(j, 3) == 0
                    awayTeamForm = awayTeamForm + 0.5;
                else
                    awayTeamForm = awayTeamForm;
                end
            end
        end
    end
    if counterHomeTeam > 0
        fullData(i, 12) = homeTeamForm / counterHomeTeam;
    end
    if counterAwayTeam > 0
        fullData(i, 3) = awayTeamForm / counterAwayTeam;
    end    
    
end

