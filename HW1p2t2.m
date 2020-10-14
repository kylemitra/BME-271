n = 5:-1:-5;
t_offset = 2;
x = 3.*unitstep(t_offset,n);
T = linspace(-5,5,1000)
subplot(2,1,1)
plot(T,x)
xlabel('Time, t')
ylabel('Amplitude')

n1 = -3:3;
n2 = 3:-1:-3;
t_offset1 = -1;
t_offset2 = 1;
t_offset3 = 2;
x = unitstep(t_offset1,n1) + 2.*unitstep(t_offset2,n2) - 0.25.*unitstep(t_offset3,n1);
T = linspace(-3,3,1000);
subplot(2,1,2)
plot(T,x)
xlabel('Time, t')
ylabel('Amplitude')