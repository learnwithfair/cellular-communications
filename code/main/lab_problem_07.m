clc;
clear all;
close all;
hte = 100;       % Effective transmitter (base station) antenna height in meter
hre = 2;         % Effective receiver (mobile) antenna height in meter
fc = 900;        % Frequency in MHz
d = 4;           % T-R separation distance in kilometer

a_hre = (3.2*(log10(11.75*hre))^2)-4.97;               % The correction factor(using okumura-hata model)

% Path Loss
Lp = 69.55 + 26.16*log10(fc)-13.82*log10(hte)-a_hre+((44.9-6.55*log10(hte))*log10(d));      %path loss in large city
fprintf('The path loss in urban areas, Lp = %7.2f dB\n',Lp);