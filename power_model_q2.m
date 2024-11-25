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

%Call the function file
[a,b,r2]= power_model(x,y); 
 
t=min(x):0.001:max(x);
P_model=a*t.^b;
plot(x,y,'r*',t,P_model);
xlabel('Diameter(x)');
ylabel('Weight(y)');
title(' Relationship between the diameter(x) of a circular object and its weight(y)');
legend('Original Data','Fitted Curve','Location','Northeast');

%display the values
fprintf('\na:%.4f\nb:%.4f\n ',a,b);