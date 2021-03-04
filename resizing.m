a = imread('/home/nurunnabi/Documents/Octave/Images/DIP3E_CH01/Fig0101(1921 digital image).tif');

[r,c]=size(a);

i=1;
j=1;
z=zeros(floor(r/2),floor(c/2));
for x=1:2:r
  for y=1:2:c
    z(i,j)=a(x,y);
    j=j+1;
  endfor
  i=i+1;
  j=1;
  
endfor

figure, imshow(a);
figure, imshow(z/255);
figure, imagesc(z), colormap(gray);

