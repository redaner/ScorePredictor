counterNB = 0;
for i = 1:size(label, 1)
    if label(i) == classificationOutputTest(i)
        counterNB = counterNB + 1;
    end
end

percentageNB = counterNB / 1026;