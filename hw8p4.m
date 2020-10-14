%% Problem A
close all; 
f=fopen('ecg.txt'); 
data=fscanf(f,'%f'); 
%separate each lead
data=reshape(data,3,length(data)/3);
leadOne = data(1,:);
leadTwo = data(2,:);
leadThree = data(3,:);
%Analyze first thrity seconds
leadOne = leadOne(1:6000);
leadTwo = leadTwo(1:6000);
leadThree = leadThree(1:6000);
timeThirty = linspace(0,30,6000);

figure(1); clf
subplot(3,1,1)
plot(timeThirty, leadOne)
title('Output over First Thirty Seconds (km423)')
xlabel('Time(s)')
ylabel('ECG Measurement')
subplot(3,1,2)
plot(timeThirty, leadTwo)
xlabel('Time(s)')
ylabel('ECG Measurement')
subplot(3,1,3)
plot(timeThirty, leadThree)
xlabel('Time(s)')
ylabel('ECG Measurement')

%% Problem B
close all; 
f=fopen('ecg.txt'); 
data=fscanf(f,'%f'); 
% %separate each lead  
data=reshape(data,3,length(data)/3)';  
leadOne = data(:,1);
leadTwo = data(:,2);
leadThree = data(:,3);
%Analyze first minute
leadOne = leadOne(1:12000);
leadTwo = leadTwo(1:12000);
leadThree = leadThree(1:12000);
timeMin = linspace(0,60,12000);
%Transforms
powerLeadOne = fftshift(abs(fft(leadOne)).^2);
powerLeadTwo = fftshift(abs(fft(leadTwo)).^2);
powerLeadThree = fftshift(abs(fft(leadThree)).^2);

timeB = linspace(-100,100,length(powerLeadOne));
freqO = length(timeB)/2
freqMax = length(timeB)

figure(2); clf
subplot(3,1,1)
plot(timeB(freqO:freqMax), powerLeadOne(freqO:freqMax))
title('Power over First Minute (km423)')
xlabel('Time(s)')
ylabel('Frequency (Hz)')
subplot(3,1,2)
plot(timeB(freqO:freqMax), powerLeadTwo(freqO:freqMax))
xlabel('Time(s)')
ylabel('Frequency (Hz)')
subplot(3,1,3)
plot(timeB(freqO:freqMax), powerLeadThree(freqO:freqMax))
xlabel('Time(s)')
ylabel('Frequency (Hz)')

%% Problem D

filter = rectangularPulse(0.2,1,1);
newDataOne = filter * powerLeadOne
newDataOne = ifft(newDataOne)

figure(3); clf
plot(timeMin,real(newDataOne))
title('Filtered Data (km423)')
xlabel('Time(s)')
ylabel('Frequency (Hz)')

%% Problem E

lpf = rectangularPulse(-2.5,2.5,1);
finalData = lpf * newDataOne

figure(4); clf
plot(timeMin, real(finalData))
title('LPF Filtered Data (km423)')
xlabel('Time(s)')
ylabel('Frequency (Hz)')


