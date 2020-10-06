NTr=round(.7*N); 
M=N-NTr; 
te=data(NTr+1:N,:);
printf("#     b   E   k  Ete\n");
printf("#------- --- --- ---\n");
for b=[.1 1 10 100 1000 10000 100000]
  [w,E,k]=perceptron(data(1:NTr,:),b); 
  rl=zeros(M,1);
for n=1:M 
  rl(n)=ll(linmach(w,[1 te(n,1:D)]')); 
end
[nerr m]=confus(te(:,L),rl);
printf("%8.1f %3d %3d %3d\n",b,E,k,nerr);
end