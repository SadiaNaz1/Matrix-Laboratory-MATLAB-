fd = vision.CascadeObjectDetector();
img = imread('2.jpg');
BB = step(fd, img);
size(BB)
imshow(img);
hold on;
for i=1:size(BB,1)
    
    if BB(i, 3) > 100
        subplot(1,size(BB,1), i);
ff = img(BB(i,2) : BB(i,4) + BB(i, 2), BB(i, 1): BB(i,1) + BB (i,3), :); 
    end
end