//case 2
model lab3_2
Real a = 0.25;
Real b = 0.64;
Real c = 0.2;
Real h = 0.52;
Real x;
Real y;
initial equation
x = 24000;
y = 9500;
equation
der(x) = -a*x-b*y+sin(2*time+4);
der(y) = -c*x*y-h*y+cos(time+4);
end lab3_2;
