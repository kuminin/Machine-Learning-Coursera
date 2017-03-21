function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find indices of admitted
admitted = find(y == 1);
% Find indices of rejected
rejected = find(y == 0);

% Plot the Admitted as a 'black +' with a MarkerSize of 7 and width of 2.
plot(X(admitted, 1), X(admitted, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
% Plot the Rejected as a 'black o' with a Filled in color of yellow and marker
% size of 7.
plot(X(rejected, 1), X(rejected, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);





% =========================================================================



hold off;

end
