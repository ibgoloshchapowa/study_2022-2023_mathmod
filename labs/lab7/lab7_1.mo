model lab7_1  //case 1
parameter Real N = 888;
parameter Real N0 = 18;
Real n(start=N0);

function k
  input Real t;
  output Real result;
algorithm
  result:= 0.81; 
end k;

function p
  input Real t;
  output Real result;
algorithm
  result:=  0.0003; 
end p;

equation
der(n)=(k(time)+p(time)*n)*(N-n);

annotation(experiment(StartTime = 0, StopTime = 10, Interval = 0.02));
end lab7_1;
