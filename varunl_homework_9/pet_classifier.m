function yguess = pet_classifier(Xtest)
    %SVMModel = fitcsvm(Xtrain,ytrain,'Standardize',true,'KernelFunction','rbf','BoxConstraint',293.05,'KernelScale',999.93);
    load('svm_classifier.mat','SVMModel');
    [yguess,~] = predict(SVMModel,Xtest);
    % Training Accuracy: 95.75%
    % Testing Accuracy: 95.25%
end