clear

x = [7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 14 10 2 4 9 11 3 5 12 6 10 7];
n = length(x)
conflevel = input ('alpha=');
alpha= 1- conflevel;


%a)
sigma = 5;
xbar = mean(x);
n = length(x);
z1 = norminv(1 - alpha/2, 0, 1);
z2 = norminv(alpha/2, 0, 1);
ci1 = xbar - sigma/sqrt(n) * z1
ci2 = xbar - sigma/sqrt(n) * z2
fprintf('The confidence interval for the mean (sigma known): (%3.4f, %3.4f)\n', ci1, ci2)

%b)
s = std(x);
t1 = tinv(1 - alpha/2, n-1);
t2 = tinv(alpha/2, n-1);
ci1 = xbar - s/sqrt(n) * t1;
ci2 = xbar - s/sqrt(n) * t2;

fprintf('The confidence interval for the mean (sigma unknown): (%3.4f, %3.4f)\n', ci1, ci2);


%c)
s2 = var(x); 
t1 = chi2inv(1 - alpha/2, n-1);
t2 = chi2inv(alpha/2, n-1);
ci1 = (n-1)*s2/t1;
ci2 = (n-1)*s2/t2;

fprintf('The confidence interval for the variance: (%3.4f, %3.4f)\n', ci1, ci2);
fprintf('The confidence interval for the std variance: (%3.4f, %3.4f)\n', sqrt(ci1), sqrt(ci2));