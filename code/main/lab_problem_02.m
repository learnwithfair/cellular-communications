clc;
clear all;
close all;
 
pl_exponent = input('Enter Path Loss exponent with [ ] around Them :');       % Such as [4 3]
r_si = 15;                                                        % Minimum Required S/I in dB
i0 = 6;                                                             % The number of Co-channel interfering cells
for n = pl_exponent     
    N = 7;                                                          % Cluster size
    
    % Calculate Result
    Q = sqrt(3*N);                                             % Frequency reuse factor   
    si = 10*(log10((Q^n)/i0));                           % Signal to interference ratio in dB
    
    % If First Condition is Not Satisfied
    if (si<r_si)
        i = 2; j = 2;
        N = (i*i)+(i*j)+(j*j);
        Q = sqrt(3*N);
        si = 10*(log10((Q^n)/i0));        
    end
    
    % Result Print
    fprintf('For Path Loss Exponent, n = %d\n',n);
    disp('---------------------------');
    fprintf('Signal-to-Noise interference Ratio S/I: %7.3f dB > %d dB\n',si,r_si); 
    fprintf('Hence, Cluster size N: %d\n',N);    
    fprintf('Frequency Reuse Factor Q: %7.3f\n',Q);    
    fprintf('\n\n');
end
