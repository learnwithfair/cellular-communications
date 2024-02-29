clc;
clear all;
close all;
bw=33000;
schannel_bw=25;
disp('Channel Bandwidth..');
dup_ch_bw=2*schannel_bw;
t_ch=(bw/dup_ch_bw);
disp(dup_ch_bw);
disp('Total available channel');
disp(t_ch);
cc_bw=1000;
t_cc=cc_bw/dup_ch_bw;
disp('Total control channel');
disp(t_cc);
N=[4 7 12];
for i=1:3
    ch=t_ch/N(i);
    ch_per_cell=round(ch);
    disp('Channel per cell')
    disp(N(i));
    disp(ch_per_cell);
    c=(t_cc/N(i));
    cc=round(c);
    v=(t_ch-t_cc)/N(i);
    vc=round(v);
    disp('Control channel and voice channel are..');
    disp(cc);
    disp(vc);
end