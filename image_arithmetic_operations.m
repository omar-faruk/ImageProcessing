img=imread('cameraman.tif');
figure,imshow(img);

img_crop=img(1:135,1:198);
im2=imread('onion.png');

im2_r=im2(:,:,1);
figure,imshow(im2_r);


[r,c]=size(img);

img_plus=img(:,:)+img(:,:);
figure,imshow(img_plus);

img_minus=img-10;
figure,imshow(img_minus)

img_mult=img;
for i=1:r
    for j=1:c
        img_mult(i,j)=img(i,j)*2;
    end
end
figure,imshow(img_mult);

img_div=img/3;
figure,imshow(img_div);

img_bw=img>80;
figure,imshow(img_bw);

img_inv=~img_bw;
figure,imshow(img_inv);

img_blend=im2_r;
[x,y]=size(im2_r);

for i=1:x
    for j=1:y
        img_blend(i,j)=img_crop(i,j)*(0.6)+(1-0.6)*im2_r(i,j);
    end
end
figure,imshow(img_blend);



