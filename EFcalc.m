function res3 = EFcalc(vect, step, weight)
%disp('---vect---');
%disp(vect);
%disp('----------');
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    function result = func(X, weight)
        %disp(['X: ' num2str(X)]);
        
        result = (686-(0.227.*(X.^2)))./weight;
    end

resultvec1 = [vect(2) (func(vect(1), weight))];
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

%disp('---res3---');
%disp(res3);
%disp('----------');


end

