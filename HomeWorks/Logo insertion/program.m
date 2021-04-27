img=imread('1.jpg');
logo=imread('logo.jpg');
logo=imresize(logo,[400 400]);
img=imresize(img,.8);
dlogo=im2bw(logo,.8);
imshow(dlogo);
[ir,ic]=size(img);
ic=ic/3;
[r,c]=size(dlogo);
for i=1:r
    for j=1:c
        if dlogo(i,j)~=1
            for p=1:3
                new(i,j,p)=(img((ir/2)-(r/2)+i,(ic/2)-(c/2)+j,p))+(logo(i,j,p));
                img((ir/2)-(r/2)+i,(ic/2)-(c/2)+j,p)=new(i,j,p);
            end
        end
    end
end
imshow(img);
