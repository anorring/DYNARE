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
Linearized, with just the equation for y_t for illustration. 
Repeating the name of a variable means difference from steady state.
*/

model (linear); 
yy l=yy - ll; 
end;