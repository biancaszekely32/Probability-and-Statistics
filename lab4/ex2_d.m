clear ALL
n = input('nr of successes = ');
p = input('probability= ');
for j = 1:n
    Y(j) = 0;
    while(rand >= p)
        Y(j) = Y(j)+1;
    end;
end
X = sum(Y);
clear X;

N = input('simulations = ');
for i = 1:N
    for j = 1:n
        Y(j) = 0;
        while(rand >= p)
            Y(j) = Y(j)+1;
        end;
    end
    X(i) = sum(Y);
end


U_X = unique(X);
n_X = hist(X, length(U_X));
rel_freq = n_X / N;


x = 0:20;
y = nbinrnd(x, p);
clf;
plot(x, y, 'bd', U_X, rel_freq, 'r+');
legend('nbinrnd', 'simulation')


