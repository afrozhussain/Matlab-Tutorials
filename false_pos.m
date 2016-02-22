function y = false_pos ( f, a, b, TOL, Nmax )

%FALSE_POS   uses method of false position (regula falsi) to locate the root 
%            of a nonlinear function
%
%     calling sequences:
%             y = false_pos ( 'f', a, b, TOL, Nmax )
%             false_pos ( 'f', a, b, TOL, Nmax )
%
%     inputs:
%             f       string containing name of m-file defining function
%                     whose root is to be located
%             a,b     left and right endpoints, respectively, of interval
%                     known to contain root of f
%             TOL     absolute error convergence tolerance
%             Nmax    maximum number of iterations to be performed
%
%     output:
%             y       approximate value of root
%
%     NOTE:
%             if FALSE_POS is called with no output arguments, the iteration
%             number, the current enclosing interval and the current 
%             approximation to the root are displayed
%
%             if the maximum number of iterations is exceeded, a message
%             to this effect will be displayed and the most recent
%             approximation will be returned in the output value
%

old = b;
fa = feval(f,a);
fb = feval(f,b);
for i = 1 : Nmax
	new = b - fb * ( b - a ) / ( fb - fa );
	fnew = feval(f,new);
	
	if ( nargout == 0 )
	   disp ( sprintf ( '\t\t %3d \t (%.10f,%.10f) \t %.10f \n', i, a, b, new ) )
	end
	
	if ( abs(new-old) < TOL ) 
	   if ( nargout == 1 )
	      y = new;
	   end
	   return
	elseif ( fa * fnew < 0 )
	   b = new;
	   fb = fnew;
	else
	   a = new;
	   fa = fnew;
	end
	old = new;
	
end

disp('Maximum number of iterations exceeded')
if ( nargout == 1 ) y = new; end
