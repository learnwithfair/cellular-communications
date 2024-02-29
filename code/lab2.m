clc;
clear all;
close all;
R_SI=15;
io=6;
n=[4 3];
for a=1:2
    N=7;
    Q=sqrt(3*N);
    disp('n: ')
    n(a)
    disp('Frequency reuse factor: ')
    Q
    SI=10*(log10((1/io)*(Q^n(a))));
    disp('Signal to interference ratio: ')
    SI
    if(SI<R_SI)
        i=2; j=2;
        N= (i^2)+(i*j)+(j^2);
        Q=sqrt(3*N);
        disp('n: ')
        n(a)
        disp('Frequency reuse factor: ')
        Q
        SI1=10*(log10((1/io)*(Q^n(a))));
        disp('Signal to interference ratio: ')
        SI1
    end
end