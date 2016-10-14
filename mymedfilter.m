function [ result ] = mymedfilter ( image , window_size )

    image_pad = padarray(image,[(window_size-1)/2 (window_size-1)/2],'replicate'); 
    image_pad2 = im2col(image_pad , [window_size window_size],'sliding'); 
    image_pad2 = median(image_pad2 );
    result = reshape(image_pad2,size(image));
end