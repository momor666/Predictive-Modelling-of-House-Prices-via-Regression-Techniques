x = kensington(:, 1);      %month
y = kensington(:, 2);      %price

b1 = x\y;
yCalc1 = b1*x;

figure
scatter(x,y)
hold on
plot(x,yCalc1)
xlabel('Number of months (Dec 1995 - Dec 2017)')
ylabel('House Prices, £')
title('Linearity Regression of House Prices & Years Barking & Dagenham')
grid on

predictedPrice1 = b1 * 327; %%327 = Dec 2022
predictedPrice2 = b1* 387; %%387 = Dec 2027