a = imread('/home/nurunnabi/Documents/Octave/Images/DIP3E_CH01/Fig0101(1921 digital image).tif');

ad = im2double(a);

x = ad;
y = ad;
[r,c] = size(ad);
factor=1;
for i=1:r
  for j=1:c
    x(i,j) = factor*log(1+ad(i,j));
    y(i,j) = factor*ad((i,j)^0.2);
  endfor
endfor

subplot(2,2,1); imshow(ad); title('Before');
subplot(2,2,2); imshow(x); title('After');
subplot(2,2,3); imshow(ad); title('Before');
subplot(2,2,4); imshow(y); title('After');