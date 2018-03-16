function y = gaussianForBS(rect_size, sigma)
%     half = floor((rect_size-1) / 2);
%     i_range = -half(1):half(1);
%     j_range = -half(2):half(2);
%     [i, j] = ndgrid(i_range, j_range);
%     i_mod_range = mod_one(i_range, rect_size(1));
%     j_mod_range = mod_one(j_range, rect_size(2));
%     y = zeros(rect_size);
%     y(i_mod_range, j_mod_range) = exp(-(i.^2 + j.^2) / (2 * sigma^2));
%     y = ifftshift(y);
        half = floor((rect_size-1) / 2);
        i = -half(1):half(1);
        j = -half(2):half(2);
        i = 1:rect_size(1);
        j = 1:rect_size(2);
      y1 = exp((-(i-half(1)).^2) / (2 * (sigma*rect_size(1))^2));
      y2 = exp((-(j-half(2)).^2) / (2 * (sigma*rect_size(2))^2));
      y = y1'*y2;

end
function y = mod_one(a, b)
    y = mod(a-1, b)+1;
end

