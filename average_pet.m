%This function takes in a data matrix X and a label
%vector y and outputs the average cat image and average dog image.
function [avgcat, avgdog] = average_pet(X,y)
   avgcat = sum(X((y == -1),:))/sum(y == -1);
   avgdog = sum(X((y == 1),:))/sum(y == 1);
   %show_image(avgcat,1);
   %show_image(avgdog,1);
end

%FILL IN CODE