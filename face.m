pic=imread('image.jpg');
pic=imresize(pic,0.7);
imshow(pic);
detector=vision.CascadeObjectDetector;
detector.MergeThreshold=10;
box=step(detector,pic);
out=insertObjectAnnotation(pic,'rectangle',box,'face');
imshow(out);