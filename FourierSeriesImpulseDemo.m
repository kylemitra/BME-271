% Script to demonstrate Fourier Series for an impulse
% J. Izatt / BME 171
echo on
clear all
close all

%Calculate coefficients
for Nmax=1:30
    
a(1)=1/(2*pi);
b(1)=0;
for n=2:Nmax+1
    a(n)=(3/(n*pi))*sin((4*n*pi)/3);
    b(n)= 0;
end
ln=linspace(0,Nmax,Nmax+1); 
subplot(2,2,1), stem(ln,a);
title('a(n)'), xlabel('n'), ylabel('a(n)'), grid on;
subplot(2,2,2), stem(ln,b);
title('b(n)'), xlabel('n'), ylabel('b(n)'), grid on;

%Calculate summation components
lt=linspace(-pi,pi,100);
for n=2:Nmax+1
    for it=1:100;
        t=((it-50)/100)*2*pi;
        x(1,it)=a(1);
        x(n,it)=a(n)*cos((n-1)*t)+b(n)*sin((n-1)*t);
    end
end
subplot(2,2,3), plot(lt,x);
title('x(t) Component'), xlabel('t'), ylabel('x(t)'), grid on;

%Calculate summation
for it=1:100;
    t=((it-50)/100)*2*pi;
    xsum(it)=a(1);
    for n=2:Nmax+1
        xsum(it)=xsum(it)+a(n)*cos((n-1)*t)+b(n)*sin((n-1)*t);
    end
end
subplot(2,2,4), plot(lt,xsum)
title('x(t) Summation'), xlabel('t'), ylabel('x(t)'), grid on;

end
