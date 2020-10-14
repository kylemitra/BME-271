%%%%%%%%
t=(-2*pi):.1:(2*pi);
w= -50:.001:50;

x_t= 1 + 4.*cos(2.*pi.*t) + 8.*sin((3.*pi.*t)-(pi./2));
x_t2= 1 + 4.*cos(2.*pi.*w) + 8.*sin((3.*pi.*w)-(pi./2));
x_w = fft(x_t2);
x_w2 = fft(x_t);

subplot(3, 3, 1); plot(t, x_t);title('x(t)'); 
subplot(3, 3, 4); plot(t, abs(x_w2)); title('|X(\omega)|'); 
subplot(3, 3, 7); plot(t, angle(x_w2)); title('\angleX(\omega)');

%%%%%%%%
y_t = 2-2.*sin(2.*pi.*t);
y_t2 = 2-2.*sin(2.*pi.*w);
y_w = fft(y_t2);
y_w2 = fft(y_t);


subplot(3, 3, 3); plot(t, y_t);title('y(t)'); 
subplot(3, 3, 6); plot(t, abs(y_w2)); title('|Y(\omega)|'); 
subplot(3, 3, 9); plot(t, angle(y_w2)); title('\angleY(\omega)');

%%%%%%%%%%  
h_w = y_w ./ x_w;
h_w2 = y_w2 ./ x_w2;
h_t = ifft(h_w2);

subplot(3, 3, 2); plot(t, h_t);title('h(t) (km423)'); 
subplot(3, 3, 5); plot(t, abs(h_w2)); title('|H(\omega)|'); 
subplot(3, 3, 8); plot(t, angle(h_w2)); title('\angleH(\omega)');