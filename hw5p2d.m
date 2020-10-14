w = linspace(-2.5,2.5);
X = zeros(1, length(w));
for k = 1:length(w)
    X(k) = ((2.*cos(k))-(2.*cos(2.*k)))/(k.*k);
%     X(k) = (exp(j.*k)+exp(-j.*k)-exp(2.*j.*k)-exp(-2.*j.*k))./(k.*k)
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