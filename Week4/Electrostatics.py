import numpy as np
def pointPotential(x,y,q):
    """does something"""
    k = 8.9875518*10**9
    Vab = k*q*(x**2+y**2)**-.5
    return Vab


def dipolePotential(x,y,q1,d):
    """does something"""
    k = 8.9875518*10**9
    Vxy = (k*q1/(x**2 + (y - d)**2)**(1/2.) - (k*q1/(x**2 + (y + d)**2)**(1/2.)))
    return Vxy
