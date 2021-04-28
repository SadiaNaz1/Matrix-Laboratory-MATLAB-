img=imread('1.jpg');
gray=rgb2gray(img);
bw=im2bw(img,.3);
[r,c]=size(gray);
for i=1:3
    img(1:r/2,c/2:c,i)=gray(1:r/2,c/2:c);
end
for i=r/2:r
    for j=c/2:c
        for p=1:3
            if bw(i,j)~=0
                img(i,j,p)=255;
            else
                img(i,j,p)=0;
            end
        end
    end
end
imshow(img);