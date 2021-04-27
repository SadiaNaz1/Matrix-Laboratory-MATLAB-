clear;
directory=dir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\im to bw on whole directory\*.jpg');
for i=1:length(directory)
    filename=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\im to bw on whole directory\',directory(i).name);
    imgs{i}=imread(filename);
end
mkdir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\im to bw on whole directory\outdir\');
for i=1:length(imgs)
    bw=im2bw(imgs{i},.3);
    path=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\im to bw on whole directory\outdir\',string(i),'.jpg');
    imwrite(bw,path);
end