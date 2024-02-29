clc;
clear all;
close all;
fc = 1.8;        % Frequency in GHz
hb = 20;         % Effective transmitter (base station) antenna height in meter

d = (sqrt(20^2+30^2))/1000;        % T-R separation distance in kilometer

% Path Loss in a high-rise urban areas
Lp = 135.41+(12.49*log10(fc))-(4.99*log10(hb))+((46.84-2.34*log10(hb))*log10(d));
fprintf('The path loss in a high-rise urban areas, Lp = %7.2f dB\n',Lp);