function [residual, g1, g2, g3] = as2007_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(8, 1);
T29 = 1/(1+params(8)/400);
lhs =y(6);
rhs =y(14)+y(8)-y(15)-1/params(1)*(y(7)-y(13)-y(16));
residual(1)= lhs-rhs;
lhs =y(5);
rhs =y(13)*T29+params(2)*(y(6)-y(8));
residual(2)= lhs-rhs;
lhs =y(7);
rhs =params(5)*y(2)+y(5)*(1-params(5))*params(3)+(y(6)-y(8))*(1-params(5))*params(4)+x(it_, 1)*params(11);
residual(3)= lhs-rhs;
lhs =y(8);
rhs =params(6)*y(3)+x(it_, 2)*params(12);
residual(4)= lhs-rhs;
lhs =y(9);
rhs =params(7)*y(4)+x(it_, 3)*params(13);
residual(5)= lhs-rhs;
lhs =y(10);
rhs =params(10)+100*(y(9)+y(6)-y(1));
residual(6)= lhs-rhs;
lhs =y(11);
rhs =params(9)+y(5)*400;
residual(7)= lhs-rhs;
lhs =y(12);
rhs =params(8)+params(9)+params(10)*4+y(7)*400;
residual(8)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(8, 19);

  %
  % Jacobian matrix
  %

  g1(1,13)=(-(1/params(1)));
  g1(1,6)=1;
  g1(1,14)=(-1);
  g1(1,7)=1/params(1);
  g1(1,8)=(-1);
  g1(1,15)=1;
  g1(1,16)=(-(1/params(1)));
  g1(2,5)=1;
  g1(2,13)=(-T29);
  g1(2,6)=(-params(2));
  g1(2,8)=params(2);
  g1(3,5)=(-((1-params(5))*params(3)));
  g1(3,6)=(-((1-params(5))*params(4)));
  g1(3,2)=(-params(5));
  g1(3,7)=1;
  g1(3,8)=(1-params(5))*params(4);
  g1(3,17)=(-params(11));
  g1(4,3)=(-params(6));
  g1(4,8)=1;
  g1(4,18)=(-params(12));
  g1(5,4)=(-params(7));
  g1(5,9)=1;
  g1(5,19)=(-params(13));
  g1(6,1)=100;
  g1(6,6)=(-100);
  g1(6,9)=(-100);
  g1(6,10)=1;
  g1(7,5)=(-400);
  g1(7,11)=1;
  g1(8,7)=(-400);
  g1(8,12)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],8,361);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],8,6859);
end
end
