% Author Name: Lucius Dinzeo
% Email: dinzeo22@students.rowan.edu
% Created On: 09/27/2024
% Updated On: 10/11/2024
% Update By: Dinzeo
% All rights are reserved - MIT License
% Title: Homework 2.1

% 3 - Weather Data Analysis
%a) Create a file named 'weather_data.txt'
%b) Write a MATLAB script that:
%   - Reads the data from 'weather_data.txt' into a cell array.
data = readcell('weather_data.txt', 'Delimiter', ',');
       % 'readcell' reads the data as a cell array where each cell can contain different data types. 
                                      % 'Delimiter', ',' specifies that the columns are separated by commas in the file.
%   - Extracts the numerical data into separate vectors for temperature, humidity, and precipitation.
    %Skip the first row
 temperature = cell2mat(data(2:end, 2)); %Extract temp column, converting from cell to matrix (cell2mat)
                     % (second row to end, 2nd column)
 humidity = cell2mat(data(2:end, 3)); %Extract humidity column
                  % (second row to end, 3rd column)
 precipitation = cell2mat(data(2:end, 4)); %Extract precipitation column

%   - Calculates the average temperature, humidity, and total precipitation.
average_temperature = mean(temperature);
average_humidity = mean(humidity);
total_precipitation = sum(precipitation);
    
%   - Saves these statistics to a new file named 'weather_summary.txt'.
fileID = fopen('weather_summary.txt', 'w'); 
         %Opens file for writing
                                  %'w' mode creates new file if it doesn't exist
fprintf(fileID, 'Average Temperature: %.2f\n', average_temperature);
fprintf(fileID, 'Average Humidity: %.2f\n', average_humidity);
fprintf(fileID, 'Total Precipitation: %.2f\n', total_precipitation);
fclose(fileID); %Closes file after writing