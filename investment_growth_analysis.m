clc; clear all; close all;
%Part (b)
time= [0 1 2 3 4 ];
balance=[5000 5300 5620 5950 6300];
%Call the function File
[a,b,r2]= investment_growth_model(time,balance);
%Displaying the exponential model equation in the form y=a*exp(b*t)
fprintf('Exponential model equation: balance=%.4f*exp%.4f*time\n',a,b);
t=min(time):0.001:max(time);
E_model=a*exp(b*t);

plot(time,balance,'*k',t,E_model);
axis([0 4 4000 7000]);
xlabel('Time(years)');
ylabel('Account Balance($)');
title('Growth of an investment in a savings account');
legend('Data Points','Fitted Graph','Location','Northeast');

%Part (c)
%Predict the account balance at 5yrs and 6yrs
balance_5=a*exp(b*5);
balance_6=a*exp(b*6);
%showing the results 
fprintf('\nIn 5yrs acc. balance is %0.4f($)\n And\nIn 6yrs acc. balance is %0.4f($)\n',balance_5,balance_6);

%Part(d)
fprintf('\nGrowth rate (b):%.4f',b);