function [ts]=TSS(Y)
[x,y]=size(Y);
moyenneY=0;
ts=0;
for i= 1: x
 moyenneY=moyenneY+Y(i,1); 
end
moyenneY=moyenneY/x;
for j= 1 : x
ts= ts + (Y(j,1)-moyenneY)*(Y(j,1)-moyenneY);
end
end