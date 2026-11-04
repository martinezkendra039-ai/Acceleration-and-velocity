%Acceleration and velocity 
%Create the function handle for the acceleration
acc=@(t)7*t.*sin(5*t);
%use a for loop with t values ranging from 0 to 10 seconds with increment
%of 0.02
count=1;
for t=0:0.02:10
    vel(count)=integral(acc,0,t);
    count=count+1;
end
t=0:0.02:10;
%plot the velocity vs time
plot(t,vel)
xlabel('Time')
ylabel('Velocity')
title('plot of velocity vs time')