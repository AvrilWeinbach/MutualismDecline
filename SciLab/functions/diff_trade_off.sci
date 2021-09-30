function drP = diff_trade_off(e,emax,delta)
    
    drP = -((1-(e/emax).^delta).^(1/delta-1).*(e/emax).^(delta-1))/emax
    
endfunction
