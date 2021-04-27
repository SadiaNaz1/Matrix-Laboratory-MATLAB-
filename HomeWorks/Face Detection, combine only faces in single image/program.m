img=imread('1.jpg');
fd=vision.CascadeObjectDetector();
fd.MergeThreshold=10;
bb=step(fd,img);
for i=1:size(bb,1)
    crop{i}=imcrop(img,[bb(i,1)-50,bb(i,2)-50,bb(i,3)+50,bb(i,4)+50]);
end
for i=1:length(crop)
    crop{i}=imresize(crop{i},[200 200]);
end
new=crop{1};
for i=2:length(crop)
    new=[new,crop{i}];
end
mkdir('outdir\');
imwrite(new,'outdir\output.jpg');
