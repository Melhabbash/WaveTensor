function [Transmittance,Transmittance_phase]=transmittance (number_of_points,Tp_abs,Tp_phase,Ts_abs,Ts_phase)


a=size(Tp_abs);
for j_0=1:1:a(1)
    for m=1:number_of_points   
        Transmittance(j_0,m)=(Tp_abs(j_0,m)+Ts_abs(j_0,m))/2;
        Transmittance_phase(j_0,m)=(Tp_phase(j_0,m)+Ts_phase(j_0,m))/2;
    end

end