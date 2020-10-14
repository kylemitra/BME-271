% Script to demonstrate step response for 1st and 2nd order systems
% J. Izatt / BME 271
clear all
close all
echo off

% % First order system
% for p=3:-1:-3
%     H = tf([-p],[1 -p]);
%     [pole,zero] = pzmap(H);
%     if isempty(pole) pole = 0, end
%     ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' num2str(p)],'LineWidth',2);
% 	xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
%     t=0:0.05:5, y=step(H, t);
% 	ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' num2str(p)],'LineWidth',2);
% 	xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'), title('Step Response'), grid on;
%     sgtitle('First Order System'), hold(ax2,'on'), hold(ax1,'on')
%     pause
% end

% % Second order system: Real & Distinct Poles
% clf;
% for p=-1:0.5:-0.5
%     H = tf([-p],[1 -p]);
%     [pole,zero] = pzmap(H);
%     ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' num2str(p)],'LineWidth',2);
% 	xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
%     t=0:0.05:5, y=step(H, t);
% 	ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' num2str(p)],'LineWidth',2);
% 	xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'), title('Step Response'), grid on;
%     sgtitle('Second Order System: Real & Distinct Poles'),hold(ax2,'on'), hold(ax1,'on');
%     pause
% end
% H = tf([32],[1 10 16]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;

% 
% % Second order system: Real & Repeated Poles
% clf, H = tf([32],[1 8 16]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
% sgtitle('Second Order System: Real & Repeated Poles')
% hold(ax2,'on'), hold(ax1,'on')
% pause
% 
% % Second order system: Complex Conjugate Poles
% clf, H = tf([32],[1 4 16]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
% sgtitle('Second Order System: Complex Conjugate Poles')
% hold(ax2,'on'), hold(ax1,'on');
% pause
% 
% clf, H = tf([10],[1 2 10]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
% sgtitle('Second Order System: Complex Conjugate Poles')
% hold(ax2,'on'), hold(ax1,'on');
% pause
% 
% clf, H = tf([5],[1 2 5]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
% sgtitle('Second Order System: Complex Conjugate Poles')
% hold(ax2,'on'), hold(ax1,'on');
% pause
% 
% clf, H = tf([2],[1 2 2]);
% [pole,zero] = pzmap(H);
% ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
% t=0:0.05:5, y=step(H, t);
% ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
% xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
% sgtitle('Second Order System: Complex Conjugate Poles')
% hold(ax2,'on'), hold(ax1,'on');
% pause

% Second order system: Real & Repeated Poles
clf, H = tf([32],[1 10 16]);
[pole,zero] = pzmap(H);
ax1 = subplot(1,2,1), plot(ax1,real(pole),imag(pole),'x','DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
xlim([-3 3]), ylim([-3 3]), legend('-DynamicLegend'), title('Pole-Zero Diagram'), grid on;
t=0:0.05:5, y=step(H, t);
ax2 = subplot(1,2,2), plot(ax2,t,y,'DisplayName',['p = ' mat2str(pole,1)],'LineWidth',2);
xlim([0 5]), ylim([-2 2]), legend('-DynamicLegend'),title('Step Response'), grid on;
sgtitle('Second Order System: Real & Repeated Poles')
% hold(ax2,'on'), hold(ax1,'on')