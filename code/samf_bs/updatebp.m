function [bs_alpha] = updatebp(xf,gsxf,bsparams)

% leanring filter from corrfeat to new_corrfeat

kcorrfeatf = (xf .* conj(xf));
bs_alpha = gsxf./ (kcorrfeatf+ bsparams.lambda);
  
end
    
