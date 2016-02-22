function val=trapezoidalrule(x,y)
    
n=length(x);
h = x(2)-x(1);

val = 1*h*(y(1) + 2*sum(y(2:n-1)) + y(n))/2;
end