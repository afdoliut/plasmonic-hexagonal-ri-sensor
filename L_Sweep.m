clear; clc;

% Load extracted L_in sweep data (X1: Refractive Index [RIU], YMatrix1: Resonant Wavelength [nm])
load('L_sweep_data.mat', 'X1', 'YMatrix1');

% Create figure
figure('WindowState', 'maximized');

% Create axes
axes1 = axes('Position', ...
    [0.372395833333333 0.245683760683761 0.319583333333333 0.503247863247864]);
hold(axes1, 'on');

% Create multiple line objects using matrix input to plot
plot1 = plot(X1, YMatrix1, 'LineWidth', 1.1);
set(plot1(1), 'DisplayName', 'L_{in}=230nm', 'Marker', 'diamond');
set(plot1(2), 'DisplayName', 'L_{in}=245nm', 'Marker', '*');
set(plot1(3), 'DisplayName', 'L_{in}=260nm', 'Marker', 'square');
set(plot1(4), 'DisplayName', 'L_{in}=275nm', 'Marker', 'o');
set(plot1(5), 'DisplayName', 'L_{in}=290nm', 'Marker', 'x');

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
    'Position', [0.605685776310662 0.272889127078779 0.0738281259685754 0.148488124297453], ...
    'LineWidth', 1.2);