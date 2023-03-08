p = input("p=");
if(p>0.95 || p<0.05)
    fprintf('P should be between 0.05 and 0.95');
else
    for n = 1 : 3 : 100
      k = 0 : n;
      plot(k, binopdf(k, n, p),k,normpdf(k, n*p, sqrt(n*p*(1-p))));
      title ("BinoAprox for n="+n);
      pause(0.5);
    end
end