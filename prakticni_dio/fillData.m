dataColumn = zeros(3420, 1);
fullData = [fullData dataColumn dataColumn dataColumn dataColumn dataColumn dataColumn dataColumn dataColumn];

for i = 1:size(fullData, 1)
    homeShots = double(matrixShots(fullData(i, 1)-1, 2)) / double(matrixShots(fullData(i, 1)-1, 3));
    awayShots = double(matrixShots(fullData(i, 2)-1, 2)) / double(matrixShots(fullData(i, 2)-1, 3));
    homeShotsOnTarget = double(matrixShotsOnTarget(fullData(i, 1)-1, 2)) / double(matrixShotsOnTarget(fullData(i, 1)-1, 3));
    awayShotsOnTarget = double(matrixShotsOnTarget(fullData(i, 2)-1, 2)) / double(matrixShotsOnTarget(fullData(i, 2)-1, 3));
    homeYellows = double(matrixYellows(fullData(i, 1)-1, 2)) / double(matrixYellows(fullData(i, 1)-1, 3));
    awayYellows = double(matrixYellows(fullData(i, 2)-1, 2)) / double(matrixYellows(fullData(i, 2)-1, 3));
    homeReds = double(matrixReds(fullData(i, 1)-1, 2)) / double(matrixReds(fullData(i, 1)-1, 3));
    awayReds = double(matrixReds(fullData(i, 2)-1, 2)) / double(matrixReds(fullData(i, 2)-1, 3));
    
    fullData(i, 8) = homeShots;
    fullData(i, 9) = awayShots;
    fullData(i, 10) = homeShotsOnTarget;
    fullData(i, 11) = awayShotsOnTarget;
    fullData(i, 12) = homeYellows;
    fullData(i, 13) = awayYellows;
    fullData(i, 14) = homeReds;
    fullData(i, 15) = awayReds;
end

