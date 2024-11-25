function [a3,b3,r2_exp]= exponential_model_Q3(x,y)
n=length(x);
a1=(n*sum(x.*log(y))-sum(x)*sum(log(y)))/(n*sum(x.^2)-sum(x)^2);
a0= mean(log(y))-a1*mean(x);

a3=exp(a0);
b3=a1;

st=sum((y-mean(y)).^2);
sr=sum((y-(a3*exp(b3*x))).^2);
r2_exp=(st-sr)/st; %coefficient of determination (R^2) is r2
end