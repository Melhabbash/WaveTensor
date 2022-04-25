function Plotting_Rp_Rs_abs_phase(tag,lambda_0,number_of_layers,V,theta_0_degree,Rp_abs,Rp_phase,Rs_abs,Rs_phase,Reflectance, Reflectance_phase,Tp_abs,Tp_phase,Ts_abs,Ts_phase,Transmittance,Transmittance_phase)

K1='Layers';
K2='Volts';
K3=' film at ';
K5=' layer';
K6=' Volts';
K7='degree.jpeg';
K8='Reflectance';
K9='Transmittance';
K10='Phase of reflectance';
K11='Phase of transmittance';
K12='Phase of R ';
K13='Phase of T ';

theta_0_degree=theta_0_degree(1);



h=figure;
plot(lambda_0,Reflectance,'r'), grid;

% if(number_of_layers==1)
%     title(['Average reflectance R for ' num2str(number_of_layers) K5  tag K3 num2str(V) K6 ] );
% else
%     title(['Average reflectance R for ' num2str(number_of_layers) K5 's'  tag K3 num2str(V) K6 ] );
%     
% end

xlabel('Wavelength (m)'); 
ylabel('{\it R}(\lambda)'); 
% legend({'R_T_M','R_T_E','R(average)'},'Location','Best');
% hold on;
% Plot(lambda_0(861),Rp_abs(861),'k O',lambda_0(861),Rs_abs(861),'k O',lambda_0(861),Reflectance(861),'k O'); 
saveas(h,[K8 num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K7 ]);


h=figure;
plot(lambda_0,Reflectance_phase,'r'), grid;

% if(number_of_layers==1)
%     title(['Average reflectance phase \phi_R for ' num2str(number_of_layers) K5 tag K3  num2str(V) K6 ] );
% else
%     
%     title(['Average reflectance phase \phi_R for ' num2str(number_of_layers) K5 's' tag K3  num2str(V) K6 ] );
% end
% ylim([85 185])
xlabel('Wavelength (m)'); 
ylabel('\phi_R(\lambda)'); 
ylim([82 182])
% legend({'\theta_R_T_M','\theta_R_T_E','\theta_R (average)'},'Location','southeast');
saveas(h,[K12 num2str(number_of_layers) K1  num2str(V) K2 tag num2str(theta_0_degree) K7 ]);

% h=figure;
% plot(lambda_0,Rs_phase,': k '), grid;
% title(['Rs phase ' num2str(number_of_layers) K5  num2str(V) K6 tag] );
% xlabel('Wavelength 380 (nm )< \lambda < 780 (nm)'); 
% ylabel(' \theta_R_s(\lambda)'); 
% saveas(h,[num2str(number_of_layers) K1 K13  num2str(V) K2 tag num2str(theta_0_degree) K7 ]);




h=figure;
plot(lambda_0,Transmittance,'r'), grid;
% if(number_of_layers==1)
%     title(['Average transmittance T for ' num2str(number_of_layers) K5 tag K3 num2str(V) K6 ] );
% else
%     title(['Average transmittance T for ' num2str(number_of_layers) K5 's' tag K3 num2str(V) K6 ] );   
% end
xlabel('Wavelength (m)'); 
ylabel('{\it T}(\lambda)'); 
% legend({'T_T_M','T_T_E','T(average)'},'Location','southeast');
saveas(h,[K9 num2str(number_of_layers) K1   num2str(V) K2 tag num2str(theta_0_degree) K7 ]);


h=figure;
plot(lambda_0,Transmittance_phase,'r'), grid;
% if(number_of_layers==1)
% title([' Average transmittance phase \phi_T for ' num2str(number_of_layers) K5 tag K3  num2str(V) K6] );
% else
% title([' Average transmittance phase \phi_T for ' num2str(number_of_layers) K5 's' tag K3  num2str(V) K6] );
%     
% end
xlabel('Wavelength (m)'); 
ylabel('\phi_T(\lambda)'); 
% legend({'\theta_T_T_M','\theta_T_T_E','\theta_T (average)'},'Location','northeast');
saveas(h,[K13 num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K7 ]);

end