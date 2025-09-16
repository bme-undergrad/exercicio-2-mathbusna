function [blendA, blendB] = exercicio2(NG)

##f = @(x)(10*x(1)+2*1*x(2));
f = [10, 2*NG]';

##x = [x1, x2]
x0 = [1, 1]';

## -(Ax)<=(-b) pois é um maior/igual
A = [-0.3, -0.2;
     -0.2, -0.25;
     -0.25, -0.3]
b = [-15;
     -10;
     -12]

## Aeq e beq nulos, pois não há igualdade
Aeq=[];
beq=[];

##limites dos valores de x
x_min_valores = zeros(2,1);
x_max_valores = [20; 50];
[x_star, fval_star] = linprog(f, A, b, Aeq, beq, lb=x_min_valores, ub=x_max_valores);

custo = f'*x_star

blendA=x_star(1);
blendB=x_star(2);
%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
