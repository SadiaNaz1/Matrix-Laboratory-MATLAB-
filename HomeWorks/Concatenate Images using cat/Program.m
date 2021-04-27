directory=dir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Concatenate Images using cat\*.jpg');
for i=1:length(directory)
    filename=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Concatenate Images using cat\',directory(i).name);
    imgs{i}=imread(filename);
end
for i=1:length(imgs)
    imgs{i}=imresize(imgs{i},[size(imgs{1},1),size(imgs{i},2)]);
end
new=imgs{1};

for i=2:length(imgs)
    new=cat(2,new,imgs{i});
end
imshow(new);
figure;
montage(new);
