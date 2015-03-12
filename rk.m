h = 0.01;
max = 3500;

x = 0;
y = 0;

xvec = [0];
yvec = [0];

distvec = [0];

for i = 1 : max
    if distvec(i) < 150
        k1 = func5(x,y);
        k2 = func5(x+h/2,y+h*k1/2);
        k3 = func5(x+h/2,y+h*k2/2);
        k4 = func5(x+h,y+h*k3);
    
    else
        k1 = func6(x,y, distvec(i));
        k2 = func6(x+h/2,y+h*k1/2, distvec(i));
        k3 = func6(x+h/2,y+h*k2/2, distvec(i));
        k4 = func6(x+h,y+h*k3, distvec(i));
    end
    
    k = (k1+2*k2+2*k3+k4)/6;
    y = y + h*k;
    x = x + h;
    
    xvec = [xvec x];
    yvec = [yvec y];
    
    distvec = [distvec ((sum(yvec)/length(yvec)) * x)];
end

plot(xvec, distvec);