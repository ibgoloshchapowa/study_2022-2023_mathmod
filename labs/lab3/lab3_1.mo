model lab3_1
Real a = 0.3;
Real b = 0.87;
Real c = 0.5;
Real h = 0.41;
Real x;
Real y;
initial equation
x = 24000;
y = 9500;
equation
der(x) = -a*x-b*y+sin(2*time)+1;
der(y) = -c*x-h*y+cos(3*time)+1;
end lab3_1;
