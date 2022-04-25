function [ beta ] = Beta(  number_of_points,number_of_layers,refractive_index,d,theta,lambda_0 )
%% Calculation Of Beta
% Calculation Of Beta
a=size(theta);
for j_0=1:1:a(1)
for m=1:number_of_points  
    for n=1:number_of_layers 
        beta(j_0,m,n)= (2*pi/lambda_0(m))*real(refractive_index(m,n))*d(n)*cos(theta(j_0,m,n));
%         beta(j_0,m,n)= (1/lambda_0(m))*d(n)*cos(theta(j_0,m,n));

    end
    
end
end
end

