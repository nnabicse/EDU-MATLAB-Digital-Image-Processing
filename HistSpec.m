src = imread('C:\Users\nnabi\Documents\Octave\Images\RNDM\pills.tif');
ref = imread('C:\Users\nnabi\Documents\Octave\Images\RNDM\peppers.tif');

imgr= src(:,:,1);
imgg= src(:,:,2);
imgb= src(:,:,3);

hrimgr= imhist(imgr);
hrimgg= imhist(imgg);
hrimgb= imhist(imgb);

imgr2= ref(:,:,1);
imgg2= ref(:,:,2);
imgb2= ref(:,:,3);

hrimgr2= imhist(imgr2);
hrimgg2= imhist(imgg2);
hrimgb2= imhist(imgb2);

outr= histeq(imgr,hrimgr2);
outg= histeq(imgg,hrimgg2);
outb= histeq(imgb,hrimgb2);

histsp(:,:,1)=outr;
histsp(:,:,2)=outg;
histsp(:,:,3)=outb;

figure;

subplot(2,2,1); imshow(ref); title('Reference Image');
subplot(2,2,2); imshow(src); title('Souorce Image');
subplot(2,2,3); imshow(histsp); title('Result Image');

figure;

subplot(3,3,1); imshow(hrimgr); title('Red Input');
subplot(3,3,2); imshow(hrimgg); title('Green Input');
subplot(3,3,3); imshow(hrimgb); title('Blue Input');
subplot(3,3,4); imshow(hrimgr2); title('Red Reference');
subplot(3,3,5); imshow(hrimgg2); title('Green Reference');
subplot(3,3,6); imshow(hrimgb2); title('Blue Reference');
subplot(3,3,7); imshow(outr); title('Red Output');
subplot(3,3,8); imshow(outg); title('Green Output');
subplot(3,3,9); imshow(outb); title('Blue Output');


















