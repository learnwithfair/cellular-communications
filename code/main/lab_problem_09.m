clc;
clear all;
close all;
f = 900;        % Frequency in MHz
g = 2.55;       % Gain of antenna in dB

% Question (a)

gain =(10^(g/10));
lemda = (3*10^8)/(f*10^6);
L = lemda/4;            % Antenna Length
disp('For (a)');
disp('---------');
fprintf('Length of the antenna, L : %7.3f m\n',L);
fprintf('Gain of the antenna, G : %7.1f =%7.2fdB\n\n\n',gain,g);

disp('For (b)');
disp('---------');
d = 5000;               % T-R separation  distance
E0 = 10^-3;             % Electric-field      
d0 = 1000;              % Transmitter distance 
ht = 50;                % Transmitting antenna height, ht (m)
hr = 1.5;               % Receiving antenna height, hr (m)

Er_d = (2*E0*d0*2*3.1416*ht*hr)/(lemda*d^2); % Electric Field
Ae = (gain*lemda^2)/(4*3.1416);     % Effective Aperture
Pr_d = (Er_d^2/(120*3.1416))*Ae;    % The received power at a distance d 
Pr_dB = 10*log10(Pr_d);
fprintf('Electric Field, Er(d) : %7.9f v/m\n',Er_d);
fprintf('Effective Aperture, Ae : %7.3f m^2\n',Ae);
fprintf('Received power at 5km distance Er(5 km) : %7.3f dbW\n',Pr_dB);

