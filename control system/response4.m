% exponential Response of transfer function 
clc;
clear;
close all;
n1=[1 5];
d1=[1 2 3 5];
sys=tf(n1,d1);
printsys(n1,d1);
t=0:0.15:9;
x=exp(-0.2*t);
lsim(sys,x,t);
