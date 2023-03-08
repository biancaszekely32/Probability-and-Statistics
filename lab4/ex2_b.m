clear ALL
p=input('probability= ');
N=input('number of simulations=');
n=input('nr of trials= ');

U = rand(n, 1);
X = sum(U < p);

clear X
for i = 1:N
    U = rand(n, 1);
    X(i) = sum(U < p);
end

U_X = unique(X);
n_X = hist(X, length(U_X));
rel_freq = n_X / N;

x = 0:n;
y = binopdf(x, n, p);
clf;
plot(x, y, 'bd', U_X, rel_freq, 'r+');
legend('binopdf', 'simulation')