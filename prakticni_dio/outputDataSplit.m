classificationOutput = fullData(:, 3);
classificationOutputTraining = classificationOutput(1:2394, :);
classificationOutputTest = classificationOutput(2395:end, :);