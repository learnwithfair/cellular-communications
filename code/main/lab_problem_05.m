clc;
clear all;
close all;
% Question (a)
total_city_coverage_area = 1300;
radius = 4;
a = (2.591*radius^2);                   % Each cell covers 
Nc = round(total_city_coverage_area/a); % Total number of cells, Nc
fprintf('(a) Total number of cells, Nc : %d cells\n\n',Nc);

% Question (b)
allocated_spectrum = 40000;             % Allocated spectrum=40MHz,
channel_width = 60;                     % Full duplex channel BW = 60KHz
N = 7;
C = round(allocated_spectrum/(channel_width*N)); 
fprintf('(b) The total number of channels per cell, C : %d channels/cell\n\n',C);

% Question (c)
A = 84;                                % C=95, GOS=0.02 from erlang B chart
fprintf('(c) Traffic intensity per cell, A : %d Erlangs/cell\n\n',A);

% Question (d)
max_c_t = floor(Nc*A);                 % Number of Cell, Nc & Traffic Intensity per cell, A
fprintf('(d) Maximum carried traffic : %d Erlangs\n\n',max_c_t);

% Question (e)
U = round(max_c_t/0.03);               % Traffic per user, Au = 0.03
fprintf('(e) Total number of users, U : %d users\n\n',U);

% Question (f)
no_of_channel = floor(allocated_spectrum/channel_width);
no_of_m_p_c = floor(U/no_of_channel);  % Number of mobiles per channel 
fprintf('(f) Number of mobiles per channel : %d mobiles/channel\n\n',no_of_m_p_c);

% Question (g)
g = C*Nc;
fprintf('(g) Theoretical maximum no of user that could be served : %d users\n\n',g);
