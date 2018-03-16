function zf = backsupp(zf,bs_model,bs_alpha)

zf = zf.*conj(bs_model).*bs_alpha;

end

