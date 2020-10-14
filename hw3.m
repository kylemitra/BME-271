%Problem 2 - Part c
T = 0.1;
a = [(T-2) (4.25*T^2 - T +1)];
b = [0 0 T^2];
n = 2:1:100;
x = zeros(1, length(n));
x0 = [0 0];
y0 = [2 2.1];
yc = recur(a,b,n,x,x0,y0);
tc = 0:.1:10;
c = [2 2.1 yc(:)'];
hold on
plot(tc,c)

%Problem 2 - Part d
T2 = 0.05;
a2 = [(T2-2) (4.25*T^2 - T2 +1)];
b2 = [0 0 T2^2];
yc2 = recur(a2,b2,n,x,x0,y0);
c2 = [2 2.1 yc2(:)'];
plot(tc,c2)

%Problem 2 - part e
yt = (exp(-0.5.*tc)).*(sin(2.*tc)+(2.*cos(2.*tc)));
plot(tc,yt)
xlabel('t')
ylabel('y(t)')
legend('T=0.1','T=0.05','part a solution')
title('HW3 Problem 2 (km423)')