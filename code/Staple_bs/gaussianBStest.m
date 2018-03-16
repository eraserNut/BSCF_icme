function y = gaussianBStest( pos, rect_size, sigma )
%GAUSSIANBSTEST �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%       half = floor((rect_size-1) / 2);
      i = 1:rect_size(1);
      j = 1:rect_size(2);
      y1 = exp((-(i-pos(1)).^2) / (2 * (sigma*rect_size(1))^2));
      y2 = exp((-(j-pos(2)).^2) / (2 * (sigma*rect_size(2))^2));
      y = y1'*y2;

end

