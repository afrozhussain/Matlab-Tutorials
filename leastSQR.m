function leastSQR(x,y)

A = [length(x) sum(x); sum(x) sum(x.^2)];
B = [sum(y) ; sum(x.*y)];

R = inv(A)*B;

fprintf('\n y = %0.3fx + %0.3f \n', R(2),R(1)); 

end
