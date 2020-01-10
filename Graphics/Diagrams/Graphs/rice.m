clear;clf;clc;
% Variables
syms z K;
omega = 2;
% Distribution Function
pdf = ((2*z*(K+1))/omega)*exp(-K-((K+1)*z^2)/(omega))*besseli(0, (2*z*sqrt((K*(K+1))/(omega))));
% Differential of, to locate maxima
%pdf_p = diff(pdf) == 0;
%max_p = solve(pdf_p,z);
% Plot of differential function
lim = [0 2*omega]
hold on
K=0;fig=ezplot(subs(pdf), lim);set(fig, "linewidth", 1.5, "Linestyle", "--");
for i=0:2:4
    K = 2^i;
    fig(i+1) = ezplot(subs(pdf), lim);
    set(fig(i+1), "linewidth", 1.5)
end
K=32;fig=ezplot(subs(pdf), lim);set(fig, "linewidth", 1.5);
grid on;
%% pointing max probability point
% Horizontal line
%z = double(max(max_p));
%horz = double(subs(pdf)).*[1 1];
%x = [0 z];
%plot(x, horz, 'r--', "linewidth", 1);
% Vertical line
%vert = z.*[1 1];
%y = [0 double(subs(pdf))];
%plot(vert, y, 'r--', "linewidth", 1);
% Fig plot limits
%ylim([0 omega]);
ylim([0 3])

