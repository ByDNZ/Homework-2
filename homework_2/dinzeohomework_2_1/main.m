% Author Name: Lucius Dinzeo
% Email: dinzeo22@students.rowan.edu
% Created On: 09/27/2024
% Updated On: 10/11/2024
% Update By: Dinzeo
% All rights are reserved - MIT License
% Title: Homework 2.1

% 1 - Population Growth Analysis
% A small town has recorded its population over the last 5 years. The data for each year is: [5000, 5200, 5350, 5600, 5800].
% a) Create a row vector `population` with this data.

population = [5000, 5200, 5350, 5600, 5800];

% b) Calculate the year-over-year growth rate and store it in a new vector `growth_rate`.
growth_rate = ((population(2:end) - population(1:end-1)) ./ population(1:end-1)) * 100;
growth_rate = [0, growth_rate]; %prepends grow_rate vector to make it same length as pop vector; first variable's undefined 

% c) Create a 2x5 matrix `pop_data` where the first row is the `population` vector and the second row is the `growth_rate` vector.
pop_data = [population; growth_rate];

% d) Use `fprintf` to print a formatted table showing each year's % population and growth rate.
fprintf('Year\tPopulation\tGrowth Rate (%%)\n'); % \t -> inserts tab
for year = 1:length(population)
    if isnan(growth_rate(year))
        fprintf(' %d\t\t%d\t\tN/A\n', year, population(year));
    else
        fprintf(' %d\t\t%d\t\t%.2f%%\n', year, population(year), growth_rate(year));
    end
end