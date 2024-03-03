image = imread('image.png');
image = im2single(image);

[gradX, gradY] = imgradientxy(image);
gradX = (gradX + 1) / 2;
gradY = (gradY + 1) / 2;

normal_map = cat(3, gradX, gradY, ones(size(image)));

imwrite(normal_map, 'normal_map.png');
