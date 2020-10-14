%Kyle Mitra
%Part A
T = -5:1:5;
t_offset = 3*(T==3);
subplot(2,1,1)
delta(t_offset,T)
xlabel('Discrete Time, n')
ylabel('Amplitude')
title('Delta Function (km423)')

%Part B
t_offset2 = 1*(T==2)+3*(T==-2)-0.25*(T==2);
subplot(2,1,2)
delta(t_offset2,T)
ylim([-1 5])
xlabel('Discrete Time, n')
ylabel('Amplitude')