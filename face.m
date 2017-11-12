pic=imread('image3.jpg');
pic=imresize(pic,0.7);
imshow(pic);
detector=vision.CascadeObjectDetector('nose');
detector.MergeThreshold=10;
box=step(detector,pic);
out=insertObjectAnnotation(pic,'rectangle',box,'nose');
imshow(out);