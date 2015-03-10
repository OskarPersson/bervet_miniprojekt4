function result = func5(~,y)
    if (y(1) > 150)
        accvec(i) = axcalc(speedvec(i-1), 70);
        speedvec(i) = speedvec(i-1) + (accvec(i-1) * step);
        distvec(i) = distvec(i-1) + (step * speedvec(i-1));
    else
        accvec(i) = axcalc2(speedvec(i-1), 70, distvec(i-1));
        speedvec(i) = speedvec(i-1) + (accvec(i-1) * step);
        distvec(i) = distvec(i-1) + (step * speedvec(i-1));
end