hsm = smithchart;
z_0= 50 + 1j*(0:1:200);
z = 0.3 + 1j*(0:0.1:10);
%z = 0.3 + 1j*(0.2);
z=z*50;

gamma_0 = z2gamma(z_0);
gamma = z2gamma(z);
%figure
hold on
smithchart(gamma)
smithchart(gamma_0)
