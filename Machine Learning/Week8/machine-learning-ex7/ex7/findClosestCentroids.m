function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

m = size(X,1);
clostCenIdx = 0;

% Iterate each example
for i = 1:m
    x = X(i,:);
    minDistanceQuad = 0;
    
    % Compute quadratic distance between example and centroid
    % Find the minimum and assign the index of centroids to idx
    for cdx = 1:K
        
        centroid = centroids(cdx,:);
        distanceQuad = sum((x - centroid).^2);
        if cdx == 1
            minDistanceQuad = distanceQuad;
            clostCenIdx = 1;
        else 
            if minDistanceQuad > distanceQuad
                minDistanceQuad = distanceQuad;
                clostCenIdx = cdx;
            end
        end
    end
    idx(i) = clostCenIdx;
    
    % =============================================================
    
end

