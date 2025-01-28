clc
clear cll
f=[-50;-120];
A=[7000 2000;10 30];
b=[700000;1200];
Aeq=[1 1];
beq=[100];
lb=[0;0];
ub=[inf;inf];
options = optimoptions('linprog','Algorithm','interior-point');
x=linprog(f,A,b,Aeq,beq,lb,ub,[],options);
x
%'dual-simplex',  'interior-point-legacy',  or  'interior-point'.