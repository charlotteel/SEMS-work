x0=[154843527.6 0.033877 0 0];
for i=1:314
    finalth=i*0.01;
    thspan=[finalth-0.01,finalth];
    [theta,allx]=ode45(@lagrange,thspan,x0);
    dlmwrite('xvals.txt',allx,'-append','precision',10);
    dlmwrite('thvals.txt',theta,'-append','precision',10);
    x0=[allx(end,1),allx(end,2),allx(end,3),allx(end,4)];
end
