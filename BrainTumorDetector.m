clc;
#change the name of the image file
x=imread('brain1.jpg')
figure()
subplot(1,2,1)
imshow(x);
title('Orignial Image');
#Finding the height and width of the image
[ht wd]=size(x);
#Creating an zero matrix 
y=zeros(ht,wd,'uint8')
for i=1:ht
  for j=1:wd
    int=x(i,j)
    if int<=210
      y(i,j)=0;
    else
      y(i,j)=255;
    end;
  end;
end;
#Creating a new Scanned image
imwrite(y,'ScannedImage.jpg');
subplot(1,2,2);
#Displaying the new Scanned image
imshow(y);
title('After Image Thresholding(Tumor Only)');


 
