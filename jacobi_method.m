function jacobi_method()


eq1 = input('Enter equation1 x1 = ');
eq2 = input('Enter equation2 x2 = ');
eq3 = input('Enter equation3 x3 = ');
err = input('Maximum error      = ');
itt = input('Maximum Iterations = ');

x1=0;
x2=0;
x3=0;
cr = err+1
itt1=0;

while(cr>=err && itt1<itt)
        
    ox1=eval(eq1);   
    ox2=eval(eq2);
    ox3=eval(eq3);
    
    cr = min(min(abs(ox1-x1),abs(ox2-x2)),abs(ox3-x3))
    
    x1 = ox1;
    x2= ox2;
    x3=ox3;

    itt1 = itt1+1;
end;

x1
x2
x3
end 
