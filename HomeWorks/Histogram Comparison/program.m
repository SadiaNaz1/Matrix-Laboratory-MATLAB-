qurry=imread('1.jpg');
directory=dir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Histogram Comparison\*.jpg');
for i=1:length(directory)
    filename=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Histogram Comparison\',directory(i).name);
    imgs{i}=imread(filename);
end
qurryhist=sum(imhist(rgb2gray(qurry)));
for i=1:length(imgs)
    imghist{i}=sum(imhist(rgb2gray(imgs{i})));
end
subplot(size(imgs,2)+1,2,1),imshow(qurry);
title('Original');
subplot(size(imgs,2)+1,2,2),imhist(rgb2gray(qurry));
title('Histogram of Original Image');
for i=1:length(imgs)
    diff=abs(qurryhist-imghist{i});
    subplot(size(imgs,2)+1,2,(i+i)+1),imshow(imgs{i});
    ttext=strcat('Difference from Qurry Image',{' '},string(diff));
    title(ttext);
    subplot(size(imgs,2)+1,2,(i+i)+2),imhist(rgb2gray(imgs{i}));
    ttext=strcat('Histogram of',{' '},string(i),{' '},'Image');
    title(ttext);
end
