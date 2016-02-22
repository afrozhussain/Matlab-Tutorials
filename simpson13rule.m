function val=simpson13rule(x,y)
    
n=length(x);
h = x(2)-x(1);

val  = y(1) + y(n)
for i=2:n-1
    if mod(i,2)==0
        val = val + 4*y(i);
    else
        val = val + 2*y(i);
    end
end;

val = h*val/3;
end