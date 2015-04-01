x0=[154843527.6 0.033877 0 0 4530659323];
for i=1:3000
    finalth=i*0.001;
    thspan=[finalth-0.001,finalth];
    [theta,allx]=ode45(@newlagrange,thspan,x0);
    dlmwrite('x50.txt',allx,'-append','precision',12);
    dlmwrite('th50.txt',theta,'-append','precision',12);
    x0=[allx(end,1),allx(end,2),allx(end,3),allx(end,4),allx(end,5)];
end
