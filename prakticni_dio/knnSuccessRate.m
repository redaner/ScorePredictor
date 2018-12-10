counterKNN = 0;
for i = 1:size(label, 1)
    if label(i) == classificationOutputTest(i)
        counterKNN = counterKNN + 1;
    end
end

percentageKNN = counterKNN / 1026;