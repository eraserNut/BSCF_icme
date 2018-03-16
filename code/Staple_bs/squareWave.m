function [ outputMatrix ] = squareWave( height,width,alpha )
%alphaƒ¨»œ»°0.7    
outputMatrix = zeros(height,width);
    for i=round(height*(1-alpha)/2):round(height*(1+alpha)/2)
        for j=round(width*(1-alpha)/2):round(width*(1+alpha)/2)
            outputMatrix(i,j) = 1;
        end
    end

end

