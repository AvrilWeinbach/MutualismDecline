clear()
close()
clearglobal()

getd('./functions')

alphaN = 1;
alphaP = 1;
gammaN = 1;
gammaP = 1;
e_r = 0.8;
delta = 2.5;
f_name = "test"


tic;
find_ess(alphaN,alphaP,gammaN,gammaP,delta,e_r,f_name)
compute_surface(alphaN,alphaP,gammaN,gammaP,delta,e_r,f_name)
toc

