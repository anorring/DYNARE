// From User Guide 3.4.1, the deterministic case

/*
Endogenous variables
Exogenous variables
Parameters
Parameter values
*/

var y c k i l y l w r;
varexo z;

parameters beta psi delta alpha sigma epsilon; 

alpha = 0.33;
beta = 0.99;
delta = 0.023;
psi = 1.75;
sigma = (0.007/(1-alpha));
epsilon = 10;

/*
Model:
Loglinearized, with just the two first equation for illustration.
Repeating the name of a variable means log of that variable.
*/

model;
(1/exp(cc)) = beta*(1/exp(cc(+1)))*(1+exp(rr(+1))-delta);
psi*exp(cc)/(1-exp(ll)) = exp(ww);
end;