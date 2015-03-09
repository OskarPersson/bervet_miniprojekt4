%%blablabla

weight = 70;
speed = 0;
acc = 9.8;

distance = 0;
tid = 0;
steps = 0.001;

result = [0 0];

distv = [];

[timev speedv] = ode45(@func5, [0, 150], 0);



for i = 1:length(speedv)
    speedv2 = [speedv2 speedv(i)];
    distv = [distv (sum(speedv2)/length(speedv2))*timev(i)];
    
end

subplot(2, 1, 1);
plot(timev, speedv);

subplot(2, 1, 2);
plot(timev, distv);

