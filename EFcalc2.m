function result = EFcalc2(X, weight, distance)
    result = (686-(0.227.*sign(X.^2)) - 10*(distance - 150))/weight;
end
