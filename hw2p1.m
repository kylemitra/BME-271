x = linspace(0,60,60);
dataset = [2886.98
2889.67
2917.75
2926.46
2954.18
2950.46
2945.35
2917.38
2913.78
2924.92
2941.76
2964.33
2973.01
2995.82
2990.41
2975.95
2979.63
2993.07
2999.91
3013.77
3014.30
3004.04
2984.42
2995.11
2976.61
2985.03
3005.47
3019.56
3003.67
3025.86
3020.97
3013.18
2980.38
2953.56
2932.05
2844.74
2881.77
2883.98
2938.09
2918.65
2882.70
2926.32
2840.60
2847.60
2888.68
2923.65
2900.51
2924.43
2922.95
2847.11
2878.38
2869.16
2887.94
2924.58
2926.46
2906.27
2937.78
2976.00
2978.71
2978.43];

hold on
plot(x,dataset)

t1 = (1/3 * ones(3,1));
a = 1;
threeday = filter(t1,a,dataset);
threeday(1) = (dataset(1)+dataset(2))./2;
threeday(2) = (dataset(1)+dataset(2)+dataset(3))./3;
threeday(59) = (dataset(58)+dataset(59)+dataset(60))./3;
threeday(60) = (dataset(59)+dataset(60))./2;
plot(x,threeday)

t2 = (1/15 * ones(15,1));
fifteen = filter(t2,a,dataset);
for i = 1:15
    fifteen(i) = (sum(dataset(i:(14+i)))./15);
end
plot(x,fifteen)

hold off
legend('Stock Price', '3-day Moving Average', '15-day Moving Average')
xlabel('Day')
ylabel('Price ($)')
title('Stock Price Movement of the S&P 500 over last 60 days (km423)')
    
    
    
    
    
    
    
    
    