function val = lagrangian_method(x,y,x1)

n = length(x);
val = 0;
for i=1:n
    k = 1;
    for j=1:n
        if (j~=i)
            k = k * (x1-x(j))/(x(i)-x(j));
        end;
    end;
    val = val + k*y(i);
end;

end 
