function tw_ratio = S_G_constraint(V_lof,V_0,C_D_to,S_G,WL)
q = 0.5*0.5*1.225*(V_lof^2-V_0^2);
tw_ratio = (V_lof^2-V_0^2)/(2*9.8*S_G)+(q*C_D_to)./WL;
end