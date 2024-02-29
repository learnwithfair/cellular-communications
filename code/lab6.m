clc;
clear all;
close all;
%R=cell radius, N=total no of channel, n=number of cell per cluster
R=1.387;
n=4;
N=60;
%A=Area covered per cell
A=2.598*R^2;
%c=number of channel per cell
c=N/4;
disp('(a)');
traffic_intensity=9;
load_per_user=0.029;
number_of_users = floor((traffic_intensity/load_per_user)/A)
%b
disp('(b)');
lamda=1;
t=10;
H=(load_per_user/lamda)*3600;
the_probability_to_wait=exp(-(c-traffic_intensity)*t/H)*100
%c
disp('(c)');
p=5/100;
probability_of_delay_more_than_10sec = p*the_probability_to_wait