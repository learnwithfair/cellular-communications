clc;
clear all;
close all;

cluster_sizes = input('Enter Cluster Sizes with [ ] around Them :'); % Such as [4 7 12]

bw = 33000;                      % Total Bandwidth in kHz
sim_ch_bw = 25;                  % Simplex channel bandwidth in kHz
dup_ch_bw = 2*sim_ch_bw;         % Duplex channel bandwidth in kHz

t_ch = (bw/dup_ch_bw);           % Total available channels

cc_bw = 1000;                    % Control channel bandwidth
t_cc = cc_bw/dup_ch_bw;          % The number of available control 

for N = cluster_sizes
   
    % Calculate Desired Result For each system uses                  
    ch_per_cell = round(t_ch/N);       % Channels available per cell   
    vc = round((t_ch-t_cc)/N);         % Voice channel    
    cc = ch_per_cell-vc;               % Control channel
      
    % Result Print
    fprintf('For Cluster size N = %d\n',N);
    disp('-------------------------');
    fprintf('Total number of channels available per cell : %d channels\n',ch_per_cell);    
    fprintf('Voice Cannel : %d channels\n',vc);
    fprintf('Control Cannel : %d channels\n',cc);  
    fprintf('\n\n');
end

