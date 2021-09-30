function dNs = diff_Ns(e,emax,alphaP,alphaN,gammaN,gammaP,rN,delta)
    //requires 
    
    
    
    epsilon = e
    rP = trade_off(e,emax,delta)
    drP = diff_trade_off(e,emax,delta)
    
    d = alphaN*alphaP-(epsilon)^2*gammaN*gammaP
    
    dNs = ((gammaP*rP+epsilon*gammaP*drP)*d+2*epsilon*gammaN*gammaP*(epsilon*gammaP*rP + alphaP*rN))/d^2 
    
endfunction
