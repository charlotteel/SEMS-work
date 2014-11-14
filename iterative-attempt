import numpy as np
x = np.arange(1,2,0.001)
y = 146.94 - (135.72/(x**0.8))
z = 39.1/x + 20

for i in range(0,len(y)):
    for j in range(0,len(z)):
        if abs(y[i]-z[j]) < 0.0001:
            print "U = %f" % x[i]
            print y[i]
            print z[j]
