model lab8_2
parameter Real p_cr = 19;
parameter Real tau1 = 15;
parameter Real p1 = 12;
parameter Real tau2 = 18;
parameter Real p2 = 10; 
parameter Real N = 22; 
parameter Real q = 1; 
parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);
parameter Real d = 0.0016;

Real M1(start=2.4);
Real M2(start=1.7);

equation
der(M1) = M1 - (b/c1+d)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

annotation(experiment(StartTime = 0, StopTime = 30, Interval = 0.3));  
end lab8_2;
