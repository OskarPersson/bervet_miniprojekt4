max = 50000
weight = 70;
timevec = 1:max;
speedvec = [0];
distvec = [0]
step = 0.001;

[speedvec, distvec] = ode45(@func5, [0, 50], 0);

%subplot(3,1,1);
%plot(timevec, speedvec);
%subplot(3,1,2);
%plot(timevec, accvec);
%subplot(3,1,3);
%plot(timevec, distvec);