w=-50:.001:50;  
t=0:.01:5;    
H=@(w) 10./(1j*w+10); 
syms w_s t_s

h = ifourier(H(w_s), w_s, t_s); 
rewrite(h, 'heaviside');
h_t = eval(subs(h, t_s, t));
subplot(3, 3, 2); plot(t, h_t);title('h(t) (km423)'); 
subplot(3, 3, 5); plot(w, abs(H(w))); title('|H(\omega)|'); 
subplot(3, 3, 8); plot(w, angle(H(w))); title('\angleH(\omega)');

%%%%%%%%
w=-50:.001:50;  
t=0:.01:5;    
X=@(w) ((4+2.*j.*w)./(20+(4.*j.*w)-(w.*w))) + ((2+j.*w)./(404+(4.*j.*w)-(w.*w)));
syms w_s t_s

x = ifourier(X(w_s), w_s, t_s); 
rewrite(x, 'heaviside');
x_t = eval(subs(x, t_s, t));
subplot(3, 3, 1); plot(t, x_t);title('x(t)'); 
subplot(3, 3, 4); plot(w, abs(X(w))); title('|X(\omega)|'); 
subplot(3, 3, 7); plot(w, angle(X(w))); title('\angleX(\omega)');

%%%%%%%%

w=-50:.001:50;  
t=0:.01:5;    
Y=@(w) (10./(1j*w+10)) .* (((4+2.*j.*w)./(20+(4.*j.*w)-(w.*w))) + ((2+j.*w)./(404+(4.*j.*w)-(w.*w))));
syms w_s t_s

y = ifourier(Y(w_s), w_s, t_s); 
rewrite(y, 'heaviside');
y_t = eval(subs(y, t_s, t));
subplot(3, 3, 3); plot(t, y_t);title('y(t)'); 
subplot(3, 3, 6); plot(w, abs(Y(w))); title('|Y(\omega)|'); 
subplot(3, 3, 9); plot(w, angle(Y(w))); title('\angleY(\omega)');