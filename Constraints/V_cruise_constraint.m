function tw_ratio = V_cruise_constraint(V,C_D0,AR,WL)
k = 1/(pi*0.85*AR);
tw_ratio = (1.225*V^2*C_D0)./(2.*WL)+((2*k)/(1.225*V^2)).*WL;
end