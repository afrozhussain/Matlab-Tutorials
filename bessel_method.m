function val = bessel_method(x,y,x1)

if isempty(y)
    val = 0;
    return;
end;

A = abs(x-x1);
mid = find(A==min(A));
mid1 = mid(1)
A(mid1) = max(A);
mid = find(A==min(A));
mid2 = mid(1);



val =0.5*(y(mid1)+y(mid2));

mid=mid1;
if (mid2<mid1)
    mid=mid2;
end;

ny = diff(y);

u = (x1 - x(mid))/(x(2)-x(1));

j = 0;
while (mid-j)>=1
    if mod(j,2) == 0 
        val = val + ny(mid-j)*BN(u,j);
    else
        val = val + (ny(mid-j)+ny(mid-j+1))*BN(u,j);
    end
    ny = diff(ny);   
    j=j+1;
end;

end

function val = BN(u,i)
if i == 0
    val= u - 0.5 ;
end

if i == 1
val= 0.5*u*(u - 1)/2; 


end

if i == 2
    val= (u - 0.5)*u*(u - 1)/6;
end


if i == 3
val= 0.5*(u + 1)*u*(u - 1)*(u - 2)/24;
end


if i == 4
val= (u - 0.5)*(u + 1)*u*(u - 1)*(u - 2)/120;
end


if i == 5
val= 0.5*(u + 2)*(u + 1)*u*(u - 1)*(u - 2)*(u - 3)/720;
end

end
