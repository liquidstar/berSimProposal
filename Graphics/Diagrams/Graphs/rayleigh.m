% Prerequisites
clc;clear;clf
% Variables
syms z;
sigma = 1;
% Distribution Function
pdf = (z/sigma^2)*exp(-(z^2)/(2*(sigma^2)));
% Differential of, to locate maxima
pdf_p = diff(pdf) == 0;
max_p = solve(pdf_p,z);
% Plot of differential function
lim = [0 4*sigma]
fig = ezplot(pdf, lim);
set(fig, "linewidth", 1.5)
grid on; hold on
%% pointing max probability point
% Horizontal line
z = double(max(max_p));
horz = double(subs(pdf)).*[1 1];
x = [0 z];
plot(x, horz, 'r--', "linewidth", 1);
% Vertical line
vert = z.*[1 1];
y = [0 double(subs(pdf))];
plot(vert, y, 'r--', "linewidth", 1);
% Fig plot limits
ylim([0 sigma]);

