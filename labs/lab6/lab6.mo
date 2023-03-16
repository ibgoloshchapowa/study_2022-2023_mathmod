//case 1: I<=I*
model lab6

parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Real N = 13000;
parameter Real I0 = 113;
parameter Real R0 = 13;
parameter Real S0 = N - I0 - R0;

Real S(start=S0);
Real I(start=I0);
Real R(start=R0);

equation
  der(S) = 0;
  der(I) = -b*I;
  der(R) = b*I;

annotation(experiment(StartTime = 0, StopTime = 200, Interval = 20));

end lab6;
