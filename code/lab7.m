clc;
clear all;
close all;
%pt=Transmitted power, fc=carrier frequency in MHz
pt=50;
fc=900;
gt=1;
gr=1;
d=100;
do=10*10^3;
disp('(a)')
Transmitted_power_in_dBm= ceil(10*log10(50*10^3))
disp('(b)')
Transmitted_power_in_dbW= ceil(10*log10(50))
lamda=(3*10^8)/(900*10^6);
pr_mw=((pt*gt*gr*(lamda^2))/(((4*3.1416)^2)*(d^2)*1))*1000;
received_power_in_dbm = 10*log10(pr_mw)
pr_10km = received_power_in_dbm+(20*log10(d/do))