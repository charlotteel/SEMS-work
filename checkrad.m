function arrvals = checkrad(array,rad);
% uses a, e, theta values from results array to check for arrival at a
% specified radius
for i=1:length(array)
    a=array(i,2);
    e=array(i,3);
    th=array(i,1);
    radius=(a*(1-(e^2)))/(1+(e*cos(th)));
    if radius >= rad
        arrvals=array(i,:);
        break
    end
end
end
