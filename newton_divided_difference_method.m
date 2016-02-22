function val = newton_divided_difference_method(x,y,x1)

if isempty(y)
    val = 0;
    return;
end;

val = y(1);

ny = diff(y)./diff(x)

while ~isempty(ny)
    n = length(y) - length(ny);
    k = 1;
    for i=1:n
        k = k * (x1-x(i))
    end;
    val = val + ( k * ny(1))
    ny = diff(ny);   
    nx = [];
    for i=1:length(ny)
        nx(i) = x(i+n+1)-x(i);
    end;
    ny = ny./nx;
end;

end