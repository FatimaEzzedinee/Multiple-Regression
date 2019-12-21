function [adj] = Adjr2(Y,Ychap,n,p)
tss=TSS(Y);
sse=SSE(Y,Ychap);
e=sse/(n-p-1);
p=tss/(n-1);
adj=1-e/p;
end