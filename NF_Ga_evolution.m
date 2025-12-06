clear
clc
S=[ 0.7*exp(-150*1i*pi/180) 0.081*exp(19*1i*pi/180); 6.002*exp(73*1i*pi/180) 0.21*exp(-150*1i*pi/180)];
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);
Fmin = 0.22;
gGopt=0.66*exp(67*1i*pi/180);
rn=4.5/50;
F1=0.2201;
F2=0.30;
F3=0.35;
Ga1=15;
Ga2=17.16;
Ga3=18;
Ga=9.35;
Gopt = sgain(S,gGopt,'a');
Gopt=10*log10(Gopt);

[cf1,rf1] = nfcirc(F1,Fmin,rn,gGopt);
[cf2,rf2] = nfcirc(F2,Fmin,rn,gGopt);
[cf3,rf3] = nfcirc(F3,Fmin,rn,gGopt);

[c_opt,r_opt] = sgcirc(S,'a',Gopt); % the optimum gain
[ca,ra] = sgcirc(S,'a',Ga);
[ca1,ra1] = sgcirc(S,'a',Ga1);
[ca2,ra2] = sgcirc(S,'a',Ga2);
[ca3,ra3] = sgcirc(S,'a',Ga3);
figure
hsm = smithchart;
hold on
smithcir(cf1,rf1,10,3)
smithcir(cf2,rf2,10,3)
smithcir(cf3,rf3,10,3)
smithcir(ca,ra,10,3)
smithcir(c_opt,r_opt,10,3)
smithcir(ca1,ra1,10,3)
smithcir(ca2,ra2,10,3)
smithcir(ca3,ra3,10,3)
legend(['Constant F1=' num2str(F1) ' dB'],['Constant F2=' num2str(F2) ' dB'],['Constant F3=' num2str(F3) ' dB'],['Ga=' num2str(Ga) ' dB'],['Gopt=' num2str(Gopt) ' dB'],['Ga1=' num2str(Ga1) ' dB'],['Ga2=' num2str(Ga2) ' dB'],['Ga3=' num2str(Ga3) ' dB'])
