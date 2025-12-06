function [Ga,phi1,phi2] = Phi(S,F,Fmin,rn,gGopt)
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);
D1=abs(S(1,1))^2-D^2;
C1=S(1,1)-D*conj(S(2,2));
[cf,rf] = nfcirc(F,Fmin,rn,gGopt);
%rf=0.33; cf=0.61*exp(67*1i*pi/180);
a1=1-abs(cf)^2-rf^2; % 0.5907  0.521
b1=-2*rf*real(cf);
c1=-2*rf*imag(cf);
a2=D1*(abs(cf)^2+rf^2)-2*real(cf*C1)+1-abs(S(2,2))^2;
b2=2*rf*(D1*real(cf)-real(C1));
c2=2*rf*(D1*imag(cf)+imag(C1));
alpha=atan((c1*a2-a1*c2)/(a1*b2-b1*a2));
phi=0:pi/1001:2*pi;
Ga=10*log10((abs(S(2,1)))^2*(a1+b1*cos(phi)+c1*sin(phi))./(a2+b2*cos(phi)+c2*sin(phi)));

gG = cf + rf*exp(1i*phi); % ?G around the CF, RF circle
G = 10*log10(sgain(S,gG,'a')); % available gain in dB

[Gmax,i]=max(Ga);
Gav = G(i); %Ga corresponding to phi max 193°

Ratio=Gav-Gmax;
Ga=Ga+Ratio;
phi=rad2deg(phi);
figure
plot(phi,Ga,'LineWidth',2)
legend('Available Gain in dB')
xlabel('Phi')
ylabel('Available Gain in dB')
title('Gain according to the angle Phi')
grid on
hold on
phi1=rad2deg(-alpha+asin((b1*c2-c1*b2)/sqrt((a1*b2-b1*a2)^2+(c1*a2-a1*c2)^2)));
phi2=rad2deg(pi-alpha-asin((b1*c2-c1*b2)/sqrt((a1*b2-b1*a2)^2+(c1*a2-a1*c2)^2)));
Ga=max(Ga);
stem (floor(phi2),Ga)
legend(['Available Gain (G_aMax=' num2str(Ga) 'dB)'],['Calculated Phi_m_a_x=' num2str(phi2) '°'])

end