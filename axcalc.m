function result = axcalc(X, weight)
    result = (686-(0.227.*sign(X)*(X.^2)))./weight;
end