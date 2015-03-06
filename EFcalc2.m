function res3 = EFcalc2(vect, step, weight, distance)
%disp('---vect---');
%disp(vect);
%disp('----------');
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    function result = func2(X, weight, distance)
        disp(['X: ' num2str(X)]);
        
        res1 = 686-(0.227.*(X.^2));
        res2 = 10*(distance - 150);
        result = (res1 - res2)/weight;
        %result = (686-(0.227.*(X.^2)) - 10*(distance - 150))/weight;
    end

resultvec1 = [vect(2) (func2(vect(1), weight, distance))];
%disp('res1:');
%disp(resultvec1);
res2 = (step .* resultvec1);
%disp('res2:');
%disp(res2);
%disp('vect:');
%disp(vect);
res3 = vect + res2;
%disp('res3:');
%disp(res3);

disp('---res3---');
disp(res3);
disp('----------');


end

