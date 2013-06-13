function [m,b,slerr,interr] = WeigthedLSQFit(x,y,w)
    %"""Take in arrays representing (x,y) values for a set of linearly varying data
    %and an array of weights w.  Preform a weighted linear least squares regression.
    %Return the resulting slope and intercept parameters of the best fit line with
    %their uncertainties."""
    wsum = sum(w)
    wx = sum(x.*w)
    wx2 = sum(w.*(x.^2))
    wy = sum(w.*y)
    wxy = sum(w.*x.*y)
    m = (wsum.*wxy-wx.*wy)/(wsum.*wx2 - (wx.^2))
    b = (wx2.*wy-wx.*wxy)/(wsum.*wx2 - (wx.^2))
    slerr = (wsum/((wsum.*wx2) - (wx.^2))).^0.5 %weighted slope error
    interr = (wx2/(wsum.*wx2 - wx.^2)).^0.5 %weighted intercept error
 
 end
