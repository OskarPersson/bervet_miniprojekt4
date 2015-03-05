%%blablabla







weight = 70;
speed = 0;
acc = 0;

distance = 0;
time = 0;
steps = 0.1;



%val1 = EFcalc([0.98 10.78], 0.1, weight);
%val2 = EFcalc(val1, 0.1, weight);
%disp(val1);
%disp(val2);
resultvec1 = [];
firstloop = 1;
while (distance < 150) %&& speed > 0

result = EFcalc([speed acc], steps, weight);
resultvec1 = [result resultvec1];
speed = speed + result(1);
acc = acc + result(2);
time = time + steps;
    if(firstloop ~= 1)
        distance = distanceCalc(speed, steps, time);
    end
firstloop = 0;    
end 

disp('speed');
disp(speed);

disp('acc');
disp(acc);

disp('distance');
disp(distance);

disp('time');
disp(time);

%%Alldeles för höga värden på farten och acc just nu... KOLLA PÅ DET!

%%while (acc < 0)
    
%%calculate next values with (6)

%%end

%%Maybe save distance values and time in a vect-vect and then plot!! 
