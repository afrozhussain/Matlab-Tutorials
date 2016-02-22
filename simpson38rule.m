function val=simpson38rule(x,y)
    
n=length(x);
h = x(2)-x(1);

val  = y(1) + y(n);
for i=2:n-1
    if mod(i-1,3)==0
        val = val + 2*y(i);
    else
        val = val + 3*y(i);
    end
end;

val = 3*h*(val)/8;
end