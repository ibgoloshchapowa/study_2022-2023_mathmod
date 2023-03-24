model lab7_3  //case 3
parameter Real N = 888;
parameter Real N0 = 18;
Real n(start=N0);

function k
  input Real t;
  output Real result;
algorithm
  result:= 0.8*sin(8*t); 
end k;

function p
  input Real t;
  output Real result;
algorithm
  result:=  0.8*cos(t); 
end p;

equation
der(n)=(k(time)+p(time)*n)*(N-n);

annotation(experiment(StartTime = 0, StopTime = 0.25, Interval = 0.0002));
end lab7_3;
