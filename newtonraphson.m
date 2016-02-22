% ----------------------------------
% Newton Raphson Method
% Program written by Afroz Hussain
% Muhammad Ali Jinnah University
% ---------------------------------

function newtonraphson()

fn = input('Enter f(x) = '); 
dfn = input('Derrivative of f(x) = ');
err = input('Error = ');
x0 = input('Guss = ');

x= x0; 
x1 = x0 - eval(fn)/eval(dfn);

    while abs(x1-x0) > err
        x0= x1;
        x= x0;
        x1 = x0 - eval(fn)/eval(dfn);
    end

    fprintf('\n Answer is : %0.5f \n',x1);
    
end