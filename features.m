%% Feature Extraction
% This function is for extraction of features from the input image
function y = features(I)
%% Gray level co-occurrences matrix
% GLCM includes properties like:
% * Contrast
% * Entropy
% * Energy
% * Correlation
% * Homogeneity
% * Maximum likelihood
% * 3rd order moment, etc.

    glcm = graycomatrix(rgb2gray(I));
    
%% shape features in the image

    e = edge(rgb2gray(I));
    
%% Local binary pattern features
   
%     lbp = extractLBPFeatures(I, 'Upright', False);

%% Gabor Filter

%     imageSize = size(I);
%     numRows = imageSize(1);
%     numCols = imageSize(2);
% 
%     wavelengthMin = 4/sqrt(2);
%     wavelengthMax = hypot(numRows,numCols);
%     n = floor(log2(wavelengthMax/wavelengthMin));
%     wavelength = 2.^(0:(n-2)) * wavelengthMin;
% 
%     deltaTheta = 45;
%     orientation = 0:deltaTheta:(180-deltaTheta);
% 
%     g = gabor(wavelength,orientation);
%     gabormag = imgaborfilt(rgb2gray(I),g);   
    
    
    %% Return of all the features calculated as a matrix
    y = {glcm, e}; 
%     y = {glcm, e, lbp, gabormag};
    
end






