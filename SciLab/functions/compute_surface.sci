function compute_surface(alphaN,alphaP,gammaN,gammaP,delta,e_r,f_name)
    //This function requires the functions critical_epsilon, trade_off, equilibrium point, diff_trade_off, structural_stability, dist_to_border, diff2_trade_off

rN_g = [-0.4:0.001:0 0.01:0.01:1];
e_g = [0:0.01:0.8 0.8001:0.001:1];

emax = e_r * critical_epsilon(alphaN,alphaP,gammaN,gammaP);

rP_g = trade_off(e_g*emax,emax,delta);

Ns_g = zeros(length(rN_g),length(e_g));
Ps_g = zeros(length(rN_g),length(e_g));
dw_g = zeros(length(rN_g),length(e_g));
d2w_g = zeros(length(rN_g),length(e_g));
dc2w_g = zeros(length(rN_g),length(e_g));
co_g = zeros(length(rN_g),length(e_g));

for (i = 1:length(rN_g))
    
    disp(i)
    
    for (j = 1:length(e_g))

        [Ns_g(i,j), Ps_g(i,j)]= equilibrium_point(alphaN,alphaP,gammaN,gammaP,e_g(j)*emax,rN_g(i),rP_g(j));
        dw_g(i,j) = diff_trade_off(e_g(j)*emax,emax,delta) + gammaN * Ns_g(i,j);
        d2w_g(i,j) = diff2_trade_off(e_g(j)*emax,emax,delta);
        dNs = diff_Ns(e_g(j)*emax,emax,alphaP,alphaN,gammaN,gammaP,rN_g(i),delta);
        dc2w_g(i,j) = d2w_g(i,j) + gammaN * dNs;



        if ((Ns_g(i,j)>0) & (Ps_g(i,j)>0))
            co_g(i,j) = 3;
        elseif ((Ns_g(i,j)>0) & (Ps_g(i,j)<=0))
            co_g(i,j) = 2;
        elseif ((Ns_g(i,j)<=0) & (Ps_g(i,j)>0))
             co_g(i,j) = 1;
        end
            
    end

end

savematfile(strcat([f_name, "_surf.mat"]),'Ns_g', 'Ps_g', 'dw_g', 'co_g', ...
        'rN_g', 'e_g', 'rP_g','d2w_g','dc2w_g','-v7')

endfunction
