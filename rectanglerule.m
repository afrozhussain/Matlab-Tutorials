function val=rectanglerule(x,y)
    
n=length(x);
h = x(2)-x(1);

val  = h*sum(y);
end