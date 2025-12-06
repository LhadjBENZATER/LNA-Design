clear,clc
S=[ 0.7*exp(-150*1i*pi/180) 0.081*exp(19*1i*pi/180); 6.002*exp(73*1i*pi/180) 0.21*exp(-150*1i*pi/180)];
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);Fmin = 0.22;gGopt=0.66*exp(67*1i*pi/180);rn=4.5/50;F=0.35;Ga=17.16;
[cs,rs] = sgcirc(S,'s');[cl,rl] = sgcirc(S,'l');% Stability circles
gLopt = conj(gout(S,gGopt));Gopt=10*log10(sgain(S,gGopt,'a'));Gmsg = 10*log10(sgain(S,'msg'));

%Constant NF and Ga circles
[cf,rf] = nfcirc(F,Fmin,rn,gGopt);[c_opt,r_opt] = sgcirc(S,'a',Gopt); [ca,ra] = sgcirc(S,'a',Ga);
figure
hsm = smithchart;hold on
smithcir(cf,rf,10,3);smithcir(c_opt,r_opt,10,3);smithcir(ca,ra,10,3);smithcir(cs,rs,10,3);smithcir(cl,rl,10,3)
%Calculate intersection point
phi = linspace(0,2*pi,721); gG = cf + rf*exp(1i*phi);
G = 10*log10(sgain(S,gG,'a'));[Ga,i] = max(G); gammaG = gG(i); gammaL = conj(gout(S,gammaG)); 
plot([gGopt, gLopt],'*');plot([gammaG,gammaL],'*');
legend(['Constant F=' num2str(F)],['G_F_m_i_n=' num2str(Gopt)],['Ga=' num2str(Ga) ' dB'],'Input stability circle','output stability circle','Gamma_o_p_t','Gamma_D_e_s_i_r_e_d')
title('Stability, noise figure, and gain circles')
%GAMMA OF INTERSECTION POINTS
gG_intersection = circint(cf,rf,ca,ra);gL_intersection = conj(gout(S,gG_intersection));
%%%%%%%%%         DESIGN OF MATCHING NETWORKS              %%%%%%%%%%%%%%%%%%%%%
Z_G = gamma2z(gammaG);Z_L = gamma2z(gammaL);Z0=50;f0=2e9;w=2*pi*f0;
%%%%%%%%%%%%%%%INPUT MATCHING NETWORK%%%%%%%%%%%%%%%%%%%%%%
ZL=conj(Z_G);RL=real(ZL);XL=imag(ZL);
if abs(real(ZL/Z0))>=1   
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);
X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1   
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C1 ctype]=B2LC(B1,f0);[L1 ltype]=X2LC(X1,f0);% the 1st match solution  
[L2 ctype]=B2LC(B2,f0);[C2 ltype]=X2LC(X2,f0);%  the 2nd solution
%%%%%%%%%%%          OUTPUT MATCHING NETWORK         %%%%%%%%%%%%%%
ZL=conj(Z_L);RL=real(ZL);XL=imag(ZL);
if abs(real(ZL/Z0))>=1
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);
X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1  
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C_1 ctype]=B2LC(B1,f0);[L_1 ltype]=X2LC(X1,f0);% the 1st match solution  
[L_2 ctype]=B2LC(B2,f0);[C_2 ltype]=X2LC(X2,f0);% the 2nd solution

%%%%%%%%%%         Second aproach using S2P file       %%%%%%%%%%%%%%%%%
unmatched_amp = read(rfckt.amplifier, 'Vds=4V_Id=40mA_atf341433.s2p');
freq=5e8:100e6:3.5e9;Ga=17.16;analyze(unmatched_amp,freq);
figure%Plotting the intersection
hsm = smithchart;circle(unmatched_amp,f0,'Stab','In','Stab','Out','Ga',Ga,'NF',F,hsm);
legend('Input stability circle','output stability circle',['Ga=' num2str(Ga) ' dB'],['Constant F=' num2str(F) 'dB'])
title('Intersection of Noise figure and Gain circles')
legend('Location','SouthEast')
figure %Plotting Detla and K
plot(unmatched_amp,'Delta','mag');hold all;plot(unmatched_amp,'K')
title('Device stability parameters');grid on

