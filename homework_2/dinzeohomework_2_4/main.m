% Author Name: Lucius Dinzeo
% Email: dinzeo22@students.rowan.edu
% Created On: 09/27/2024
% Updated On: 10/11/2024
% Update By: Dinzeo
% All rights are reserved - MIT License
% Title: Homework 2.1

% 4 - Solar System Visualization
    %Create a visualization of the solar system's planets:
%a) Create two vectors:
   %- `planet_distances`: containing the average distance of each planet from the sun in astronomical units (AU).
   %- `planet_sizes`: containing the relative sizes of the planets (use Earth = 1 as a reference).

planet_distances = [0.387, 0.722, 1.000, 1.520, 5.203, 9.539, 19.218, 30.057];
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88,];
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

%b) Create a figure with two subplots:
  % - In the first subplot, create a scatter plot of planet distances vs. planet sizes. Use different colors for each planet and adjust the marker sizes to reflect the planet sizes.
  % - In the second subplot, create a bar chart of planet distances.

% Subplot 1: Scatter plot of planet distances vs. sizes
subplot(1,2,1);
hold on;  % Allow multiple plots on the same axes

% Loop to plot each planet by itself
for i = 1:length(planet_distances)
    scatter(planet_distances(i), planet_sizes(i), 100.*planet_sizes(i), 'filled', 'DisplayName', planet_names{i});
    %scatter plot( x, y, dot size (100x), fills points, sets legend, legend entries)
end

title('Planet Distance vs Size');
xlabel('Distance from Sun (AU)');
ylabel('Relative Planet Size (Earth = 1)');
legend('Location', 'bestoutside');  % The legend will now show all planets

hold off;  % Stops adding points to subplot

% Subplot 2: Bar chart of planet distances
subplot(1,2,2);
bar(planet_distances);
title('Planet''s Distance From Sun');
xlabel('Planets');
ylabel('Distance (AU)');
xticks(1:8);  % Set x-ticks to match # of planets
xticklabels(planet_names);  % Label x-axis with planet names using tick marks

% Save the figure
saveas(gcf, 'solar_system_visualization.png');