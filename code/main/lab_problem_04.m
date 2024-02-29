clc;
clear all;
close all;
blocking_probability = 2/100;    % GOS
population = 2000000;
Au = (2/60)*3;                   % Traffic intensity per user
disp('For system A:');
disp('--------------');
C1 = 19;                         % Number of channels per cell 
A1 = 12;                         % Total traffic intensity from erlang B chart, GOS=0.02, C=19
U1 = A1/Au;                      % Total number of user
Aa = U1*394;                     % Total Number of Subscriber
percentage_A = (Aa/population)*100;
fprintf('Total number of users for system A: %d\n',Aa);
fprintf('Percentage market penetration for System A: %7.3f%% \n',percentage_A);

fprintf('\n\nFor system B:\n');
disp('--------------');
C2 = 57;                         % Number of channels per cell 
A2 = 45;                         % Total traffic intensity from erlang B chart, GOS=0.02, C=57
U2 = A2/Au;                      % Total number of user
Bb = U2*98;                      % Total Number of Subscriber
percentage_B = (Bb/population)*100;

fprintf('Total number of users for system B: %d\n',Bb);
fprintf('Percentage market penetration for System B: %7.3f%% \n',percentage_B);

fprintf('\n\nFor system C:\n');
disp('--------------');
C3 = 100;                         % Number of channels per cell 
A3 = 88;                          % Total traffic intensity from erlang B chart, GOS=0.02, C=100
U3 = A3/Au;                       % Total number of user
Cc = U3*49;                       % Total Number of Subscriber
percentage_C = (Cc/2000000)*100;

fprintf('Total number of users for system C: %d\n',Cc);
fprintf('Percentage market penetration for System C: %7.3f%% \n',percentage_C);

fprintf('\n\nFor all three systems:\n');
disp('--------------------');

T = Aa+Bb+Cc; % Total Subscribers
percentage_T = (T/2000000)*100;

fprintf('Total number of users of all three system: %d\n',T);
fprintf('Percentage market penetration for all three System: %7.3f%% \n',percentage_T);