In1 = rfckt.cascade('Ckts',{rfckt.shuntrlc('C',C1),rfckt.seriesrlc('L',L1)});
In2 = rfckt.cascade('Ckts',{rfckt.shuntrlc('L',L2),rfckt.seriesrlc('L',C2)});
Out2 = rfckt.cascade('Ckts',{rfckt.seriesrlc('C',C_2),rfckt.shuntrlc('L',L_2)});
Out1 = rfckt.cascade('Ckts',{rfckt.seriesrlc('L',L_1),rfckt.shuntrlc('C',C_1)});
Matched_Amp11 = rfckt.cascade('Ckts',{In1,unmatched_amp,Out1});analyze(Matched_Amp11,freq);
Matched_Amp12 = rfckt.cascade('Ckts',{In1,unmatched_amp,Out2});analyze(Matched_Amp12,freq);
Matched_Amp21 = rfckt.cascade('Ckts',{In2,unmatched_amp,Out1});analyze(Matched_Amp21,freq);
Matched_Amp22 = rfckt.cascade('Ckts',{In2,unmatched_amp,Out2});analyze(Matched_Amp22,freq);

figure 
subplot(2,1,1);%Plotting Available gains
p=plot(unmatched_amp,'Gt');p.LineWidth = 2;p.Marker = '+';hold on;
p=plot(Matched_Amp11,'Gt');p.LineStyle = '-.';p.LineWidth = 3;
p=plot(Matched_Amp12,'Gt');p.LineStyle = ':';p.LineWidth = 4;
p=plot(Matched_Amp21,'Gt');p.LineStyle = '-.';p.LineWidth = 3;
p=plot(Matched_Amp22,'Gt');p.LineStyle = ':';p.LineWidth = 4;
p=plot(unmatched_amp,'Gmsg');p.LineWidth = 4;p.Marker = '+';hold on;
xlabel('Frequency (GHz)');ylabel('Available gain (dB)') 
legend('G_a - Unmatched','G_a - Matched (IN1 & Out1)','G_a - Matched (IN1 & Out2)','G_a - Matched (IN2 & Out1)','G_a - Matched (IN2 & Out2)','G_m_s_g')
title('Available gains G_a of all configurations')
subplot(2,1,2);%figure %Plotting noise figures
p=plot(unmatched_amp,'NF');p.LineWidth = 2;p.Marker = '+';hold on;
p=plot(Matched_Amp11,'NF');p.LineWidth = 3;p.LineStyle = '-.';
p=plot(Matched_Amp12,'NF');p.LineWidth = 4;p.LineStyle = ':';
p=plot(Matched_Amp21,'NF');p.LineWidth = 3;p.LineStyle = '-.';
p=plot(Matched_Amp22,'NF');p.LineWidth = 4;p.LineStyle = ':';
p=plot(unmatched_amp,'Fmin');p.LineWidth = 1;p.Marker = 'p';
xlabel('Frequency (GHz)');ylabel('Noise figure (dB)') 
legend('F - Unmatched','F - Matched  (IN1 & Out1)','F - Matched  (IN1 & Out2)','F - Matched  (IN2 & Out1)','F - Matched  (IN2 & Out2)','Fmin')
title('Noise figure F of all configurations')


figure
subplot(2,2,1);
plotyy(Matched_Amp11,'Gt','dB','NF','dB');[hAx,hLine1,hLine2]=plotyy(Matched_Amp11,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)') 
title('Configuration 1 (IN1 & Out1)')
subplot(2,2,2);
plotyy(Matched_Amp12,'Gt','dB','NF','dB');[hAx,hLine1,hLine2]=plotyy(Matched_Amp12,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 2 (IN1 & Out2)')
subplot(2,2,3);
plotyy(Matched_Amp21,'Gt','dB','NF','dB');[hAx,hLine1,hLine2]=plotyy(Matched_Amp21,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 3 (IN2 & Out1)')
subplot(2,2,4);
plotyy(Matched_Amp22,'Gt','dB','NF','dB');[hAx,hLine1,hLine2]=plotyy(Matched_Amp22,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 4 (IN2 & Out2)')

