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
m=size(X,1);

a1=0;
b1=0;

for iter = 1:m

if (y(iter)==0)
a1=a1+1;
else
b1=b1+1;
endif

end


a=zeros(a1,2);
b=zeros(b1,2);
ac=1;
bc=1;


for iter = 1:m

if y(iter,1)==0
a(ac,1)=X(iter,1);
a(ac,2)=X(iter,2);
ac=ac+1;

else
b(bc,1)=X(iter,1);
b(bc,2)=X(iter,2);
bc=bc+1;

endif

end


plot(b(:,1),b(:,2),'k+');
plot(a(:,1),a(:,2),'ko');



% =========================================================================



hold off;

end
