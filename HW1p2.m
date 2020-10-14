% x = 3* unitstep(6,-15:15,-3)
% plot(-15:15,x)
% xlabel('time');
% ylabel('amplitude');

% t = (-1:0.01:5)'; 
% 
% plot(t,unitstep,'b','linewidth',3) 
% % Repeat, with everything shifted to the right by 1 unit: 
% unitstep2 = zeros(size(t)); 
% unitstep2(t>=2) = 1; 
% hold on
% plot(t,unitstep2,'r:','linewidth',2)
% box off

%My Code
% x = -10:0.01:10;
% unitstep = heaviside((-3*x)+6);
% subplot(2,1,1)
% plot(x, (3*unitstep))
% ylim ([-1 4])
% xlabel('Time, t')
% ylabel('Amplitude')
% unitstep2 = heaviside((2*x)-2) + (2*heaviside((-2*x)+2)) + (-(0.25*heaviside((3*x)+6)));
% subplot(2,1,2)
% plot(x, unitstep2)
% ylim ([-1 4])
% xlabel('Time, t')
% ylabel('Amplitude')

%Working
% t1 = -5:0.01:5;
% test = zeros(size(t1));
% test(t1<=2) = 3;
% plot(t1,test)
% xlabel('Time, t')
% axis([-5 5 -1 4])
% ylabel('Amplitude')

%Working
% t = -5:0.01:5;
% unitstep = zeros(size(t));
% unitstep(t<=2) = 3;
% subplot(2,1,1)
% plot(t,unitstep)
% xlabel('Time, t')
% ylabel('Amplitude')
% axis([-5 5 -1 4])
% 
% unitstep2 = zeros(size(t));
% unitstep2(t<=-2) = 2;
% unitstep2(t<=1 & t>-2) = 1.75;
% unitstep2(t>1) = 0.75;
% subplot(2,1,2)
% plot(t,unitstep2)
% xlabel('Time, t')
% ylabel('Amplitude')
% axis([-5 5 0 3])

% n = -30:30
% u_step=(n>=0);
% stem(n,u_step)

T = -5:5:5;
t_offset = 3;
x = 3.*unitstep2(t_offset,n);
plot(T,x)
xlabel('Time, t')
ylabel('Amplitude')

% unitstep2 = zeros(size(T));
% unitstep2(T<=-2) = 2;
% unitstep2(T<=1 & T>-2) = 1.75;
% unitstep2(T>1) = 0.75;
% subplot(2,1,2)
% plot(T,unitstep2)
% xlabel('Time, t')
% ylabel('Amplitude')
% axis([-5 5 0 3])


