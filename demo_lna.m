function result = demo_lna(makePlot)
% Toolbox-free single-frequency gain/noise example using supplied helpers.
if nargin<1,makePlot=true;end
root=fileparts(mfilename('fullpath'));addpath(root,fullfile(root,'examples'));
% Same illustrative scattering/noise parameters as the first part of PFE.m.
S=[0.7*exp(-150i*pi/180),0.081*exp(19i*pi/180);6.002*exp(73i*pi/180),0.21*exp(-150i*pi/180)];
Fmin=0.22;rn=4.5/50;gopt=0.66*exp(67i*pi/180);
[K,mu,delta]=sparam(S);
g=linspace(-0.95,0.95,101);[re,im]=meshgrid(g,g);gamma=re+1i*im;
valid=abs(gamma)<0.95;gs=gamma(valid);gl=conj(gout(S,gs));
gain=real(sgain(S,gs,gl));nf=nfig(Fmin,rn,gopt,gs);
stable=abs(gl)<1 & gain>0;gs=gs(stable);gainDb=10*log10(gain(stable));nf=nf(stable);
[bestNF,index]=min(nf);matchedLoad=conj(gout(S,gopt));
result=struct('K',K,'mu',mu,'delta',delta,'sourceGamma',gs,'gainDb',gainDb,'nfDb',nf);
out=fullfile(root,'results');if ~exist(out,'dir'),mkdir(out);end
write_demo_csv(fullfile(out,'demo_metrics.csv'),'gamma_real,gamma_imag,available_gain_db,noise_figure_db',[real(gs(:)),imag(gs(:)),gainDb(:),nf(:)]);
save(fullfile(out,'demo_results.mat'),'result');
fprintf('LNA analytic demo: K=%.6g mu=%.6g |Delta|=%.6g; lowest grid NF %.6g dB.\n',K,mu,delta,bestNF);
fprintf('NF at exact optimum %.6g dB; conjugate-matched load magnitude %.6g.\n',nfig(Fmin,rn,gopt,gopt),abs(matchedLoad));
assert(isfinite(bestNF)&&~isempty(index));
if makePlot
 fig=figure('Visible','off','Color','w','Position',[100 100 1100 450]);
 subplot(1,2,1);scatter(real(gs),imag(gs),10,nf,'filled');axis equal;grid on;colorbar;
 xlabel('Re Gamma_S');ylabel('Im Gamma_S');title('Noise figure (dB), passive source grid');hold on;plot(real(gopt),imag(gopt),'kx','MarkerSize',10,'LineWidth',2);
 subplot(1,2,2);scatter(nf,gainDb,9,abs(gs),'filled');grid on;colorbar;xlabel('Noise figure (dB)');ylabel('Available gain (dB)');
 title('Passive source/load grid; color = |Gamma_S|');
 sgtitle('Single-frequency analytic example; no ADS simulation or measured validation');
 print(fig,fullfile(root,'docs','preview.svg'),'-dsvg');close(fig);
end
end
