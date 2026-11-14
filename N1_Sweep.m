

clear; clc;

% Load extracted refractive index sweep data (X1: Refractive Index [RIU], Y1: Resonant Wavelength [nm])
load('ri_sweep_data.mat', 'X1', 'Y1');

% Create figure
figure('WindowState', 'maximized');

% Create axes
axes1 = axes('Position', ...
    [0.35625 0.27025641025641 0.277916666666663 0.427393162393163]);
hold(axes1, 'on');

% Create plot
plot(X1, Y1, 'Marker', '*', 'LineWidth', 1.2);

% Create labels and formatting
ylabel('Resonant Wavelength (nm)', 'FontWeight', 'bold');
xlabel('Refractive Index (RIU)', 'FontWeight', 'bold');
box(axes1, 'on');
grid(axes1, 'on');
hold(axes1, 'off');
set(axes1, 'FontSize', 9, 'FontWeight', 'bold', 'LineWidth', 1.2);