%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute ordinary-least-squares
%vector b. It also takes in a test data matrix Xtest and 
%produces a vector of label guesses yguess, corresponding to the sign
%of the linear prediction.
function yguess = linear_regression(Xtrain,ytrain,Xtest)
    bols = pinv((Xtrain')*Xtrain)*(Xtrain')*ytrain;
    yguess = sign(Xtest*bols);
end
