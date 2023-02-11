% Basics of matlab script syntax.

%Always put these at the top of your script, to clean things up from run to run:
clear all;
close all;

% Creating an array (i.e. a row vector) of a know size:
x = zeros(1, 10);

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
disp(n)
