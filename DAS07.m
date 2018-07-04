% Tarea #7 Daniel Aleman saborio 
clear all
clc
%funcion de transferencia final para G(S)= 1/(S+2)(S+3)*(s-19)/(s-10)
G=tf([1],[1 5 6])
num=[1.81]
den=[1 5 6 ]
%Respuesta a un escalon 
c=tf([1 num],[1 1])
H=series(c,G)
FC=feedback(H,1)
step(FC)
Ec=feedback (1,H)
step(Ec,10)
grid
title('Curva de error ante un escalon')
