a = imread('/home/nurunnabi/Documents/Octave/Images/DIP3E_CH01/Fig0101(1921 digital image).tif');

ad = im2double(a);

x = ad;
[r,c] = size(ad);
factor=5;
for i=1:r
  for j=1:c
    x(i,j) = factor*log(1+ad(i,j));
  endfor
endfor

subplot(1,2,1); imshow(ad); title('Before');
subplot(1,2,2); imshow(x); title('After');


