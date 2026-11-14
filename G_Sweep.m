

clear; clc;

% Load extracted gap-sweep data (X1: Refractive Index [RIU], YMatrix1: Resonant Wavelength [nm])
load('g_sweep_data.mat', 'X1', 'YMatrix1');

% Create figure
figure('WindowState', 'maximized');

% Create axes
axes1 = axes('Position', ...
    [0.355208333333333 0.244615384615384 0.319583333333333 0.464786324786325]);
hold(axes1, 'on');

% Create multiple line objects using matrix input to plot
plot1 = plot(X1, YMatrix1, 'LineWidth', 1.1);
set(plot1(1), 'DisplayName', 'g=32nm', 'Marker', 'diamond');
set(plot1(2), 'DisplayName', 'g=37nm', 'Marker', '*');
set(plot1(3), 'DisplayName', 'g=47nm', 'Marker', 'square');
set(plot1(4), 'DisplayName', 'g=42nm', 'Marker', 'o');

% Create labels and formatting
ylabel('Resonant Wavelength (nm)', 'FontWeight', 'bold');
xlabel('Refractive Index (RIU)', 'FontWeight', 'bold');
box(axes1, 'on');
grid(axes1, 'on');
hold(axes1, 'off');
set(axes1, 'FontWeight', 'bold', 'LineWidth', 1.2);

% Create legend
legend1 = legend(axes1, 'show');
set(legend1, ...
    'Position', [0.590581627297731 0.284532668029932 0.0634114590535562 0.0938174966602037], ...
    'LineWidth', 1.2);