[X,y] = read_data();% reads data
[Xtrain,ytrain,Xtest,ytest] = split_data(X,y,20);% splits the data into testing and training set
%% Trying closest average
yguess1train = closest_average(Xtrain,ytrain,Xtrain);% gets the guess for training data
accuracy_average1 = calculate_accuracy(ytrain,yguess1train);% calculates accuracy for training data
%Accuracy = 81.1%
yguess2test = closest_average(Xtrain,ytrain,Xtest);% gets the guess for testing data
accuracy_average2 = calculate_accuracy(ytest,yguess2test);% calculates accuracy for testing data
%Accuracy = 79.75%

%% Trying nearest neighbour
yguess3train = nearest_neighbor(Xtrain,ytrain,Xtrain);% gets the guess for train data
accuracy_average3 = calculate_accuracy(ytrain,yguess3train);% calculates accuracy for training data
%Accuracy = 100%
yguess4test = nearest_neighbor(Xtrain,ytrain,Xtest);% gets the guess for testing data
accuracy_average4 = calculate_accuracy(ytest,yguess4test);% calculates accuracy for testing data
%Accuracy = 82.5%

%% Trying linear classifier
yguess5train = linear_regression(Xtrain,ytrain,Xtrain);% gets the guess for training data
accuracy_average5 = calculate_accuracy(ytrain,yguess5train);% calculates accuracy for training data
%Accuracy = 100%
yguess6test = linear_regression(Xtrain,ytrain,Xtest);% gets the guess for testing data
accuracy_average6 = calculate_accuracy(ytest,yguess6test);% calculates accuracy for testing data
%Accuracy = 79.5%

%% Trying pca
yguess7train = pca_regression(Xtrain,ytrain,Xtrain,10);% gets the guess for training data
accuracy_average7 = calculate_accuracy(ytrain,yguess7train);% calculates accuracy for training data
%Accuracy = 85.81%
yguess8test = pca_regression(Xtrain,ytrain,Xtest,10);% gets the guess for testing data
accuracy_average8 = calculate_accuracy(ytest,yguess8test);% calculates accuracy for training data
%Accuracy = 84.75%

yguess9train = pca_regression(Xtrain,ytrain,Xtrain,20);% gets the guess for training data
accuracy_average9 = calculate_accuracy(ytrain,yguess9train);% calculates accuracy for training data
%Accuracy = 88.37%
yguess10test = pca_regression(Xtrain,ytrain,Xtest,20);% gets the guess for testing data
accuracy_average10 = calculate_accuracy(ytest,yguess10test);% calculates accuracy for training data
%Accuracy = 86.25%

yguess11train = pca_regression(Xtrain,ytrain,Xtrain,50);% gets the guess for training data
accuracy_average11 = calculate_accuracy(ytrain,yguess11train);% calculates accuracy for training data
%Accuracy = 92.43%
yguess12test = pca_regression(Xtrain,ytrain,Xtest,50);% gets the guess for testing data
accuracy_average12 = calculate_accuracy(ytest,yguess12test);% calculates accuracy for training data
%Accuracy = 90%

yguess13train = pca_regression(Xtrain,ytrain,Xtrain,100);% gets the guess for training data
accuracy_average13 = calculate_accuracy(ytrain,yguess13train);% calculates accuracy for training data
%Accuracy = 93.875%
yguess14test = pca_regression(Xtrain,ytrain,Xtest,100);% gets the guess for testing data
accuracy_average14 = calculate_accuracy(ytest,yguess14test);% calculates accuracy for training data
%Accuracy = 92.25%

%% Pet_Classifier
yguess15train = pet_classifier(Xtrain);
accuracy_average15 = calculate_accuracy(ytrain,yguess15train);
%Accuracy = 95.75
yguess16test = pet_classifier(Xtest);
accuracy_average16 = calculate_accuracy(ytest,yguess16test);
%Accuracy = 95.25