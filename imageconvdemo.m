% Script to demonstrate 2D image convolution
% J. Izatt / BME 171

%First set colormap and and load image
clf reset
colormap(gray);
ct=imread('ct.jpg');
[rows, columns, numberOfColorChannels] = size(ct);
% 
% 
% %Demonstrate identity kernel
% clf
% h1=zeros(100);
% h1(50,50)=1;
% subplot(2,2,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(2,2,2), imagesc(h1);
% title('100 x 100 Identity Kernel'), xlabel i, ylabel j, colorbar
% subplot(2,2,4), imagesc(conv2(ct,h1));
% title('Convolution Result'), xlabel i, ylabel j, colorbar
% [rows2, columns2, numberOfColorChannels2] = size(conv2(ct,h1))
% % pause
% 
% %Demonstrate shift kernel
% clf
% h2=zeros(100);
% h2(100,100)=1;
% subplot(2,2,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(2,2,2), imagesc(h2);
% title('100x100 Shift Kernel'), xlabel i, ylabel j, colorbar
% subplot(2,2,4), imagesc(conv2(ct,h2));
% title('Convolution Result'), xlabel i, ylabel j, colorbar
% % pause
% 
% % %Demonstrate blur kernel
% clf
% h3=ones(10);
% subplot(2,2,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(2,2,2), imagesc(h3);
% title('10x10 Blur Kernel'), xlabel i, ylabel j, colorbar
% subplot(2,2,4), imagesc(conv2(ct,h3));
% title('Convolution Result'), xlabel i, ylabel j, colorbar
% pause
% 
% %Demonstrate derivative kernel
% clf
% h4=[-1 -1 -1; -1 8 -1; -1 -1 -1];
% subplot(2,2,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(2,2,2), imagesc(h4);
% title('3x3 Derivative Kernel'), xlabel i, ylabel j, colorbar
% subplot(2,2,4), imagesc(conv2(ct,h4));
% title('Convolution Result'), xlabel i, ylabel j, colorbar
% 
% %Problem 1ci
% clf
% h5=zeros(200);
% h5(200,100) = 1;
% subplot(1,3,1), imagesc(ct);
% title('Original Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,3,2), imagesc(h5);
% title('Translation Kernel'), xlabel i, ylabel j, colorbar
% subplot(1,3,3), imagesc(conv2(ct,h5));
% title('Problem 1ci'), xlabel i, ylabel j, colorbar
% 
% %Problem 1cii
% h6 = [-1 -1 -1; -1 -1 -1; -1 -1 -1];
% subplot(1,3,1), imagesc(ct);
% title('Original Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,3,2), imagesc(h6);
% title('Inversion Kernel'), xlabel i, ylabel j, colorbar
% subplot(1,3,3), imagesc(conv2(ct,h6));
% title('Problem 1cii'), xlabel i, ylabel j, colorbar
% 
% %Problem 1civ
% clf
% h7 = [(-1/8) (-1/8) (-1/8); (-1/8) 1 (-1/8); (-1/8) (-1/8) (-1/8)];
% subplot(1,3,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,3,2), imagesc(h7);
% title('Contiguous Mean Kernel'), xlabel i, ylabel j, colorbar
% subplot(1,3,3), imagesc(conv2(ct,h7));
% title('Problem 1civ'), xlabel i, ylabel j, colorbar
% 
% %Problem 1cv
% clf
% h8=[1 -1];
% subplot(1,3,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,3,2), imagesc(h8);
% title('Horizontal Derivative Kernel'), xlabel i, ylabel j, colorbar
% subplot(1,3,3), imagesc(conv2(ct,h8));
% title('Problem 1cv'), xlabel i, ylabel j, colorbar
% 
% %Problem 1cvi
% clf
% h9=[-1 0 0; 0 0 0; 0 0 1];
% subplot(1,3,1), imagesc(ct);
% title('Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,3,2), imagesc(h9);
% title('Embossing Kernel'), xlabel i, ylabel j, colorbar
% subplot(1,3,3), imagesc(conv2(ct,h9));
% title('Problem 1cvi'), xlabel i, ylabel j, colorbar
% 
% %Problem viii
% clf
% h10=zeros(200);
% h10(200,100) = -1;
% subplot(1,2,1), imagesc(ct);
% title('Original Raw Image'), xlabel i, ylabel j, colorbar
% subplot(1,2,2), imagesc(conv2(ct,h10));
% title('Problem 1cviii'), xlabel i, ylabel j, colorbar

%Problem d
clf
ctshift=imread('ctshift.jpg');
corr = xcorr2(ctshift, ct);
[maxcc, imax] = max(abs(corr(:)));
[ypeak, xpeak] = ind2sub(size(corr),imax(1));
corr_offset = [(ypeak-size(ct,1)) (xpeak-size(ct,2))];
shift_j = corr_offset(1)
shift_i = corr_offset(2)

subplot(2,2,1), imagesc(ct);
title('Original Raw Image'), xlabel i, ylabel j, colorbar
subplot(2,2,2), imagesc(corr);
title('Cross Correlation'), xlabel i, ylabel j, colorbar
subplot(2,2,4), imagesc(ctshift);
title('Shifted Image'), xlabel i, ylabel j, colorbar



