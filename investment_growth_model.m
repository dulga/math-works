function [a,b,r2]= investment_growth_model(time,balance)
n=length(time);
a1=(n*sum(time.*log(balance))-sum(time)*sum(log(balance)))/(n*sum(time.^2)-sum(time)^2);
a0= mean(log(balance))-a1*mean(time);

a=exp(a0);
b=a1;

st=sum((balance-mean(balance)).^2);
sr=sum((balance-(a*exp(b*time))).^2);
r2=(st-sr)/st; %coefficient of determination (R^2) is r2
end