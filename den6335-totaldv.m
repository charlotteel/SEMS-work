function totaldv = deltav(mu_planet,rcirc,rp)
mu_sun = 124803658042;
mu_earth = 414250;
rcirce = 141999750;
rpe = 6658;
alti = 1166;
vcirc = (mu_earth/(rpe+alti))^0.5;
vearth = (mu_sun/rcirce)^0.5;
a_t = (rcirce + rcirc)/2;
v_t = (2*((mu_sun/rcirce) - (mu_sun/(2*a_t))))^0.5;
v_inf = abs(vearth - v_t);
v_p = (2*(((v_inf^2)/2) + (mu_earth/(rpe+alti))))^0.5;
deltav1 = abs(v_p - vcirc)
v_t2 = (2*((mu_sun/rcirc) - (mu_sun/(2*a_t))))^0.5;
v_planet = (mu_sun/rcirc)^0.5;
v_inf2 = abs(v_t2 - v_planet);
r_sc = 1.6*rp;
v_sc = (mu_planet/r_sc)^0.5;
v_p2 = (2*((0.5*(v_inf2^2)) + (mu_planet/r_sc)))^0.5;
deltav2 = abs(v_p2 - v_sc)
totaldeltav = deltav1 + deltav2
end