clear ALL
p = input('probability= ');
X = 0;
while(rand >= p)
    X = X+1;
end;
clear X;

N = input('simulations = ');
for i = 1:N
    X(i) = 0;
    while(rand >= p)
        X(i) = X(i)+1;
    end;
end

U_X = unique(X);
n_X = hist(X, length(U_X));
rel_freq = n_X / N;

x = 0:max(U_X);
y = geopdf(x, p);
clf;
plot(x, y, 'bd', U_X, rel_freq, 'r+');
legend('geopdf', 'simulation')