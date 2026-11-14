clear; clc;

% Load extracted COMSOL patch curves
load('transmittance_sweep_2.mat', 'P');

% Create figure
figure('WindowState', 'maximized');
axes1 = axes;
hold(axes1, 'on');

% Render all 6 curves
for k = 1:length(P)
    patch('Vertices', P(k).Vertices, ...
          'Faces', P(k).Faces, ...
          'FaceColor', 'none', ...
          'EdgeColor', 'interp', ...
          'FaceVertexCData', P(k).FaceVertexCData, ...
          'LineWidth', 1.2);
end

% Formatting and labels
ylabel('Transmittance', 'FontWeight', 'bold');
xlabel('Wavelength (nm)', 'FontWeight', 'bold');
title('Transmittance Spectra', 'FontWeight', 'bold');
box(axes1, 'on');
grid(axes1, 'on');
hold(axes1, 'off');
set(axes1, 'FontWeight', 'bold', 'LineWidth', 1.2);