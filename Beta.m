function [b]=Beta(X,Y)
xt=transpose(X);
xtx=xt*X;
xtxm=inv(xtx);
b=xtxm*xt*Y;
end