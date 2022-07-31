function wing_loading = V_stall_constraint(V,C_L)
wing_loading = 0.5*1.225*V^2*C_L;
end