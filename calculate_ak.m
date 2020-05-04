
% coef_coef = [6.49122382e-12;-2.74255114e-07;
%             8.88514136e-03;-5.33630551e-07];
coef_coef = zeros(4,1);
coef = readmatrix('coef_mat.csv');
% all_data = importfile3(filename4);
for i = 1:4
    coef_coef(i)= (coef(27,i)-coef(1,i))/26;
end
a = zeros(27,4);
a(1,:) = coef(1,:);
for i = 2:27
    a(i,:)=a(i-1,:)+coef_coef';
end

filename4 = 'grouped_data.csv';
grouped_data = importfile4(filename4);

x1 = table2array(grouped_data(:,10));
x2 = table2array(grouped_data(:,2));
x3 = table2array(grouped_data(:,5));
x4 = table2array(grouped_data(:,6));
x = [x1,x2,x3,x4]';
t = 20;
y = a(t,:)*x;
% y = coef(t,:)*x;
z = table2array(grouped_data(:,9))';
error = (z-y)./z;
mean_error = mean((z-y)./z);

time = linspace(1,27,27);
% figure(1)
% plot(a(:,1),time);
% figure(2)
% plot(a(:,2),time);
% figure(3)
% plot(a(:,3),time);
% plot(a,time)
plot(error)
grid on