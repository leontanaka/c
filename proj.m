clear
close all

% filename1 = 'us.csv';
% filename2 = 'hospital_beds_USA_v1.csv';
% filename3 = 'us-states.csv';
filename4 = 'all_data.csv';

% us_data = importfile(filename1);
% hosp_data = importfile1(filename2);
% states_data = importfile2(filename3);
all_data = importfile3(filename4);

x1 = table2array(all_data(:,2));
x2 = table2array(all_data(:,5));
x3 = table2array(all_data(:,6));

y = x1*1.82706854e-06+x2*1.43087567e-01+x3*-4.87290895e-06;
z = table2array(all_data(:,7));

error = (z-y)./z;
