function d2rP = diff2_trade_off(e,emax,delta)
    
    d2rP = -((delta-1)*(1-(e/emax).^delta).^(1/delta-2).*(e/emax).^(delta-2))/(emax^2)
    
endfunction
