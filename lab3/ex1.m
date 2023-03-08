
distribution=input("Type of distribution:\n" + ...
    " normal\n student\n chi2\n fischer\n " + ...
    ">>" , "s");

switch distribution
    case 'normal'
        %a
        mu= input('mu= ');
        sigma= input('sigma= ');
        %x<=0
        a1=normcdf(0,mu,sigma); 
        %x>=0
        a2=1-a1;  
        fprintf('a1= %6.4f\n',a1);
        fprintf('a2= %6.4f\n',a2);

        %b
        b1= normcdf(1,mu,sigma)-normcdf(-1,mu,sigma);
        b2=1-b1;
        fprintf('b1= %6.4f\n',b1);
        fprintf('b2= %6.4f\n',b2);

        %c
        alpha=input('alpha = ');
        if((alpha>0) && (alpha<1))
            c=norminv(alpha,mu,sigma);
            fprintf('c= %6.4f\n', c);
        else 
            fprintf("Alpha should be between 0 and 1!");
        end

        %d
        beta=input('beta = ');
        if((beta>0) && (beta<1))
            d=norminv(1-beta,mu, sigma);
            fprintf('d= %6.4f\n', d);
        else 
            fprintf("Beta should be between 0 and 1!");
        end

    case 'student'
        %a
        n=input('n= ');
        a1=tcdf(0,n);
        a2=1-a1;
        fprintf('a1= %6.4f\n',a1);
        fprintf('a2= %6.4f\n',a2);

        %b
        b1=tcdf(1,n)-tcdf(-1,n);
        b2=1-b1;
        fprintf('b1= %6.4f\n',b1);
        fprintf('b2= %6.4f\n',b2);
        
        %c
        alpha=input('alpha = ');
        if((alpha>0) && (alpha<1))
            c=tinv(alpha,n);
            fprintf('c= %6.4f\n', c);
        else 
            fprintf("Alpha should be between 0 and 1!");
        end

        %d
        beta=input('beta = ');
        if((beta>0) && (beta<1))
            d=tinv(1-beta,n);
            fprintf('d= %6.4f\n', d);
        else 
            fprintf("Beta should be between 0 and 1!");
        end


    case 'chi2'
        %a
        n=input('n= ');
        a1=chi2cdf(0,n);
        a2=1-a1;
        fprintf('a1= %6.4f\n',a1);
        fprintf('a2= %6.4f\n',a2);

         %b
        b1=chi2cdf(1,n)-chi2cdf(-1,n);
        b2=1-b1;
        fprintf('b1= %6.4f\n',b1);
        fprintf('b2= %6.4f\n',b2);

        %c
        alpha=input('alpha = ');
        if((alpha>0) && (alpha<1))
            c=chi2inv(alpha,n);
            fprintf('c= %6.4f\n', c);
        else 
            fprintf("Alpha should be between 0 and 1!");
        end

        %d
        beta=input('beta = ');
        if((beta>0) && (beta<1))
            d=chi2inv(1-beta,n);
            fprintf('d= %6.4f\n', d);
        else 
            fprintf("Beta should be between 0 and 1!");
        end

    case 'fischer'
        %a
        m=input('m= ');
        n=input('n= ');
        a1=fcdf(0,m,n);
        a2=1-a1;
        fprintf('a1= %6.4f\n',a1);
        fprintf('a2= %6.4f\n',a2);

        %b
        b1=fcdf(1,m,n)-fcdf(-1,m,n);
        b2=1-b1;
        fprintf('b1= %6.4f\n',b1);
        fprintf('b2= %6.4f\n',b2);

        %c
        alpha=input('alpha = ');
        if((alpha>0) && (alpha<1))
            c=finv(alpha,m,n);
            fprintf('c= %6.4f\n', c);
        else 
            fprintf("Alpha should be between 0 and 1!");
        end


        %d
        beta=input('beta = ');
        if((beta>0) && (beta<1))
            d=finv(1-beta,m,n);
            fprintf('d= %6.4f\n', d);
        else 
            fprintf("Beta should be between 0 and 1!");
        end

    otherwise
        fprintf('Bad command! Try again!');
end

fprintf('\n')
ex1