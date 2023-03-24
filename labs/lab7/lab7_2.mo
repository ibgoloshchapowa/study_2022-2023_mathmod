model lab7_2  //case 2
parameter Real N = 888;
parameter Real N0 = 18;
Real n(start=N0);

function k
  input Real t;
  output Real result;
algorithm
  result:= 0.00008; 
end k;

function p
  input Real t;
  output Real result;
algorithm
  result:=  0.8; 
end p;

equation
der(n)=(k(time)+p(time)*n)*(N-n);

annotation(experiment(StartTime = 0, StopTime = 0.1, Interval = 0.0002));
end lab7_2;
