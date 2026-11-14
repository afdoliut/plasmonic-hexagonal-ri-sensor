clear; clc;

% Load extracted sensor performance data (X1: L_in [nm], Y1: FoM [RIU^-1], Y2: Sensitivity [nm/RIU])
load('fom_data.mat', 'X1', 'Y1', 'Y2');

% Create figure
figure('WindowState', 'maximized');

% Create axes
axes1 = axes('Position', ...
    [0.359895833333333 0.276666666666666 0.292499999999998 0.461581196581197]);
hold(axes1, 'on');
colororder([0.85 0.325 0.098]);

% Activate the left side of the axes (Figure of Merit)
yyaxis(axes1, 'left');
plot(X1, Y1, 'Marker', 'diamond', 'LineWidth', 1.1);
ylabel('FoM (RIU^{-1})', 'FontWeight', 'bold');
set(axes1, 'YColor', [0.85 0.325 0.098]);

% Activate the right side of the axes (Sensitivity)
yyaxis(axes1, 'right');
plot(X1, Y2, 'Marker', 'square', 'LineWidth', 1.1);
ylabel('Sensitivity (nm/RIU)', 'FontWeight', 'bold');
set(axes1, 'YColor', [0 0.5 0.5]);

% Create xlabel and formatting
xlabel('Inner Radial Length, L_{in} (nm)', 'FontWeight', 'bold');
box(axes1, 'on');
grid(axes1, 'on');
hold(axes1, 'off');
set(axes1, 'FontWeight', 'bold', 'LineWidth', 1.2);

