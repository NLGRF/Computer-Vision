a=imread('image.jpg');
a=imresize(a,0.7);
imshow(a);
detector=vision.CascadeObjectDetector('nose');
box=step(detector,a);
out=insertObjectAnnotation(a,'rectangle',box,'nose');
imshow(out);