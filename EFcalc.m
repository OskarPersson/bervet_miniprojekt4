function resultvec = EFcalc(vect, step, weight)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    function result = func(X, weight)
        result = (686-0.227*X)/weight;
    end

resultvec = vect + step * [vect(2) (func(vect(1), weight))];


end

