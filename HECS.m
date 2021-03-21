a = imread('C:\Users\nnabi\Documents\Octave\Images\RNDM\cameraman.tif');

subplot(1,2,1); imshow(i);
subplot(1,2,2); imhist(i);

imh = imadjust(i,[0.3,0.6], [0.0, 1.0]);
imh2 = histeq(i);

subplot(1,2,1); imshow(imh); title('Streched');
subplot(1,2,2); imshow(imh2); title('HistEQ');
        