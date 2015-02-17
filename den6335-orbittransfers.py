def deltav1(mu_planet,rcirc,rp):
    # find deltav1
    mu_sun = 124803658042
    mu_earth = 414250
    rcirce = 141999750
    rpe = 6658
    alti = 1166
    vcirc = (mu_earth/(rpe+alti))**0.5
    vearth = (mu_sun/rcirce)**0.5
    a_t = (rcirce + rcirc)/2
    v_t = (2*((mu_sun/rcirce) - (mu_sun/(2*a_t))))**0.5
    v_inf = abs(vearth - v_t)
    v_p = (2*(((v_inf**2)/2) + (mu_earth/(rpe+alti))))**0.5
    deltav1 = abs(v_p - vcirc)
    return deltav1

def deltav2(mu_planet,rcirc,rp):
    # find deltav2
    mu_sun = 124803658042
    rcirce = 141999750
    a_t = (rcirce + rcirc)/2
    v_t = (2*((mu_sun/rcirc) - (mu_sun/(2*a_t))))**0.5
    v_planet = (mu_sun/rcirc)**0.5
    v_inf = abs(v_t - v_planet)
    r_sc = 1.6*rp
    v_sc = (mu_planet/r_sc)**0.5
    v_p = (2*((0.5*(v_inf**2)) + (mu_planet/r_sc)))**0.5
    deltav2 = abs(v_p - v_sc)
    return deltav2

def totaldv(mu_planet,rcirc,rp):
    v1 = deltav1(mu_planet,rcirc,rp)
    v2 = deltav2(mu_planet,rcirc,rp)
    deltav12 = v1 + v2
    print v1
    print v2
    print deltav12
    return deltav12

mercurytotal = totaldv(21550,60401250,2330)
