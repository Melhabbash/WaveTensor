function [ Reflectance, Reflectance_phase ] = reflectance( number_of_points,Rp_abs,Rp_phase,Rs_abs,Rs_phase)
%UNTITLED22 Summary of this function goes here
%   Detailed explanation goes here

a=size(Rp_abs);
for j_0=1:1:a(1)
    for m=1:number_of_points   
        Reflectance(j_0,m)=(Rp_abs(j_0,m)+Rs_abs(j_0,m))/2;
        Reflectance_phase(j_0,m)=(Rp_phase(j_0,m)+Rs_phase(j_0,m))/2;
    end
end




end

