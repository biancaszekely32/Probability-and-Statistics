p=input('p= ');
N=input('number of simulations=');

% for i=1:N
%     %the ith simulation
%     U=rand;
%     X(i)=(U<p);
% end

U=rand(1,N);
X=(U<p);


U_X=unique(X);%the unique sol
n_X=hist(X,length(U_X));%the nr of appearences
rel_freq= n_X/N; %the realtive frequency

[U_X; rel_freq];


[1:N,X];