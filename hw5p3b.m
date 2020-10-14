t = linspace(-3,3);
X = zeros(1, length(w));
for k = 1:length(w)
    X(k) = (1./(2.*pi.*k)).*(sin(3.*k)+sin(2.5*k)-sin(1.5*k)-sin(k));
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