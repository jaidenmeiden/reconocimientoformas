load("videos");

[N,L]=size(data); D=L-1;
ll=unique(data(:,L)); C=numel(ll);
rand("seed",23); data=data(randperm(N),:);
[w,E,k]=perceptron(data(1:round(.7*N),:));
save_precision(4); 

save("perceptronVideos_weight","w");
output_precision(2); w