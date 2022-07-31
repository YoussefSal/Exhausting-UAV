clearvars

V_stall = 7;
V_cruise = 20;
C_Lmax = 1.4;
C_D0 = 0.02;
AR = 7;
V_lof = 1.1*V_stall;
V_0 = 5;
C_D_to = 0.03;
S_G = 2;

wing_loading_vec = linspace(0,75,150);
V_stall_WL_vec = V_stall_constraint(V_stall,C_Lmax) .* ones(2,1);

figure
hold on
plot(V_stall_constraint(V_stall,C_Lmax) .* ones(2,1),linspace(0,6,2),'r')
plot(wing_loading_vec,V_cruise_constraint(V_cruise,C_D0,AR,wing_loading_vec),'b')
plot(wing_loading_vec,S_G_constraint(V_lof,V_0,C_D_to,S_G,wing_loading_vec),'g')
disp(S_G_constraint(V_lof,V_0,C_D_to,S_G,37.32))
plot(37.32,0.8832,'blackx','MarkerSize', 10)

xlabel('Wing Loading (W/S)')
ylabel('Thrust-Weight Ratio (T/W)')