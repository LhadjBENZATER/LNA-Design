function run_tests
root=fileparts(fileparts(mfilename('fullpath')));addpath(root,fullfile(root,'examples'));
S=[0.2 0.01;2 0.15];
assert(abs(sgain(S,0,0)-abs(S(2,1))^2)<1e-12);
gopt=0.4*exp(0.2i);assert(abs(nfig(0.5,0.1,gopt,gopt)-0.5)<1e-12);
assert(nfig(0.5,0.1,gopt,0)>0.5);
[K,~,D]=sparam(S);assert(K>1&&D<1);
[K,~,~]=sparam([0.1 0;2 0.2]);assert(isinf(K));
fprintf('All numerical checks passed.\n');
end
