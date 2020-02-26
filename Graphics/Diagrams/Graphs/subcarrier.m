close all; clear; clc;

y = @(x) sinc(x)
fig = ezplot(y, [-6 6]);ylim([-0.3 1.1]);
set(fig, "linewidth", 1.5);grid on;