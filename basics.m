% Basics of matlab script syntax.

%Always put these at the top of your script, to clean things up from run to run:
clear all;
close all;

% Creating an array (i.e. a row vector) of a know size:
x = zeros(1, 10);

% Creating an array of ones (i.e. a row vector) of a know size:
x = ones(1, 10);

% Create an array of a repeated value:
x = 5*ones(1, 10);

% Displaying a message to the console:
disp("A message");
% Writing a variable with some text.
disp("x = "), disp(x)

% Multiplying two arrays element-by-element
% Note: The operator .* implies an element-by-element multiplication.
% Using * alone will try to do a matrix multiplication.
% If you have scalers (i.e. just a number), a normal multipication will be used.
a = 0:10;
b = 10:20;
a, b
ab = a .* b

% Multiplying an array by a scaler:
scalerMult_1 = a * 5       % a .* 5 also works
scalerMult_2 = a .* 5

% Addition (and subtraction) on arrays:
sum_a = a + 5             % Adds 5 to every element (.+ would work also)
sum_ab = a + b             % Adds each element of b to a.

% Creating an array of incrementing values:
step = 1;
N_total = 10;
n = 0:step:N_total-1;      % Creates an array from 0 to 9

%% Slicing an array:

% Create an array of 10 elements.
x = 0:9;

% Get the dimensions of x (rows, colums)
[r, c] = size(x);           % Get the dimensions [1, 11]
fprintf("Dimensions of x: %u rows; %u columns\n", r, c);

% Slicing, rotating, appending:
x1 = x(1:4)             % Take indices 1, 2, 3, 4
x2 = x(4:end)           % Take index 4 through the end of the array.
x3 = x(4:end-1)         % Take from index 4 to the second last entry.
x4 = x([end 1:end-1])   % Rotate an vector right by 1 (stored in a new array)
x = [x 11]              % Append another value to x

%% Reshaping

x_rows = 0:9            % Row vector  (1 x 10)
x_cols = x_rows(:)      % Convert to column vector (10 x 1)
x_cols = x_rows.'       % Transpose to convert row vector to column vector
x_cols = reshape(x_rows, [10, 1])  % Using reshape to convert row to col vector
