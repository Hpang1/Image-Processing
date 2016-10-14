%testing git and thresholding
%firstT needs to be 0 on initual call
%image should be already converted to gray
%currently not working too well, nextT is always 0.5 because the first
%tValue is mean
function [result] = thresholding(image, diff, firstT)
    if(firstT == 0)
        tValue = mean(mean(image));
    else
        tValue = firstT;
    end
    
    image1 = image > tValue;
    image2 = image <= tValue;
    imshowpair(image1,image2,'montage')
    meanimage1 = mean(mean(image1));
    meanimage2 = mean(mean(image2));
    nextT = (meanimage1+meanimage2)/2;
    if(abs(tValue-nextT)< diff)
        result = image > nextT;%finish iterating
    else
        result = thresholding(image,diff, nextT);
    end
end