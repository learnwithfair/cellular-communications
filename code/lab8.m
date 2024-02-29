clc;
clear all;
close all;
T_R_field = 5;
E_field = 10^(-3);
f = 900;
do=1000;
lamda=(3*10^8)/(900*10^6);
disp('(a)')
length_of_antenna = lamda/4
gain = (10^(2.55/10))
disp('(b)')
ht=50;
hr=1.5;
d=5*10^3;
Er_d = (2*E_field*do*2*3.1416*ht*hr)/(lamda*d^2)
Ae=(gain*lamda^2)/(4*3.1416);
pr_d=((Er_d^2)/(120*3.1416))*Ae
received_power_at_5km_distance = 10*log10(pr_d)