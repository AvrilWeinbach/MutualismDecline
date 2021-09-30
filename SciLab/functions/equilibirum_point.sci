function [Ns, Ps]= equilibrium_point(alphaN,alphaP,gammaN,gammaP,e,rN,rP)
    
    d = alphaN * alphaP - e^2 * gammaN * gammaP
    Nn = (e*gammaP*rP + alphaP*rN)
    Pn = (e*gammaN*rN + alphaN*rP)

    if ((Nn > 0) & (Pn > 0)) then
        Ns = Nn/d
        Ps = Pn/d
    elseif ((Nn > 0) & (Pn <= 0)) then
        Ns = rN/alphaN
        Ps = 0
    elseif ((Nn <= 0) & (Pn > 0)) then
        Ns = 0
        Ps = rP/alphaP
    else
        Ns = 0
        Ps = 0
    end

endfunction
