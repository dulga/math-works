clc;clear all;close all;
%Ask user to input Data
x=input('Enter independent data: ');
y=input('Enter dependent data: ');
n1=length(x);
n2=length(y);
while n1~=n2
    disp('Invalid Matrix Size');
    x=input('Enter independent data: ');
    y=input('Enter dependent data: ');
end
%call the function Files
[a2,b2,r2_pow]= power_model_Q3(x,y);
[a3,b3,r2_exp]= exponential_model_Q3(x,y);
t=min(x):0.001:max(x);
P_model=a2*t.^b2;
E_model=a3*exp(b3*t);
plot(x,y,'r*',t,P_model,t,E_model);
xlabel('Time(in hours)');
ylabel('Population(in millions)');
title('The growth of bacterial culture');
legend('Original Data','Power model curve','Exponential model curve','Location','Northeast');
%Calculate the a2,a3,b2,b3,r2_exp,r2_pow
fprintf('\na2:%.4f\na3:%.4f\nb2:%.4f\nb3:%.4f\n',a2,a3,b2,b3);
fprintf('\nCoefficient of determination(R^2) of power model fit:%.4f\n',r2_pow);
fprintf('Coefficient of determination(R^2) of exponential model fit:%.4f',r2_exp);