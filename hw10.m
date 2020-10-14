%% Problem D
M1 = 100;
M2 = 10;
k1 = 0.05;
k2 = 0.02;

t = linspace(0,400);
y = 10.*exp(-0.02.*t)+((0.05.*100)./((0.05)-(0.02))).*(exp(-(0.02).*t) - exp(-(0.05).*t));

figure(1); clf
plot(t,y)
xlabel('t')
ylabel('y(t)')
title('Part d (km423)')

%% Problem F
k1 = 0.05;
k2 = 0.02;
a = 0.1;

t2 = linspace(0,500);
y2 = (((k1)./((k2-k1).*(a-k1))).*exp(-k1.*t).*heaviside(t)) + (((k1)./((k1-k2).*(a-k2))).*exp(-k2.*t).*heaviside(t)) + (((k1)./((k1-a).*(k2-a))).*exp(-a.*t).*heaviside(t));

tIndex = find(y2 == max(y2), 1, 'first');
maxTValue = t2(tIndex)

figure(2); clf
plot(t2,y2)
xlabel('t')
ylabel('y(t)')
title('Part f (km423)')