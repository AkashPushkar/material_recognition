%% Classifier training 
% Training of the multiclass naive bayes classifier
function classifier = ML(X,Y)

    classifier = fitcnb(X, Y);
        
end
