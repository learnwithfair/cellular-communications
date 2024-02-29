clc;
clear all;
close all;
blocking_p= 2/100;
lamda=2;
H=3/60;
Au=lamda*H;
disp('For system A')
channel_a=19;
cell_A=394;
A=12;
disp('Number of users in System A');
Ua=A/Au
disp('Total number of subscriber in system A');
subscriber_A=Ua*cell_A;
disp(subscriber_A);
percentage_market_penetration_for_A=(subscriber_A/2000000)*100

disp('For system B')
channel_b=57;
cell_B=98;
Ab=45;
disp('Number of users in System B');
Ub=Ab/Au
disp('Total number of subscriber in system B');
subscriber_B=Ub*cell_B;
disp(subscriber_B);
percentage_market_penetration_for_B=(subscriber_B/2000000)*100

disp('For system C')
channel_c=100;
cell_C=49;
Ac=88;
disp('Number of users in System C');
Uc=Ac/Au
disp('Total number of subscriber in system C');
subscriber_C=Uc*cell_C;
disp(subscriber_C);
percentage_market_penetration_for_C=(subscriber_C/2000000)*100
Total_number_of_subscriber= subscriber_A+subscriber_B+subscriber_C
Market_penetration_for_three_system= (Total_number_of_subscriber/2000000)*100
