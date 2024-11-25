function [a2,b2,r2_pow]= power_model_Q3(x,y)
n=length(x);
a1=(n*sum(log(x).*log(y))-sum(log(x))*sum(log(y)))/(n*sum(log(x).^2)-sum(log(x))^2);
a0= mean(log(y))-a1*mean(log(x));

a2=exp(a0);
b2=a1;

st=sum((y-mean(y)).^2);
sr=sum((y-(a2*x.^(b2))).^2);
r2_pow=(st-sr)/st; %coefficient of determination (R^2) is r2
end