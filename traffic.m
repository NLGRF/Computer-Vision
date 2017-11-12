obj = VideoReader('traffic.avi');

darkCar = rgb2gray(read(obj,71));

darkCarValue = 50;
noDarkCar = imextendedmax(darkCar, darkCarValue);

imshow(darkCar)
figure, imshow(noDarkCar)