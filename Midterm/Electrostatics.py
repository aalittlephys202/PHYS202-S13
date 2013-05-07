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


def pointField(x,y,q,Xq,Yq):
    """E is for the Ex value and W is the Ey value"""
    k = 8.9875518*10**9
    E = (k*q(x-Xq))/((x-Xq)**2 + (y-Yq)**2)**0.5
    W = (k*q(y-Yq))/((x-Xq)**2 + (y-Yq)**2)**0.5
    print E
    print W