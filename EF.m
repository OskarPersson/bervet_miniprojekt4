%%blablabla







weight = 70;
speed = 0;
acc = 9.8;

distance = 0;
tid = 0;
steps = 0.1;

result = [0 0];

%val1 = EFcalc([0.98 10.78], 0.1, weight);
%val2 = EFcalc(val1, 0.1, weight);
%disp(val1);
%disp(val2);
resultvec1 = [];
resultvec2 = [];
timevec = [];
distvec = [0];
firstloop = 1;
loops = 0;
while (distance < 150 && result(1) ~= -Inf) %&& speed > 0
loops = loops+1;
result = EFcalc([speed acc], steps, weight);
disp('result:');
disp(result);
resultvec1 = [resultvec1 result(1)];
resultvec2 = [resultvec2 result(2)];

acc = result(2);
if speed >= 55
   acc = 0; 
end
speed = result(1);


tid = tid + steps;
timevec = [timevec tid];
disp(['distance before: ' num2str(distance)]);
    if(firstloop ~= 1)
        distance = distanceCalc(resultvec1, loops, tid);
        distvec = [distvec distance];
    end
disp(['distance after: ' num2str(distance)]);    
firstloop = 0;    
end 

subplot(3, 1, 1);
plot(timevec, resultvec1);

subplot(3, 1, 2);
plot(timevec, resultvec2);

subplot(3, 1, 3);
plot(timevec, distvec);

%plot(resultvec2, timevec);

disp('speed');
disp(speed);

disp('acc');
disp(acc);

disp('distance');
disp(distance);

disp('time');
disp(tid);

%%Alldeles för höga värden på farten och acc just nu... KOLLA PÅ DET!

%%while (acc < 0)
    
%%calculate next values with (6)

%%end

%%Maybe save distance values and time in a vect-vect and then plot!! 
