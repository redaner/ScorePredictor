counter = 1;
teamsNames = ['team';];
for i = 1:size(fullData, 1)
    if ~any(ismember(teamsNames(:, 1), fullData(i, 2)))
        teamsNames = [teamsNames; fullData(i, 2)];
        counter = counter + 1;
    end    
end    



