/* From User Guide 3.4.1, the stochastic case

Endogenous variables: add z
Exogenous variables: add e
Parameters: add rho
Parameter values
*/

var y c k i l y l w r z;
varexo e;

parameters beta psi delta alpha rho sigma epsilon; 

alpha = 0.33;
beta = 0.99;
delta = 0.023;
psi = 1.75;
rho = 0.95;
sigma = (0.007/(1-alpha));
epsilon = 10;