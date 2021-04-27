[file,path]=uigetfile('*.*','Select an image');
loc=strcat(path,file);
pic=imread(loc);
graypic=rgb2gray(pic);

detectorFace=vision.CascadeObjectDetector();
boundingbox=step(detectorFace,graypic);
detpic=insertObjectAnnotation(pic,'Rectangle',boundingbox,'Face');
imshow(detpic);
