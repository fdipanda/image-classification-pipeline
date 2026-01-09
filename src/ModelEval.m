% Predict Test Labels
[predictedLabels, scores] = classify(trainedNet, augTest);

% Actual Labels
actualLabels = imdsTest.Labels;

% Accuracy
testAccuracy = mean(predictedLabels == actualLabels);
fprintf('Test Accuracy: %.2f%%\n', testAccuracy * 100);

% Confusion Matrix
figure;
confusionchart(actualLabels, predictedLabels);
title('Confusion Matrix - Test Set');
