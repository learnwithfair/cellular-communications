clc;
clear all;
close all;
GOS = 0.5/100;      % Blocking probablity (0.5%)
Au = 0.1;           % Traffic intensity per user

% From Erlang B chart Offered Traffic Intensity, A
A = [0.005 1.13 3.96 11.1 80.9]; 
% Trunked Channels
C = [1 5 10 20 100];  

U = round(A/Au); % Total number of user

% Result Print
fprintf('Grade of Service, GOS = %7.3f\n',GOS);
disp('Trunked Channels, C :');
disp(C);
disp('From table 3.1, we obtain Offered Traffic Intensity, A For all Channels, C :');
disp(A);
disp('Total number of user, U'); 
disp('---------------------------');
disp(U);