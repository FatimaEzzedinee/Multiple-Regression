function [SS]=SSE(Y,Ychap)
e=Y-Ychap;
te=transpose(e);
SS=te*e;
end