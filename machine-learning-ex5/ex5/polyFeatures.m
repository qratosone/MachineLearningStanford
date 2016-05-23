function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
m=length(X);
power=[1:p];
power_matrix=repmat(power,m,1); %参见repmat函数的用法，这条语句的作用是复制一个幂指数矩阵[1,2,3...p]
X_fill=repmat(X,1,p);
X_poly=X_fill.^power_matrix;


% =========================================================================

end
