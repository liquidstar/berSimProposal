clear; clc;
%% Plots the OFDM spectrum for documentation
% Set number of carriers using variable "bins"
syms f z;
z=0;
bins=input("Number of bins: ");
% clf brought after prompt because it opens figure window
figure('Position', [900 400 900 600]);
clf;hold on;
i=-bins;
flimits = [-bins*3 bins*3];
while (i<=bins)
    %if (i != 0)
    y = sinc(f+i);
    z+=y;
    fig=ezplot(y, flimits);set(fig, "linewidth", 1.5-1e-2*bins);
    %end
    i+=1;
end
% Plot overall spectrum
%tot = ezplot(z, flimits); set(tot, "linewidth", 4, "color", 'b');
ylim([-0.3 1+bins/16]); xlim(flimits);
ylabel("Magnitude");xlabel("Frequency");title("OFDM spectrum");grid on;
%figure('Renderer', 'painters', 'Position', [10 10 900 600]);
% negate i and plot
% revert to positive and plot

