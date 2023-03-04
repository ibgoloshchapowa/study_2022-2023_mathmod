//case 1: x''+ 2x' + 6x = 0
model lab4_2
//x''+ g*x' + w^2 *x = f(t)

parameter Real w = sqrt(6.00);
parameter Real g = 2;

parameter Real x0 = -1;
parameter Real y0 = -1;

Real x(start=x0);
Real y(start=y0);

function f
input Real t;
output Real res;
algorithm
res := 0;
end f;

equation
der(x) = y;
der(y) = - w*w*x - g*y + f(time);

end lab4_2;
