
I = imread("Dermnet Dataset\train\Acne and Rosacea Photos\acne-cystic-52.jpg");
!imshow(I)
gray=rgb2gray(I);
hsv = rgb2hsv(I);
bww = im2bw(gray,0.5);

W = gray
sobel = edge(W,'sobel');
canny = edge(W,'canny');
prewitt=edge(W,'prewitt');
roberts=edge(W,'roberts');
log=edge(W,'log');
zerocross=edge(W,'zerocross');
approxcanny=edge(W,'approxcanny');

!imshow(BW1)

tiledlayout(2,5,"TileSpacing","tight")

nexttile
imshow(W)
title('Gray Scale')

nexttile
imshow(hsv)
title('hsv Scale')

nexttile
imshow(bww)
title('Black and White Scale')

nexttile
imshow(sobel)
title('Sobel Filter')

nexttile
imshow(canny)
title('Canny Filter')

nexttile
imshow(prewitt)
title('Prewitt Filter')

nexttile
imshow(roberts)
title('Roberts Filter')

nexttile
imshow(log)
title('log Filter')

nexttile
imshow(zerocross)
title('zerocross Filter')

nexttile
imshow(approxcanny)
title('approxcanny Filter')