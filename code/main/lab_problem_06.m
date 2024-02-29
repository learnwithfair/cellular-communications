clc;
clear all;
close all;
pt = 50;         % Transmitted power
fc = 900;        % Carrier frequency
gt = 1;          % Transmitter antenna gain
gr = 1;          % Receiever antenna gain
d = 100;         % Free space distance
L =1;
lambda = (3*10e8)/(fc*10e6);  %lambda=c/f=1/3

% Quesstion (a)
tr_dBm = ceil(10*log10(pt*1000));
fprintf('(a) Transmitter power,Pt in dBm: %d dBm\n\n',tr_dBm);

% Quesstion (b)
tr_dBW = ceil(10*log10(pt*1));
fprintf('(b) Transmitter power,Pt in dBW: %d dBW\n\n',tr_dBW);

% Quesstion (c)
c = ((pt*gt*gr*(lambda)^2)/((4*3.1416)^2*d^2*L))*1000;   
Pr = 10*log10(c);
fprintf('(c) Received power,Pr in dBm: %7.2f dBm\n\n',Pr);

% Quesstion (d)
d = Pr + (20*log10(d/10000));
fprintf('(d) Received power,Pr at 10km in dBm: %7.2f dBm\n\n',d);
