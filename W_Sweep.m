
clear; clc;

% Load extracted width-sweep data (X1: Refractive Index [RIU], YMatrix1: Resonant Wavelength [nm])
load('w_sweep_data.mat', 'X1', 'YMatrix1');

% Create figure
figure('WindowState', 'maximized');

% Create axes
axes1 = axes('Position', ...
    [0.3765625 0.273461538461538 0.314374999999999 0.448760683760684]);
hold(axes1, 'on');

% Create multiple line objects using matrix input to plot
plot1 = plot(X1, YMatrix1, 'LineWidth', 1.1);
set(plot1(1), 'DisplayName', 'w=30nm', 'Marker', 'diamond');
set(plot1(2), 'DisplayName', 'w=40nm', 'Marker', 'o');
set(plot1(3), 'DisplayName', 'w=50nm', 'Marker', '*');
set(plot1(4), 'DisplayName', 'w=60nm', 'Marker', 'square');

% Create labels and formatting
ylabel('Resonant Wavelength (nm)', 'FontWeight', 'bold');
xlabel('Refractive Index (RIU)', 'FontWeight', 'bold');
box(axes1, 'on');
grid(axes1, 'on');
hold(axes1, 'off');
set(axes1, 'FontWeight', 'bold', 'LineWidth', 1.3);

% Create legend
legend1 = legend(axes1, 'show');
set(legend1, ...
    'Position', [0.612456608977582 0.309105317602582 0.064453125745058 0.0938174966602037]);