% Phase Correlation of Retinal Images
% J. Izatt / BME 271
%
% As is, this script reads in a sequence of shifted retinal images and adds
% them all together, creating a blurred summed image
clf reset
% The retinal data is stored in a multiple-image tiff file containing 29
% individual images. The next statement reads in the first image which will
% serve as the base image for registration of all the other images
a=double(imread('SLO images for 271.tif', 'index', 1));
subplot(3,2,1), imagesc(a);
colormap(gray)
title('Base Image'), xlabel i, ylabel j
A=fft2(a);
subplot(3,2,2), imagesc(angle(A));
title('Phase(FFT(Base Image))'), xlabel u, ylabel v
d=zeros(size(a));
ij = zeros(28,2);
for k = 2:29
    % Read in each additional image
    b=double(imread('SLO images for 271.tif', 'index', k));
    subplot(3,2,3), imagesc(b);
    title(['Image ' num2str(k)]), xlabel u, ylabel v
    B=fft2(b);
    subplot(3,2,4), imagesc(angle(B));
    title(['Phase(FFT(Image ' num2str(k) '))']), xlabel u, ylabel v
    subplot(3,2,6), imagesc(angle(B)-angle(A));
    title(['Phase(FFT(Image' num2str(k) ')) - Phase(FFT(Base Image))']), xlabel u, ylabel v
    % Replace the following line with the code necessary to register each
    % additional image to the base image before adding it to the summation
    inv = ifft2(exp(1i.*(angle(B))-angle(A)));
    [i,j] = ind2sub(size(inv),find(inv == max(max(inv))));
    ij((k-1),1) = i;
    ij(k-1,2) = j;
    d = circshift(b, [i, j]);
    subplot(3,2,5), imagesc(d);
    title('Summed Image'), xlabel i, ylabel j
    drawnow
end
t = 1:28;
figure(2); clf
plot3(ij(:,1),ij(:,2),t)
xlabel('i'), ylabel('j'), zlabel('t')



