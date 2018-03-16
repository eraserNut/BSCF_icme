function [ bsxtf ] = backSupper( xtf, bsxtf_num,bsxtf_den,lambda)
    bshf = bsxfun(@rdivide, bsxtf_num, sum(bsxtf_den, 3) + lambda);
    bsxtf = bshf .* xtf;
end

