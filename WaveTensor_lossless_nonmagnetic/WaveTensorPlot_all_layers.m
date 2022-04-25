file_1_1_layer='1Layers0Volts-MgO60.1297degree.xlsx';
% file_1_2_layer='1Layers0Volts-CaF220degree.xlsx';
file_2_layers= '2Layers900Volts-MgO-CaF260.1297degree.xlsx';
file_3_layers= '3Layers900Volts-MgO-CaF2-MgO60.1297degree.xlsx';
file_4_layers= '4Layers900Volts-MgO-CaF2-MgO-CaF260.1297degree.xlsx';
file_5_layers= '5Layers900Volts-MgO-CaF2-MgO-CaF2-MgO60.1297degree.xlsx';

V=900;

f1_1=xlsread(file_1_1_layer);
% f1_2=xlsread(file_1_2_layer);
f2=xlsread(file_2_layers);
f3=xlsread(file_3_layers);
f4=xlsread(file_4_layers);
f5=xlsread(file_5_layers);


K1='different numbers of layers at ';
K3=' V ';

K4='All ';
K7='degree.jpeg';

K8='Reflectance';
K9='Transmittance';
K10='Phase of reflectance';
K11='Phase of transmittance';
K12='Phase of Rp';
K13='Phase of Rs'; 

h=figure;
% plot(lambda_0,f1_1(:,11),lambda_0,f1_2(:,11),'g',lambda_0,f2(:,11),'-. b',lambda_0,f3(:,11),'-- k', lambda_0,f4(:,11),'k',lambda_0,f5(:,11),' r'), grid;
plot(lambda_0,f1_1(:,11),'g',lambda_0,f2(:,11),'-. b',lambda_0,f3(:,11),'-- k', lambda_0,f4(:,11),'k',lambda_0,f5(:,11),' r'), grid;

% ylim([0.16 0.37]);
% title(['Average{\it R} of ' K1 num2str(V)   K3 'transverse voltage' ] );
xlabel('Wavelength (m)'); 
ylabel('{\it R(\lambda)} '); 
% legend({'R(1-Layer-MgO)','R(1-Layer-CaF_2)','R(2-Layers)','R(3-Layers)','R(4-Layers)','R(5-Layers)'},'Location','bestoutside');
legend({'R(1-Layer-MgO)','R(2-Layers)','R(3-Layers)','R(4-Layers)','R(5-Layers)'},'Location','best');

saveas(h,[K4 K8 K1 num2str(V) K3 num2str(theta_0_degree) K7 ]);


h=figure;
% plot(lambda_0,f1_1(:,13),lambda_0,f1_2(:,13),': g',lambda_0,f2(:,13),'-. b',lambda_0,f3(:,13),'-- k', lambda_0,f4(:,13),'k',lambda_0,f5(:,13),' r'), grid;
plot(lambda_0,f1_1(:,13),'g',lambda_0,f2(:,13),'-. b',lambda_0,f3(:,13),'-- k', lambda_0,f4(:,13),'k',lambda_0,f5(:,13),' r'), grid;

% title(['Average{\it \phi_R} of '  K1 num2str(V) K3 'transverse voltage' ] );
xlabel('Wavelength (m)'); 
ylabel('\phi_R(\lambda)  (degree) '); 
% legend({'\phi_R(1-Layer-MgO)','\phi_R(1-Layer-CaF_2)','\phi_R(2-Layers)','\phi_R(3-Layers)','\phi_R(4-Layers)','\phi_R(5-Layers)'},'Location','bestoutside');
legend({'\phi_R(1-Layer-MgO)','\phi_R(2-Layers)','\phi_R(3-Layers)','\phi_R(4-Layers)','\phi_R(5-Layers)'},'Location','best');

saveas(h,[K4 K10 K1 num2str(V) K3 num2str(theta_0_degree) K7]);


h=figure;
% plot(lambda_0,f1_1(:,15),lambda_0,f1_2(:,15),'g',lambda_0,f2(:,15),'-. b',lambda_0,f3(:,15),'-- k', lambda_0,f4(:,15),'k',lambda_0,f5(:,15),' r'), grid;
plot(lambda_0,f1_1(:,15),'g',lambda_0,f2(:,15),'-. b',lambda_0,f3(:,15),'-- k', lambda_0,f4(:,15),'k',lambda_0,f5(:,15),' r'), grid;

% ylim([0.69 0.9]);
% title(['Average{\it T} of '  K1 num2str(V)   K3 'transverse voltage' ] );
xlabel('Wavelength (m)'); 
ylabel('{\it T(\lambda)} '); 
% legend({'T(1-Layer-MgO)','T(1-Layer-CaF_2)','T(2-Layers)','T(3-Layers)','T(4-Layers)','T(5-Layers)'},'Location','bestoutside');
legend({'T(1-Layer-MgO)','T(2-Layers)','T(3-Layers)','T(4-Layers)','T(5-Layers)'},'Location','best');

saveas(h,[K4 K9 K1 num2str(V) K3 num2str(theta_0_degree) K7 ]);

h=figure;
% plot(lambda_0,f1_1(:,17),lambda_0,f1_2(:,17),'g',lambda_0,f2(:,17),'-. b',lambda_0,f3(:,17),'-- k', lambda_0,f4(:,17),'k',lambda_0,f5(:,17),' r'), grid;
plot(lambda_0,f1_1(:,17),'g',lambda_0,f2(:,17),'-. b',lambda_0,f3(:,17),'-- k', lambda_0,f4(:,17),'k',lambda_0,f5(:,17),' r'), grid;

% ylim([-200 200]);
% title(['Average{\it \phi_T} of '  K1 num2str(V)   K3 'transverse voltage' ] );
xlabel('Wavelength (m)'); 
ylabel('\phi_T(\lambda)  (degree) '); 
% legend({'\phi_T(1-Layer-MgO)','\phi_T(1-Layer-CaF_2)','\phi_T(2-Layers)','\phi_T(3-Layers)','\phi_T(4-Layers)','\phi_T(5-Layers)'},'Location','bestoutside');
legend({'\phi_T(1-Layer-MgO)','\phi_T(2-Layers)','\phi_T(3-Layers)','\phi_T(4-Layers)','\phi_T(5-Layers)'},'Location','best');

saveas(h,[K4 K11 K1 num2str(V) K3 num2str(theta_0_degree) K7]);

