 X = imread('wpeppers.jpg');
    [cr,bpp] = wcompress('c',X,'wpeppers.wtc','spiht','maxloop',12)
    Xc = wcompress('u','wpeppers.wtc');
    delete('wpeppers.wtc')
    D = abs(double(X)-double(Xc)).^2;
    mse = sum(D(:))/numel(X)
    psnr = 10*log10(255*255/mse)
    % Display the original and the compressed image
figure, imshow(X); title('Original image'); axis square
figure, imshow(Xc); title('Compressed image'); axis square