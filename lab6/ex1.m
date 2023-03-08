clear
alpha = input('alpha=');
x = [7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 14 10 2 4 9 11 3 5 12 6 10 7];
n = length(x);

%a)
m0 = 9;
sigma = 5;
[H, P, CI, ZVAL] = ztest(x, m0, sigma, 'alpha', alpha, 'tail', 'left');
RR = [-inf, norminv(alpha)];
fprintf('The rejection region is (%4.4f, %4.4f)\n', RR)
fprintf('The value of the test statistic z is %4.4f\n', ZVAL)
fprintf('The P-value of the test is %4.4f\n', P)

if H == 1
    fprintf('\nThe null hypothesis is rejected.\n') 
    fprintf('The data suggests that the standard IS NOT met.\n')

else
    fprintf('\nThe null hypothesis is not rejected.\n')
    fprintf('The data suggests that the standard IS met.\n')
end

%b)
m0 = input('m0=');
sigma = std(x);
[H, P, CI, STATS] = ttest(x, m0, 'alpha', alpha, 'tail', 'right');
RR = [tinv(1-alpha, n-1), Inf];
fprintf('\nThe rejection region is (%4.4f,%4.4f)\n', RR)
fprintf('The value of the test statistic t is %4.4f\n', STATS.tstat)
fprintf('The P-value of the test is %4.4f\n', P)
if H==1
    fprintf('\nThe null hypothesis is rejected.\n') 
    fprintf('The data suggests that the average exceeds 5.5.\n')
else
    fprintf('The null hypothesis is not rejected.\n')
    fprintf('The data suggests that the average DOES NOT exceed 5.5.\n')
end

