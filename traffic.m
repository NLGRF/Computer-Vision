obj = VideoReader('traffic.avi');
%get(obj);
%implay('traffic.avi');

darkCar = rgb2gray(read(obj,71));

darkCarValue = 50;
noDarkCar = imextendedmax(darkCar, darkCarValue);

sedisk = strel('disk',2);
noSmallStructures = imopen(noDarkCar, sedisk);

subplot(131); imshow(darkCar)
subplot(132); imshow(noDarkCar)
subplot(133); imshow(noSmallStructures)