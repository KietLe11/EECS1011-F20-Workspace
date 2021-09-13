angle1=30;
angle2=45;
angle3=60;
g=9.81;
v=25;
y=3.5;

%ANGLE 1
d1=((v*cosd(angle1))/g)*(v*sind(angle1)+sqrt((v*sind(angle1))^2+2*g*y));
x=linspace(0,d1,200);
x=transpose(x);

y1= x*tand(angle1)-0.5*(((x.^2)*g)/((v*cosd(angle1))^2))+y;

plot(x,y1);
hold on;

%ANGLE 2
d1=((v*cosd(angle2))/g)*(v*sind(angle2)+sqrt((v*sind(angle2))^2+2*g*y));
x=linspace(0,d1,200);
x=transpose(x);

y2= x*tand(angle2)-0.5*(((x.^2)*g)/((v*cosd(angle2))^2))+y;

plot(x,y2);

%ANGLE 3
d1=((v*cosd(angle3))/g)*(v*sind(angle3)+sqrt((v*sind(angle3))^2+2*g*y));
x=linspace(0,d1,200);
x=transpose(x);

y3= x*tand(angle3)-0.5*(((x.^2)*g)/((v*cosd(angle3))^2))+y;

plot(x,y3);

xlabel('x (meters)');
ylabel('y (meters)');
title('Projectile Trajectories at Three Launches');
legend('θ=30°','θ=45°','θ=60°');
grid ON;

hold off;







