clc; clear; 
mgl=5;I=1;J=1;k=0.08;%Constants
x1ss = pi/3; % y des = x1ss = theta 1 desired at steady state
x2ss = 0;
x3ss = mgl/k*sin(x1ss) + x1ss;
x4ss = 0;
uss = mgl*sin(x1ss);

 % Placing initial conditions for x before the system starts moving
% the arm
 Xss = [x1ss x2ss x3ss x4ss];
 X_Initial_Conditions = [x1ss x2ss+0.1 x3ss x4ss+0.1]*0.95;
 Delta_X_Initial_Conditions = X_Initial_Conditions - Xss;

 A = zeros(4,4);
 A(1,2) = 1;
 A(2,1) = -mgl/I*cos(x1ss) - k/I; A(2,3) = k/I;
 A(3,4) = 1;
 A(4,1) = k/J; A(4,3) = -k/J;

 B = [0 0 0 1/J]'; C = eye(4); D = zeros(4,1);

 lambda_desired = [-12-1i*0.2 -12+1i*0.2 -7-1i*0.2 -7+1i*0.2]; 
 F = place(A,B,lambda_desired);

 
 
 
  