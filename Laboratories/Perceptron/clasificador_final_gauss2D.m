load("gauss2D");
[w,E,k]=perceptron(data,1000); [E k]
save_precision(4);
save("perceptronGauss_weight","w");
output_precision(2); w