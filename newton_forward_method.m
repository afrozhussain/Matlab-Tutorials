function val = newton_forward_method(x,y,x1)

if isempty(y)
    val = 0;
    return;
end;

u = (x1-x(1))/(x(2)-x(1))
val = y(1);

ny = diff(y);

while ~isempty(ny)
    n = length(y) - length(ny)
    k = 1;
    for i=0:n-1
        k = k * (u-i)
    end;
    val = val + ( k * ny(1)/factorial(n))
    ny = diff(ny);    
end;

end