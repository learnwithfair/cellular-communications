clc;
clear all;
close all;
R = 1.387;              % Cell Radius
n = 4;                  % No of cell
N = 60;                 % Total no of channel
area = round(2.5981*R^2);% Area covers per cell
C = N/4;                % No of channel per cell
A = 9;                  % Traffic intensity at c=15, GOS=0.05, Au=0.029  from erlang C chart

% Question (a)
Au = 0.029;             % Traffic per user
U = floor(A/Au);        % Number of user
U_per = round(U/area);  % Number of users per square km
fprintf('(a) Number of users per square km: %d users/sq km\n\n',U_per);

% Question (b)
lemda = 1 ;                 % lamda = 1 hour
H = (Au/lemda)*3600;        % Holding Time hour to second
Prb = (exp((-(C-A)*10)/H)); % t=10s,   C=15, A=9, H=104.4
fprintf('(b) The probability that a delayed call will have to wait: %7.2f%%\n\n',Prb*100);

% Question (c)
Prc = 0.05*Prb*100;          % 5% probability of delayed call
fprintf('(c) The probability that a call will be delayed : %7.2f%%\n\n',Prc);