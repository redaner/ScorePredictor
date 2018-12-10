nnData = transpose(fullData);
nnOutputData = zeros(3, 3420);
for i=1:3420
    if classificationOutput(i) == 1
        nnOutputData(1, i) = 1;
    elseif classificationOutput(i) == 0
        nnOutputData(2, i) = 1;
    else
        nnOutputData(3, i) = 1;
    end
end