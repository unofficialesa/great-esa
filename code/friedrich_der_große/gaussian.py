from plankIsDeaf import planck
from asdf import Radiation
import numpy as np
from numpy import pi, sqrt, exp, power
from scipy.constants import h, c, k, Wien
import matplotlib.pyplot as plt




# Distribution <- function(x,mean,sig){
#   return(((1)/((sig)*sqrt(2*pi)))*exp((-1/2)*(((x-mean)/(sig))^2)))


def Gaussian(lamdha, mymean, mysig):
    A = ((((1)/((mysig)*sqrt(2*pi)))*exp((-1/2)*(power(((lamdha-mymean)/(mysig)),2)))))
    return A



def Luminance(lamdha, mymean, mysig, myT):
    A = (planck(lamdha, myT))*(1-(Gaussian(lamdha, mymean, mysig)*100))
    return A

def LuminanceLuminance(lamdha, mymean, mysig, myT, mymean2, mysig2):
    A = (planck(lamdha, myT))*(1-((Gaussian(lamdha, mymean, mysig)+(Gaussian(lamdha, mymean2, mysig2)))*100))
    return A



