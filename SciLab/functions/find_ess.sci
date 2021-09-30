function find_ess(alphaN,alphaP,gammaN,gammaP,delta,e_r,f_name)

emax = e_r * critical_epsilon(alphaN,alphaP,gammaN,gammaP);

rN_g = [-0.4:0.001:0 0.01:0.01:1];

e_g = 0:0.0001:1;
rP_g = trade_off(e_g*emax,emax,delta);

Ns_ess = [];
Ps_ess = [];
dw_ess = [];
d2w_ess = [];
dc2w_ess = [];
ess = [];
rN_ess = [];
Omega_ess = [];
thetaN_ess = [];
thetaP_ess = [];

for (j = 1:length(rN_g))
    
    disp(j)

    Ns_g = zeros(1,length(e_g));
    Ps_g = zeros(1,length(e_g));
    drP_g = zeros(1,length(e_g));
    dw_g = zeros(1,length(e_g));

    for (i = 1:length(e_g))
        [Ns_g(i), Ps_g(i)]= equilibrium_point(alphaN,alphaP,gammaN,gammaP,e_g(i)*emax,rN_g(j),rP_g(i));
        drP_g(i) = diff_trade_off(e_g(i)*emax,emax,delta);
        dw_g(i) = drP_g(i) + gammaN * Ns_g(i);
    end

    b_g = (dw_g > 0)*1;
    db_g = b_g(2:$)-b_g(1:($-1));

    ess_index_t = find(abs(db_g)==1);
    
    if length(ess_index_t) > 0
    
        ess_t = 0.5*(e_g(ess_index_t+1)+e_g(ess_index_t));
        rP_ess_t = trade_off(ess_t*emax,emax,delta);
        drP_ess_t = diff_trade_off(ess_t*emax,emax,delta); 
        d2rP_ess_t = diff2_trade_off(ess_t*emax,emax,delta);

        Ns_ess_t = zeros(1,length(ess_index_t));
        Ps_ess_t = zeros(1,length(ess_index_t));
        dNs_ess_t = zeros(1,length(ess_index_t));


        for (i = 1:length(ess_index_t))
            dNs_ess_t(i) = diff_Ns(ess_t(i)*emax,emax,alphaP,alphaN,gammaN,gammaP,rN_g(j),delta);
            [Ns_ess_t(i), Ps_ess_t(i)]= equilibrium_point(alphaN,alphaP,gammaN,gammaP,ess_t(i)*emax,rN_g(j),rP_ess_t(i));
        end

        dw_ess_t = drP_ess_t + gammaN * Ns_ess_t;
        d2w_ess_t = d2rP_ess_t;
        dc2w_ess_t = d2rP_ess_t + gammaN * dNs_ess_t;

        Ns_ess = [Ns_ess Ns_ess_t(Ns_ess_t>0)];
        Ps_ess = [Ps_ess Ps_ess_t(Ns_ess_t>0)];
        dw_ess = [dw_ess dw_ess_t(Ns_ess_t>0)];
        d2w_ess = [d2w_ess d2w_ess_t(Ns_ess_t>0)];
        dc2w_ess = [dc2w_ess dc2w_ess_t(Ns_ess_t>0)];
        ess = [ess ess_t(Ns_ess_t>0)];
        rN_ess = [rN_ess ones(1,sum(Ns_ess_t > 0)) * rN_g(j)];
        Omega_ess = [Omega_ess ess_t(Ns_ess_t>0)];
        thetaN_ess = [thetaN_ess ess_t(Ns_ess_t>0)];
        thetaP_ess = [thetaP_ess ess_t(Ns_ess_t>0)];
        
    end

end

//                                                           
//    Tableau binaire définissant les indices des types      
//                                                           
//                   ||  d2w > 0  (+0) |  d2w < 0  (+1) |    
//    ===================================================    
//    dc2w > 0  (+0) ||     rep (0)    |     GOE (1)    |    
//    ---------------------------------------------------    
//    dc2w < 0  (+2) ||     bif. (2)   |     CSS (3)    |    
//    ---------------------------------------------------    
//                                                           

type_ess = zeros(1,length(Ns_ess))

for (i = 1:length(Ns_ess))
    if (d2w_ess(i)<0)
        type_ess(i) = type_ess(i)+1;
    end
    if ( dc2w_ess(i)<0)
        type_ess(i) = type_ess(i)+2;
    end
end

//save(f_name,"alphaN","alphaP","gammaN","gammaP","delta","e_r","emax",...
//       "Ns_ess","Ps_ess","dw_ess","d2w_ess","dc2w_ess","ess","rN_ess",...
//       "Omega_ess","thetaN_ess","thetaP_ess","type_ess")
       
//A = [Ns_ess; Ps_ess; dw_ess; d2w_ess; dc2w_ess; ess; rN_ess; type_ess; Omega_ess; thetaN_ess; thetaP_ess]'
//
//csvWrite(A,strcat(["ess_",f_name]))

savematfile(strcat([f_name, "_ess.mat"]),'Ns_ess', 'Ps_ess', 'dw_ess', 'd2w_ess', 'dc2w_ess', 'ess', 'rN_ess', 'type_ess','-v7')


endfunction




