clear;
directory=dir('C:\Users\Haseeb\Desktop\New folder\RGB to Gray on whole directory\*.jpg');
for i=1:length(directory)
    filename=strcat('C:\Users\Haseeb\Desktop\New folder\RGB to Gray on whole directory\',directory(i).name);
    imgs{i}=imread(filename);
end
mkdir('C:\Users\Haseeb\Desktop\New folder\RGB to Gray on whole directory\outdir\');
for i=1:length(imgs)
    gray=rgb2gray(imgs{i});
    path=strcat('C:\Users\Haseeb\Desktop\New folder\RGB to Gray on whole directory\outdir\',string(i),'.jpg');
    imwrite(gray,path);
end