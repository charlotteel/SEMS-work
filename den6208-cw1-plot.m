x = -2:0.01:2;
y = 146.94 - (135.72./(x.^0.8));
z = (39.1./x)+20;
plot(x,y)
hold on
plot(x,z)