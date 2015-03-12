function result = axcalc2(X, weight, distance)
    result = (686-(0.227.*sign(X)*(X.^2)) - 10*(distance - 48))/weight;
end
