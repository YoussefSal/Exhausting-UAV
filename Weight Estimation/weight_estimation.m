function Estimated_MTOW=weight_estimation(calculated_uw)

DATA=xlsread("MTOW Estimation Data.xlsx");
useful_weight=DATA(:,2);
MTOW=DATA(:,1);
f=fit(useful_weight,MTOW,'poly3');

figure
plot(f,useful_weight,MTOW)
xlabel('Useful Weight')
ylabel('MTOW')

Estimated_MTOW=f(calculated_uw);
end

