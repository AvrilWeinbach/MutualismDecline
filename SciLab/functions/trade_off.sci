function rP = trade_off(e,emax,delta)

    rP = (1-(e/emax).^delta).^(1/delta)
    
endfunction
