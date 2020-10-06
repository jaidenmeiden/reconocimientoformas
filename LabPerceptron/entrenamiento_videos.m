load("videos");
[N,L]=size(data); 
D=L-1;
ll=unique(data(:,L)); 
C=numel(ll);
[w,E,k]=perceptron(data(1:round(.7*N),:));
save_precision(4); 
save("perceptronVideos_weight","w");
output_precision(2);

load("perceptronVideos_weight");
for n=1:N; 
  xn=[1 data(n,1:D)]';
  for c=0:C-1
    printf("g_%d(x_%d)=%.0f \n",c,n,w(:,c+1)'*xn); 
  end
  printf("\n"); 
end

sw=std(w(2:L,:),1,2); # std -> Desviacion estandar
mw=mean(w(2:L,:),2); # mean -> Promedio
for c=0:C-1
  wc=w(2:L,c+1);
  pw=max(0,wc-mw);
  nw=-min(0,wc-mw);
end