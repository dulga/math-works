function [a,b,r2]= diameter_circular_object(x,y)
n=length(x);
a1=(n*sum(log(x).*log(y))-sum(log(x))*sum(log(y)))/(n*sum(log(x).^2)-sum(log(x))^2);
a0= mean(log(y))-a1*mean(log(x));

a=exp(a0);
b=a1;

st=sum((y-mean(y)).^2);
sr=sum((y-(a*x.^(b))).^2);
r2=(st-sr)/st; %coefficient of determination (R^2) is r2
end