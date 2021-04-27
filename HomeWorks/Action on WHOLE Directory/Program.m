clear;
directory=dir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Action on WHOLE Directory\*.jpg');
for i=1:length(directory)
    filename=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Action on WHOLE Directory\',directory(i).name);
    imgs{i}=imread(filename);
end
mkdir('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Action on WHOLE Directory\outdir\');
for i=1:length(imgs)
    filename=directory(i).name(1,1:end-4);
    newname=strcat(filename,'.png');
    path=strcat('C:\Users\Haseeb\Desktop\Matrix-Laboratory-MATLAB-\HomeWorks\Action on WHOLE Directory\outdir\',newname);
    imwrite(imgs{i},path);
end