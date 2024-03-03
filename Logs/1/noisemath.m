noise = randn(1024, 1024);
sigma = 10;

blurred_noise = imgaussfilt(noise, sigma);

imagesc(blurred_noise);
colormap('gray');
colorbar;
axis image;
