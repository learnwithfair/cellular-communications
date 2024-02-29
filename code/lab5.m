clc;
clear all;
close all;
area=1300;
radius=4;
each_cell_covers=floor(2.5981*radius^2);
disp('(a)');
number_of_cells=floor(area/each_cell_covers)
%b
allocated_spectrum=40000;
channel_width=60;
frequency_reuse_factor=7;
disp('(b)');
number_of_channel_per_cell=floor(allocated_spectrum/(channel_width*frequency_reuse_factor))
%c
disp('(c)');
traffic_intensity_per_cell=84
%d
disp('(d)');
maximum_carried_traffic=number_of_cells*traffic_intensity_per_cell
%e
traffic_per_user=0.03;
disp('(e)');
total_number_of_user = maximum_carried_traffic/traffic_per_user
%f
number_of_channels=number_of_channel_per_cell*frequency_reuse_factor;
disp('(f)');
number_of_mobile_per_channel=floor( total_number_of_user/number_of_channels)
%g
disp('(g)');
theoritical_maximum_number_of_user_that_could_be_served= number_of_cells*number_of_channel_per_cell