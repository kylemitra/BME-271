w = linspace(-20,20);
X = zeros(1, length(w));
for k = 1:length(w)
%     X(k) = (2-(2.*exp(-1).*cos(k))+(2.*k.*exp(-k).*sin(k)))/(1+k.^(2))
    X(k) = (1-exp(-1*(1-(j.*k)))./(1-(j*k)))-((exp(-1*(1+(j.*k))))-1)./(1+(j.*k));
end

magnitude = abs(X);
theta = angle(X);

subplot(2,1,1)
plot(w,magnitude)
xlabel('w')
ylabel('Magnitude')
title('Magnitude plot')

subplot(2,1,2)
plot(w,theta)
xlabel('w')
ylabel('Angle')
title('Angle plot')