function [result] = preprocess(image)
%first we take in an image
%assume image is gray
%clean
%histogram flatten or increase contrast
%binarize
%clean
    filteredI = mymedfilter(image,5);%should we have a fixed window size
    imadjust(filteredI);
    result = imbinarize(filteredI);%add options for other params and methods
    result = imclose(result,strel('square', 5));%assuming black is for letters
end