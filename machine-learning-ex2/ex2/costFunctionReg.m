function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
features = length(theta);
h = sigmoid(X * theta);

% Calculates the sum of squares from 1 to n. We don't include zero because in
% Regularized Logistic Regression, we do not want to change the first theta
% value.
% Vectorized implementation to calculate the cost.
J = (1 / m) * (-y' * log(h) - (1 - y)' * log(1 - h)) + ...
    (lambda / (2 * m)) * sumsqr(theta(2:features));

% Vectorized impleentation to claculate the gradient.
grad = (1 / m) * (X' * (h - y));
% As stated before, since we do not want to update the first theta, we update
% every gradient, excluding the first one, by (lambda/m) * theta.
grad(2:features) = grad(2:features) + (lambda / m) * theta(2:features);



% =============================================================

end
