img=imread('1.jpg');
imshow(img);
h=impixelinfo();
axis on;
new=imcrop(img,[120,17,175-120,80-17]);
imshow(new);
