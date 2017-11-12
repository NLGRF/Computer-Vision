pic=imread('ocr2.png');
pic=imresize(pic,0.7);
result=ocr(pic);
word=result.Words{1};
wordBox=result.WordBoundingBoxes(1,:);
name=insertObjectAnnotation(pic,'rectangle',wordBox,word);
imshow(name);