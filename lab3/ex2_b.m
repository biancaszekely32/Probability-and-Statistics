p = input("p=");
n = input("n=");
if(p>0.05 || n<30)
    fprintf('P should be smaller than 0.05 and n bigger than 30 ');
else
    k = 0 : n;
    plot(k, binopdf(k, n, p), 'm', k, poisspdf(k, n*p), 'b')
end
