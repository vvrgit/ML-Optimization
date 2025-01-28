clc
clear cll
f=[-40;-30];
A=[2 1;1 1];
b=[100;80];
Aeq=[];
beq=[];
lb=[0;0];
ub=[inf;inf];
options = optimoptions('linprog','Algorithm','interior-point');
x=linprog(f,A,b,Aeq,beq,lb,ub,[],options);
x
%'dual-simplex',  'interior-point-legacy',  or  'interior-point'.