M=N-round(.7*N); 
te=data(N-M+1:N,:);
load("perceptronIris_weight"); 
rl=zeros(M,1);
for m=1:M
  tem=[1 te(m,1:D)]';
  rl(m)=ll(linmach(w,tem)); 
end
[nerr m]=confus(te(:,L),rl)

# Intervalo de confianza al 95 % para el error estimado
M=18;
output_precision(2);
m=nerr/M
s=sqrt(m*(1-m)/M)
r=1.96*s
printf("I=[%.3f, %.3f]\n",m-r,m+r);