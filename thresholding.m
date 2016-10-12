%testing git and thresholding
function [result] = thresholding(image)
    medianValue = median(median(image));
    result = image > medianValue;
end