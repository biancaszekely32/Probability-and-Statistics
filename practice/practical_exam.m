clear
clc
close all

x=[1001.7, 975.0, 978.3, 988.3, 978.7, 988.9, 1000.3, 979.2, 968.9, 983.5, 999.2 ,985.6];

n1=length(x);
m=mean(x);
s=std(x);

%a)
%Null hypothesis: The mean is equal to 995m/s. 
%Alternative hypothesis: The mean is bigger than 995m/s.

m0=995;
fprintf('a)\n');
fprintf('We are doing a right-tailed test for the mean when we do not know the standard deviation.\n');

alpha1=0.05; %significance level
fprintf('SIGNIFICANCE LEVEL %f:\n',alpha1)
[h, p, ci, valstat] = ttest(x, m0, alpha1, 1);
t1=(m-m0)/s*sqrt(n1);
%rejection region 
l=tinv(1-alpha1,n1);
fprintf('The rejection region, RR, is (%f, %f)\n',l,Inf)
fprintf('The value of the test statistic t is %f (given by ttest %f).\n', t1, valstat.tstat);
fprintf('The P-value of the test is %.10f.\n',p)
if h==1
    fprintf('The null hypothesis is rejected (t in RR), i.e. the muzzles are faster than 995m/s.\n')
else
    fprintf('The null hypothesis is not rejected (t not in RR), i.e. the muzzles are not faster than 995m/s.\n')
end


%b)
fprintf('b)\n');
alpha2=0.01;% confidence interval=99%
n2=length(x);
q1=chi2inv(1-alpha2/2,n2-1);
q2=chi2inv(alpha2/2,n2-1);
s1=std(x);
li=(n2-1)*s1^2/q1;
ri=(n2-1)*s1^2/q2;

fprintf('Confidence interval for the standard deviation:\n')
fprintf('(%.4f, %.4f)\n', sqrt(li), sqrt(ri))


