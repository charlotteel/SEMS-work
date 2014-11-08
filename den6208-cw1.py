rho = 998.2
mu = 0.001002
cp = 4183
k = 0.603
D = 0.007
# h = 285714/deltaT so take:
h = 285714
# U = unknown so omit for now


nusselt = (h*D)/k
# reynolds = (rho*U*D)/mu so edit into:
reynolds = (rho*D)/mu
prandtl = (cp*mu)/k

print "Nu = %f / deltaT" % nusselt
print "Re = %f * U" % reynolds
print "Pr = %f" % prandtl

print "Nu = 0.023 * (Re**0.8) * (Pr**0.3)"

val = 0.023*(reynolds**0.8)*(prandtl**0.3)

print "%f / deltaT = %f * (U**0.8)" % (nusselt, val)
print "deltaT = %f / (U**0.8)" % (nusselt/val)

# deltaT = 73.47 - 0.5*T2

print "146.94 - T2 = %f / (U**0.8)" % (2*nusselt/val)
print "T2 = 146.94 - (%f / (U**0.8))" % (2*nusselt/val)
