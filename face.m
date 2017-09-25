a=imread('image3.jpg');
a=imresize(a,0.7);
imshow(a);
detector=vision.CascadeObjectDetector;
box=step(detector,a);
out=insertObjectAnnotation(a,'rectangle',box,'Face');
imshow(out);