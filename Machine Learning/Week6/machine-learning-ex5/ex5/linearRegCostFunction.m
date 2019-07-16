function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Insert bias to colum 1
% X = [zeros(12,1), X];
h = X * theta;

% let theta0 be 0 and regularize it
[row,column] = size(theta);
theta(1, :) = zeros(1, column);
J =  (sum((h - y).^2) + sum(lambda * theta.^2)) / (2 * m);


% Calulate gradient
grad = (X' * (h - y) + lambda * theta)/m;


% =========================================================================

grad = grad(:);

end
