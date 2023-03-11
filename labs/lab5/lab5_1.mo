model lab5_1
parameter Real a = 0.18; // коэффициент естественной смертности хищников
parameter Real b = 0.38; // коэффициент естественного прироста жертв
parameter Real c = 0.047; // коэффициент увеличения числа хищников
parameter Real d = 0.035; // коэффициент смертности жертв 

parameter Real x0 = b / d;
parameter Real y0 = a / c;

Real x(start=x0);
Real y(start=y0);

equation
  der(x) = -a*x + c*x*y;
  der(y) = b*y - d*x*y;

annotation(experiment(StartTime = 0, StopTime = 70, Interval = 0.05));
end lab5_1;
