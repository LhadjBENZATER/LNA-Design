clear
clc
S=[ 0.7*exp(-150*1i*pi/180) 0.081*exp(19*1i*pi/180); 6.002*exp(73*1i*pi/180) 0.21*exp(-150*1i*pi/180)];
gGopt=0.66*(cos(67*pi/180)+1i*sin(67*pi/180));
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F = 0.35; Fmin = 0.22;
rn=4.5/50;
FF = 10^(F/10); FFmin = 10^(Fmin/10);
N = (FF-FFmin) * abs(1+gGopt)^2 / (4*rn);
CF = gGopt / (N+1);   %Center of the constantnoise circle
RF = sqrt(N^2+N*(1-abs(gGopt)^2)) / (N+1);  %Radius of the constantnoise circle

phi=0:2*pi/1001:2*pi;
gG = CF + RF*exp(1i*phi);
gout = S(2,2) + (S(1,2)*S(2,1)*gG)/(1 - S(1,1)*gG);
GAv = 10*log10( ((abs(S(2,1)).^2)*(1 - abs(gG).^2))./( (abs(1-S(1,1)*gG).^2)*(1-abs(gout).^2)) );
phi=rad2deg(phi);
hold on
plot(phi,GAv,'LineWidth',2)
xlabel('Phi')
ylabel('Available Gain in dB')
title('Gain according to the angle Phi')
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

phi=0:2*pi/1001:2*pi; % angle in 1/2o increments
gG = CF + RF*exp(1i*phi); % ?G around the CF, RF circle
G = 10*log10(sgain(S,gG,'a')); % available gain in dB
[Gav,i] = max(G); % maximum available gain
hold on
plot(phi*180/pi, G,'LineWidth',2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D1=abs(S(1,1))^2-D^2;
C1=S(1,1)-D*conj(S(2,2));
[cf,rf] = nfcirc(F,Fmin,rn,gGopt);
a1=1-abs(cf)^2-rf^2;
b1=-2*rf*real(cf);
c1=-2*rf*imag(cf);
a2=D1*(abs(cf)^2+rf^2)-2*real(cf*C1)+1-abs(S(2,2))^2;
b2=2*rf*(D1*real(cf)-real(C1));
c2=2*rf*(D1*imag(cf)+imag(C1));
alpha=atan((c1*a2-a1*c2)/(a1*b2-b1*a2));
Ga=(abs(S(2,1)))^2*(a1+b1*cos(phi)+c1*sin(phi))./(a2+b2*cos(phi)+c2*sin(phi));
phi=rad2deg(phi);
Ga=10*log10(Ga);
[Gmax,i]=max(Ga);
Ratio=G-Ga;
hold on
plot(phi,Ga,'LineWidth',2)
plot(phi,Ratio,'LineWidth',2)
grid on
hold on
phi1=rad2deg(-alpha+asin((b1*c2-c1*b2)/sqrt((a1*b2-b1*a2)^2+(c1*a2-a1*c2)^2)));
phi2=rad2deg(pi-alpha-asin((b1*c2-c1*b2)/sqrt((a1*b2-b1*a2)^2+(c1*a2-a1*c2)^2)));
Ga=max(Ga);
legend(['POZAR Ga=' num2str(max(GAv)) 'dB'],['Sophocles J. Orfanidis Ga=' num2str(Gav) 'dB'],['Analytical Ga=' num2str(Ga) 'dB'],['Ga Ratio=' num2str(Ratio(i)) 'dB'])
