Y=[1;3;7;4];
X=[2,14,3;5,23,4;9,17,8;5,19,6];
Xx=[1,2,14,3;1,5,23,4;1,9,17,8;1,5,19,6];
beta=Beta(Xx,Y);
ychap=prediction(Xx,beta);

%iteration 1
% y=f(B)   Adjr2(Y,Ychap,n,p)
Xb=[1,2;1,5;1,9;1,5];
Xc=[1,14;1,23;1,17;1,19];
Xd=[1,3;1,4;1,8;1,6];

% y=f(B)   Adjr2(Y,Ychap,n,p)
betab=Beta(Xb,Y);
ychapb=prediction(Xb,betab);
[x1,y1]=size(Xb);
un=1;
adjr2b=Adjr2(Y,ychapb,x1,un);  %=0,9596

% y=f(C)   Adjr2(Y,Ychap,n,p)
betac=Beta(Xc,Y);
ychapc=prediction(Xc,betac);
[x1,y1]=size(Xc);
un=1;
adjr2c=Adjr2(Y,ychapc,x1,un) %=-0.4662

% y=f(D)   Adjr2(Y,Ychap,n,p)
betad=Beta(Xd,Y);
ychapd=prediction(Xd,betad);
[x1,y1]=size(Xd);
un=1;
adjr2d=Adjr2(Y,ychapd,x1,un)  %=0.9322

%adjr2 b est le plus grand donc

%iteration 2

%y=f(B,D);

Xbd=[1,2,3;1,5,4;1,9,8;1,5,6];
betaBd=Beta(Xbd,Y);
ychapd=prediction(Xbd,betaBd);
[x1,y1]=size(Xbd);
un=2;
adjr2bd=Adjr2(Y,ychapd,x1,un)  %=1  est le meilleur exemple

%y=f(B,C);

Xbc=[1,2,14;1,5,23;1,9,17;1,5,19];
betaBc=Beta(Xbc,Y);
ychapd=prediction(Xbc,betaBc);
[x1,y1]=size(Xbd);
un=2;
adjr2bc=Adjr2(Y,ychapd,x1,un)  %=0.942
s="f(B,D) best solution"


















