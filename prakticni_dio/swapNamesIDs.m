for i = 1:size(fullData, 1)
    fullData(i, 2) = {find(ismember(teamsNames, fullData(i, 2)))};
    fullData(i, 3) = {find(ismember(teamsNames, fullData(i, 3)))};
    if any(ismember(fullData(i, 6), {'A'}))
        fullData(i, 6) = {-1};
    elseif any(ismember(fullData(i, 6), {'D'}))
        fullData(i, 6) = {0};
    else
        fullData(i, 6) = {1};
    end    
end 



