clear
clc
Z_Gopt =30.6794 +66.0481i;
Z_Lopt =21.3861 - 6.0750i;

Z_G =27.4689 +34.0398i;
Z_L =18.1365 + 3.3819i;


%f=2e9;
ckt = read(rfckt.amplifier, 'Vds=4V_Id=40mA_atf341433.s2p');
%ckt = read(rfckt.amplifier,'default.s2p');
s_params = ckt.NetworkData.Data;
z0 = ckt.NetworkData.Z0;
zl = 21.3861 - 6.0750i;
coefficient = gammain(s_params,z0,zl);
plot(abs(coefficient))
[min,i]=min(coefficient)