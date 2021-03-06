% %% Problem A
% % Script to demonstrate 2D FFT properties
% % J. Izatt / BME 271
% echo on
% clear all
% close all
% 
% %Apply a low-pass filter (image sequence goes counter-clockwise now)
% clf
% a=double(imread('SLO images for 271.tif', 'index', 1));
% subplot(2,2,1), imagesc(a);
% colormap(gray)
% title('a'), xlabel i, ylabel j, colorbar
% A=fft2(a);
% echo off
% AA=fftshift(A);
% for i=1:1:776
%     for j=1:1:768
%         if (((i-388)^2)+((j-384)^2)) > 102^2
%             AA(i,j)=0;
%         end
%     end
% end
% A=fftshift(AA);
% echo on
% subplot(2,2,3), imagesc(fftshift(abs(log10(abs(A)))));
% title('Abs(Log10(Mag(A)))'), xlabel u, ylabel v, colorbar
% subplot(2,2,4), imagesc(fftshift(angle(A)));
% title('Phase(A)'), xlabel u, ylabel v, colorbar
% aa=ifft2(A);
% subplot(2,2,2), imagesc(abs(aa));
title('Abs(IFFT2(A))'), xlabel i, ylabel j, colorbar
% %% Problem B
% % Script to demonstrate 2D FFT properties
% % J. Izatt / BME 271
% echo on
% clear all
% close all
% 
% %Apply a low-pass filter (image sequence goes counter-clockwise now)
% clf
% a=double(imread('SLO images for 271.tif', 'index', 1));
% subplot(2,2,1), imagesc(a);
% colormap(gray)
% title('a'), xlabel i, ylabel j, colorbar
% A=fft2(a);
% echo off
% AA=fftshift(A);
% for i=1:1:776
%     for j=1:1:768
%         if (((i-388)^2)/(10.^2)+((j-384)^2)/(50.^2)) > 1
%             AA(i,j)=0;
%         end
%     end
% end
% A=fftshift(AA);
% echo on
% subplot(2,2,3), imagesc(fftshift(abs(log10(abs(A)))));
% title('Abs(Log10(Mag(A)))'), xlabel u, ylabel v, colorbar
% subplot(2,2,4), imagesc(fftshift(angle(A)));
% title('Phase(A)'), xlabel u, ylabel v, colorbar
% aa=ifft2(A);
% subplot(2,2,2), imagesc(abs(aa));
% title('Abs(IFFT2(A))'), xlabel i, ylabel j, colorbar
%% Problem C
% Script to demonstrate 2D FFT properties
% J. Izatt / BME 271
echo on
clear all
close all

%Apply a low-pass filter (image sequence goes counter-clockwise now)
clf
a=double(imread('SLO images for 271.tif', 'index', 1));
subplot(2,2,1), imagesc(a);
colormap(gray)
title('a'), xlabel i, ylabel j, colorbar
A=fft2(a);
echo off
AA=fftshift(A);
for i=1:1:776
    for j=1:1:768
        if (((i-388)^2)/(156.^2)+((j-384)^2)/(155.^2)) > 1 || (((i-388)^2)/(79.^2)+((j-384)^2)/(78.^2)) < 1
            AA(i,j)=0;
        end
    end
end
A=fftshift(AA);
echo on
subplot(2,2,3), imagesc(fftshift(abs(log10(abs(A)))));
title('Abs(Log10(Mag(A)))'), xlabel u, ylabel v, colorbar
subplot(2,2,4), imagesc(fftshift(angle(A)));
title('Phase(A)'), xlabel u, ylabel v, colorbar
aa=ifft2(A);
subplot(2,2,2), imagesc(abs(aa));
title('Abs(IFFT2(A))'), xlabel i, ylabel j, colorbar
