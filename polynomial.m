%created by rafsan islam math'17 KU
%code for solving and plot single variable polynomial ,user input
% x^n+x^n-1+x^n-2+.......+c=0 this type of polynomial will be solved
syms x
equation=0;
m='enter degree\n';                   %taking degree
p=input(m);
for i=1:1:p+1                         %taking co-efficient
    l='input co-efficient for';
    j(i)=input(l);
end

for h=1:1:p+1                         %creating equation
    equation=equation+j(h)*x^(p+1-h);
end
equation                              %showing equations
answer=(vpasolve(equation,x));
real(answer)
%solving it

r=input('do u want to see graph.if agree press 1 or press 0\n');

for a=1:1:1                           %ploting graph
if r==1
    fplot(equation,x)
else
    fprintf('thank u for using\n')
end
end   

