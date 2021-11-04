import numpy as np
import gaussian
from gaussian import Gaussian
from scipy.constants import h, c, k, Wien
import matplotlib.pyplot as plt
from matplotlib.patches import Circle

from blindColour import cs_hdtv
cs = cs_hdtv






# con_Planck = ((6.62607004) / (np.power(10, 34)))
# mylam = 1
# c = 299792458
# myT = 6500
# con_Boltzmann = (1.3806488/(np.power(10, 23)))
# con_Wien = 2.897771955/(np.power(10, 3))


#con_Density = 1
con_Thickness = 100





#
#----------------------------
#
# Plank <- ((6.62607004) * (10^(-34))) #m^2 * kg/s
# myLamdha <- 1                          #Hz
# Light <- 299792458                   #m/s
# myTemparature <- 5772              #K
# Boltzmann <- (1.3806488*10^(-23))    #J k^(-1)
# Wien <- 2.897771955*(10^(-3))       #mK
# myDensity <- 100
# myThickness <- 1
# ThatPoint <- ((Wien*(10^9))/(Temparature)-400) 
#
#--------------------------------
#
#

#np.power(10, 9)
#np.power(10, 36)


def Radiation(lam, myT, con_Thickness, Rho):


    con_ThatPoint = ((Wien*(np.power(10, 9)))/(myT)-400) 

    lam_m = lam / 1.e9

    fac = h*c/lam_m/k/T

    B = 2*h*c**2/lam_m**5 / (np.exp(fac) - 1)


    

    one = (( (2*(h)*(np.power(c, 2)))*(np.power(10, 45))))

    two = ((1)/((np.exp((h*c*(np.power(10, 9)))/(lam*k*myT))-1)))

    three_exp = ((-1/2)*np.power(((      (lam-((Wien*(np.power(10, 9)))/(myT)))/(((con_ThatPoint)/(1.96))))        ), 2) )

    three = (1) - ((((con_Thickness*Rho))/( (((con_ThatPoint)/(1.96))*np.sqrt(2*np.pi)) )) * (np.exp(three_exp)))

    return ((B)*(three))













def planck(lam, T):
    """ Returns the spectral radiance of a black body at temperature T.

    Returns the spectral radiance, B(lam, T), in W.sr-1.m-2 of a black body
    at temperature T (in K) at a wavelength lam (in nm), using Planck's law.

    """

    lam_m = lam / 1.e9
    fac = h*c/lam_m/k/T
    B = 2*h*c**2/lam_m**5 / (np.exp(fac) - 1)
    return B

fig, ax = plt.subplots()

# The grid of visible wavelengths corresponding to the grid of colour-matching
# functions used by the ColourSystem instance.
lam = np.arange(380., 781., 5)

for i in range(24):
    # T = 500 to 12000 K
    T = 500*i + 500

    # Calculate the black body spectrum and the HTML hex RGB colour string
    # it looks like
    spec = Gaussian(lam, 486.34, 44.052)
    html_rgb = cs.spec_to_rgb(spec, out_fmt='html')

    # Place and label a circle with the colour of a black body at temperature T
    x, y = i % 6, -(i // 6)
    circle = Circle(xy=(x, y*1.2), radius=0.4, fc=html_rgb)
    ax.add_patch(circle)
    ax.annotate('{:4d} K'.format(T), xy=(x, y*1.2-0.5), va='center',
                ha='center', color=html_rgb)

# Set the limits and background colour; remove the ticks
ax.set_xlim(-0.5,5.5)
ax.set_ylim(-4.35, 0.5)
ax.set_xticks([])
ax.set_yticks([])
ax.set_facecolor('k')
# Make sure our circles are circular!
ax.set_aspect("equal")
plt.show()
