pic=imread('image.jpg');
pic=imresize(pic,0.7);
imshow(a);
detector=vision.CascadeObjectDetector('EyePairBig');
box=step(detector,pic);
out=insertObjectAnnotation(pic,'rectangle',box,'EyePairBig');
imshow(out);