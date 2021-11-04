import scipy.constants
from scipy.constants import h, c, Wien, k
import numpy as np


#print(scipy.constants.value(u'Boltzmann constant'))

cmf = np.loadtxt('cmf1.txt', usecols=(1,2,3))

print(cmf)
