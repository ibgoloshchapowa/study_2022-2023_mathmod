//case 3: x''+ 5x' + x = cos(3t)
model lab4_3
//x''+ g*x' + w^2 *x = f(t)

parameter Real w = sqrt(1.00);
parameter Real g = 5;

parameter Real x0 = -1;
parameter Real y0 = -1;

Real x(start=x0);
Real y(start=y0);

function f
input Real t;
output Real res;
algorithm
res := cos(3*t);
end f;

equation
der(x) = y;
der(y) = - w*w*x - g*y + f(time);

end lab4_3;
