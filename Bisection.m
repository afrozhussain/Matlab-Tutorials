function Bisection()

fx = input('Enter f(x) = ');
x1 = input('Enter first starting point = ');
x2 = input('Enter second starting point = ');
err = input('Enter error tollerance = ');

x3 = (x1+x2)/2; %find mid point

while abs(x1-x2) > err
    
    %calculate functional values at all three points
    x = x1;
    fx1 = eval(fx);
    x = x2;
    fx2 = eval(fx);
    x = x3;
    fx3 = eval(fx);

    %calculate lhs and rhs functional product
    lhs = fx1*fx3;
    rhs = fx3*fx2;
    
    %select < 0 side for the next iteration
    if (lhs < 0 )
        x2= x3;
        x3 = (x1+x2)/2;
    else
        x1 = x3;
        x3 = (x1+x2)/2;
    end
    
end

    fprintf('\n Answer = %0.4f \n' , x3);

end