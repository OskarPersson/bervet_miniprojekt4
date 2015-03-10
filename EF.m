weight = 70;
max = 50000;
timevec = 1:max;
distvec = [0];
speedvec = [0];
accvec = [0];
step = 0.001;

for i=2:max
    if (distvec(i-1)<=150)
        accvec(i) = axcalc(speedvec(i-1), 70);
        speedvec(i) = speedvec(i-1) + (accvec(i-1) * step);
        distvec(i) = distvec(i-1) + (step * speedvec(i-1));
    else
        accvec(i) = axcalc2(speedvec(i-1), 70, distvec(i-1));
        speedvec(i) = speedvec(i-1) + (accvec(i-1) * step);
        distvec(i) = distvec(i-1) + (step * speedvec(i-1));
    end
end

subplot(3,1,1);
plot(timevec, speedvec);
subplot(3,1,2);
plot(timevec, accvec);
subplot(3,1,3);
plot(timevec, distvec);