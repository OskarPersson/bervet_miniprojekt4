h = 0.01;
top = 3500;

x = 0;
y = 0;

weight = 92;
distvec = [0];
%while(max(distvec) < 200)
disp(weight);
disp(max(distvec));
xvec = [0];
yvec = [0];
distvec = [0];
for i = 1 : top
    if distvec(i) < 48
        k1 = func5(x,y, weight);
        k2 = func5(x+h/2,y+h*k1/2, weight);
        k3 = func5(x+h/2,y+h*k2/2, weight);
        k4 = func5(x+h,y+h*k3, weight);
    
    else
        k1 = func6(x,y, distvec(i), weight);
        k2 = func6(x+h/2,y+h*k1/2, distvec(i), weight);
        k3 = func6(x+h/2,y+h*k2/2, distvec(i), weight);
        k4 = func6(x+h,y+h*k3, distvec(i), weight);
    end
    
    k = (k1+2*k2+2*k3+k4)/6;
    y = y + h*k;
    x = x + h;
    
    xvec = [xvec x];
    yvec = [yvec y];
    
    distvec = [distvec ((sum(yvec)/length(yvec)) * x)];
end
%weight = weight + 0.01;
%end

disp(weight - 0.01);

Maxvalue = max(distvec);

plot(xvec, distvec);