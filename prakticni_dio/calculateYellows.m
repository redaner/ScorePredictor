matrixYellows = [1, 0, 0; 2, 0, 0; 3, 0, 0; 4, 0, 0; 5, 0, 0;
               6, 0, 0; 7, 0, 0; 8, 0, 0; 9, 0, 0; 10, 0, 0;
               11, 0, 0; 12, 0, 0; 13, 0, 0; 14, 0, 0; 15, 0, 0;
               16, 0, 0; 17, 0, 0; 18, 0, 0; 19, 0, 0; 20, 0, 0;
               21, 0, 0; 22, 0, 0; 23, 0, 0; 24, 0, 0; 25, 0, 0;
               26, 0, 0; 27, 0, 0; 28, 0, 0; 29, 0, 0; 30, 0, 0;
               31, 0, 0; 32, 0, 0; 33, 0, 0; 34, 0, 0; 35, 0, 0;
               36, 0, 0];
           
for i = 1:size(fullData, 1)
    matrixYellows(fullData(i, 1)-1, 2) = matrixYellows(fullData(i, 1)-1, 2) + fullData(i, 16);
    matrixYellows(fullData(i, 2)-1, 2) = matrixYellows(fullData(i, 2)-1, 2) + fullData(i, 17);
    matrixYellows(fullData(i, 1)-1, 3) = matrixYellows(fullData(i, 1)-1, 3) + 1;
    matrixYellows(fullData(i, 2)-1, 3) = matrixYellows(fullData(i, 2)-1, 3) + 1;
end
