theoretical = @(x,y) (x.^2+y.^2-1).^3 - x.^2.*y.^3;

xaxis = -1.5:0.01:1.5;
yaxis = -1.2:0.01:1.5;
[X, Y] = meshgrid(xaxis, yaxis);
Z = theoretical(X,Y);

experimental = csvread('synchrotrondata.csv');

figure;
contour(X, Y, Z);
hold on;
plot(experimental(:,1), experimental(:,2), 'ro');
hold off;

legend('theoretical', 'experimental', 'location', 'se');
xlabel('|\Psi\rangle_L');
ylabel('|\Psi\rangle_M');
title('E(|\Psi\rangle_L, |\Psi\rangle_M)');
