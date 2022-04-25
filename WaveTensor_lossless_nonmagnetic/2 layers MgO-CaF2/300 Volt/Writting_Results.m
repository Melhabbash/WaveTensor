function Writting_Results(tag,number_of_layers,number_of_points,V,theta_0_degree,lambda_0,Mp,Ms,Rp_abs,Rp_phase,Rs_abs,Rs_phase,Reflectance,Reflectance_phase,Transmittance,Transmittance_phase,rp,tp,rs,ts,q,con);

K1='Layers';
K2='Volts';
K4='degree';
K41=' r and t';
K5='.xlsx';

K6=' Volts';
K8='Refelctivity';
K9='transmittance';
K10='Phase of Reflectance';




xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Wavelength'),1,'A1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],lambda_0,1,'A2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Rp_abs '),1,'C1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Rp_abs',1,'C2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Rp_phase '),1,'E1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Rp_phase',1,'E2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Rs_abs'),1,'G1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Rs_abs',1,'G2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Rs_phase'),1,'I1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Rs_phase',1,'I2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Reflectance_abs '),1,'K1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Reflectance',1,'K2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Reflectance_phase'),1,'M1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Reflectance_phase',1,'M2');

xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Transmittance_abs'),1,'O1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Transmittance',1,'O2');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Transmittance_phase'),1,'Q1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],Transmittance_phase',1,'Q2');



for i=1:number_of_layers+1
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Wavelength'),i+1,'A1');
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],lambda_0,i+1,'A2');
    
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(['rp' num2str(i)] ),i+1,'C1');  
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(num2str(rp(1,:,i)')),i+1,'C2');
    
    
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(['rs' num2str(i)] ),i+1,'E1');  
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(num2str(rs(1,:,i)')),i+1,'E2');
    
    
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(['tp' num2str(i)] ),i+1,'G1');  
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(num2str(tp(1,:,i)')),i+1,'G2');
    
    
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(['ts' num2str(i)] ),i+1,'I1');  
    xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4  K5],cellstr(num2str(ts(1,:,i)')),i+1,'I2');
    
end

% for m=1:number_of_points
% 
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Wavelength'),number_of_layers+1,'A1');
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],lambda_0(m),number_of_layers+1,['A' num2str(m*3)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('MP'),number_of_layers+1,'C1');
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Mp(1,1,:,m))),number_of_layers+1,['C' num2str(m*3)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Mp(1,2,:,m))),number_of_layers+1,['D' num2str(m*3)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Mp(2,1,:,m))),number_of_layers+1,['C' num2str(m*3+1)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Mp(2,2,:,m))),number_of_layers+1,['D' num2str(m*3+1)]);
% 
%     
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Ms'),number_of_layers+1,'F1');
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Ms(1,1,:,m))),number_of_layers+1,['F' num2str(m*3)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Ms(1,2,:,m))),number_of_layers+1,['G' num2str(m*3)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Ms(2,1,:,m))),number_of_layers+1,['F' num2str(m*3+1)]);
%         xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(Ms(2,2,:,m))),number_of_layers+1,['G' num2str(m*3+1)]);
%              
%     
% end



xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('Wavelength'),number_of_layers+4,'A1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],lambda_0,number_of_layers+4,'A2');


xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('q'),number_of_layers+3,'C1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(q)),number_of_layers+3,'C2');

% for i=1:number_of_layers
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr('conductivity '),number_of_layers+4,'C1');
xlswrite([num2str(number_of_layers) K1 num2str(V) K2 tag num2str(theta_0_degree) K4 K5],cellstr(num2str(con(:,:))),number_of_layers+4,'C2');
% end







end