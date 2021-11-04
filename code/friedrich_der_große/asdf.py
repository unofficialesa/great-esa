from plankIsDeaf import T, planck
#from plankIsDeafCopy import Radiation
import sys
#import blindColour as colour
import numpy as np
#import plankIsDeafCopy as pl
import scipy.constants as const
from scipy.constants import h, c, Wien, k 

# sys.executable
# np.exp


# ! important! 우린 해야한다 해석
# ? 이것은 무슨 뜻인가?



# TODO 해야한다 파이썬 동기화! 새로운 환경! 새로운 파이썬! 더 놀라운 윈도우 파이썬 앱! 와! WSL! 










con_Planck = ((6.62607004) / (np.power(10, 25)))
mylam = 1
con_Light = 299792458
myT = 6500
con_Boltzmann = (1.3806488/(np.power(10, 23)))
con_Wien = 2.897771955/(np.power(10, 3))
con_Density = 1
con_Thickness = 100
con_ThatPoint = ((con_Wien*(np.power(10, 9)))/(myT)-400) 







def Radiation(lam, myT, con_Thickness, Rho):


    lam_m = lam / 1.e9
    fac = h*c/lam_m/k/T
    B = 2*h*c**2/lam_m**5 / (np.exp(fac) - 1)


    one = (( (2*(con_Planck)*(np.power(con_Light, 2)))*(np.power(10, 45))))

    two = ((1)/((np.exp((con_Planck*con_Light*(np.power(10, 9)))/(lam*con_Boltzmann*myT))-1)))

    three_exp = ((-1/2)*np.power(((      (lam-((con_Wien*(np.power(10, 9)))/(myT)))/(((con_ThatPoint)/(1.96))))        ), 2) )

    three = (1) - ((((con_Thickness*Rho))/( (((con_ThatPoint)/(1.96))*np.sqrt(2*np.pi)) )) * (np.exp(three_exp)))

    return ((B)*(three))








# def Radiation(lam, myT, con_Thickness, Rho):




    

    # one = (( (2*(con_Planck)*(np.power(con_Light, 2)))*(np.power(10, 36)))/(np.power(lam, 5)))

    # two = ((1)/((np.exp((con_Planck*con_Light*(np.power(10, 9)))/(lam*con_Boltzmann*myT))-1)))

    # three_exp = ((-1/2)*np.power(((      (lam-((con_Wien*(np.power(10, 9)))/(myT)))/(((con_ThatPoint)/(1.96))))        ), 2) )

    # three = (1) - ((((con_Thickness*Rho))/( (((con_ThatPoint)/(1.96))*np.sqrt(2*np.pi)) )) * (np.exp(three_exp)))

    # return ((one)*(two)*(three))















lam = np.arange(380., 781., 5)

for i in range(24):
    # T = 500 to 12000 K
    T = 500*i + 500

    # Calculate the black body spectrum and the HTML hex RGB colour string
    # it looks like
    spec = planck(lam, T)
    #spec = Radiation(lam, T, pl.con_Thickness, pl.con_Density)
    #html_rgb = cs.spec_to_rgb(spec, out_fmt='html')

    # Place and label a circle with the colour of a black body at temperature T
    # x, y = i % 6, -(i // 6)
    # circle = Circle(xy=(x, y*1.2), radius=0.4, fc=html_rgb)
    # ax.add_patch(circle)
    # ax.annotate('{:4d} K'.format(T), xy=(x, y*1.2-0.5), va='center',
    #             ha='center', color=html_rgb)
    print(Radiation(lam,T, con_Thickness, con_Density))
    #print(Radiation(lam, T, pl.con_Thickness, pl.con_Density))






# lam = np.arange(380., 781., 5)

# for i in range(24):
#     # T = 500 to 12000 K
#     T = 500*i + 500

#     # Calculate the black body spectrum and the HTML hex RGB colour string
#     # it looks like
#     spec = planck(lam, T)
#     #spec = Radiation(lam, T, pl.con_Thickness, pl.con_Density)
#     #html_rgb = cs.spec_to_rgb(spec, out_fmt='html')

#     # Place and label a circle with the colour of a black body at temperature T
#     # x, y = i % 6, -(i // 6)
#     # circle = Circle(xy=(x, y*1.2), radius=0.4, fc=html_rgb)
#     # ax.add_patch(circle)
#     # ax.annotate('{:4d} K'.format(T), xy=(x, y*1.2-0.5), va='center',
#     #             ha='center', color=html_rgb)
#     print(Radiation(lam,T, con_Thickness, con_Density))
#     #print(Radiation(lam, T, pl.con_Thickness, pl.con_Density))


# print(np.power(3, 2))

# pl.planck(m, T)
# print()





















# c = speed_of_light = _cd('speed of light in vacuum')
# mu_0 = _cd('vacuum mag. permeability')
# epsilon_0 = _cd('vacuum electric permittivity')
# h = Planck = _cd('Planck constant')
# hbar = h / (2 * pi)
# G = gravitational_constant = _cd('Newtonian constant of gravitation')
# g = _cd('standard acceleration of gravity')
# e = elementary_charge = _cd('elementary charge')
# R = gas_constant = _cd('molar gas constant')
# alpha = fine_structure = _cd('fine-structure constant')
# N_A = Avogadro = _cd('Avogadro constant')
# k = Boltzmann = _cd('Boltzmann constant')
# sigma = Stefan_Boltzmann = _cd('Stefan-Boltzmann constant')
# Wien = _cd('Wien wavelength displacement law constant')
# Rydberg = _cd('Rydberg constant')
