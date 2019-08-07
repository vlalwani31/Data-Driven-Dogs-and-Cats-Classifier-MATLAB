%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the PCA basis. 
%It also takes in a test data matrix Xtest and a dimension k
%and uses the top-k vectors in the PCA basis to reduce the 
%dimension of Xtrain and Xtest. Finally, it uses the reduced data
%as inputs to the linear_regression function to produce 
%a vector of label guesses yguess.
function yguess = pca_regression(Xtrain,ytrain,Xtest,k)
    Vtrain = pca(Xtrain);
    X_trainred = (Xtrain - (sum(Xtrain)/length(ytrain)))*Vtrain(:,(1:k));
    [r,~] = size(Xtest);
    X_testred = (Xtest - (sum(Xtest)/r))*Vtrain(:,(1:k));
    yguess = linear_regression(X_trainred,ytrain,X_testred);
end

%FILL IN CODE