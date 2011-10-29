function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
z = X * theta;
t = 1+exp(-z);
J = ((1 - y)' * z + sum(log(t))) / m + lambda / (2 * m) * theta(2:end)' * theta(2:end);
grad = X' * (1./t - y);
grad1 = grad(1);
grad += lambda * theta;
grad(1) = grad1;
grad *= 1/m; 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
