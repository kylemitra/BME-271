%Kyle Mitra

%Problem 2 Part a
T = linspace(-5,5,1000);
t_offset = zeros(size(T));
t_offset(T<=2) = 3;
subplot(2,1,1)
plot(T,t_offset)
xlabel('Time, t')
ylabel('Amplitude')
title('Unitstep Function (km423)')
axis([-1 5 -0.5 3.5])

%Problem 2 Part b
t_offset(T<=-2) = 2;
t_offset(T<=1 & T>-2) = 1.75;
t_offset(T>1) = 0.75;
subplot(2,1,2)
plot(T,t_offset)
xlabel('Time, t')
ylabel('Amplitude')
axis([-3 3 0.5 2.5])