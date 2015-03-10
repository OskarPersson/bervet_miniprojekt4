function result = EFcalc(X, weight)
    result = (686-(0.227.*sign(X.^2)))./weight;
end
