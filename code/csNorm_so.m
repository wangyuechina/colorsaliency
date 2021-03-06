function s = csNorm_so(s,k,sigma,numChannel);

for jj = 1:numChannel
    s(:,:,jj,:,:) = sqrt(k.* squeeze(s(:,:,jj,:,:)).^2 ./ (sigma.^2 + squeeze(s(:,:,mod(jj+3,8)+1,:,:)).^2));
end

return
