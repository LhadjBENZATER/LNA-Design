function varargout = untitled(varargin)
gui_Singleton = 1;gui_State = struct('gui_Name', mfilename, 'gui_Singleton',  gui_Singleton, 'gui_OpeningFcn', @untitled_OpeningFcn, 'gui_OutputFcn',  @untitled_OutputFcn, 'gui_LayoutFcn',  [] , 'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;guidata(hObject, handles);
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function S11MAG_Callback(hObject, eventdata, handles)
function S11MAG_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');x = get(handles.S11MAG,'String');
 if isempty(x)
   fprintf('Error: Enter Text first\n');
 else
 end
end
function S11PH_Callback(hObject, eventdata, handles)
function S11PH_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gamamp2_Callback(hObject, eventdata, handles)
function gamamp2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gamang2_Callback(hObject, eventdata, handles)
function gamang2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S12MAG_Callback(hObject, eventdata, handles)
function S12MAG_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S12PH_Callback(hObject, eventdata, handles)
function S12PH_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S21MAG_Callback(hObject, eventdata, handles)
function S21MAG_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S21PH_Callback(hObject, eventdata, handles)
function S21PH_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S22MAG_Callback(hObject, eventdata, handles)
function S22MAG_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function S22PH_Callback(hObject, eventdata, handles)
function S22PH_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Gopt_Callback(hObject, eventdata, handles)
function Gopt_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Kvalue_Callback(hObject, eventdata, handles)
function Kvalue_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Dvalue_Callback(hObject, eventdata, handles)
function Dvalue_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Gavalue_Callback(hObject, eventdata, handles)
function sss_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function glam1_Callback(hObject, eventdata, handles)
function glam1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function glang1_Callback(hObject, eventdata, handles)
function glang1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function glam2_Callback(hObject, eventdata, handles)
function glam2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function glang2_Callback(hObject, eventdata, handles)
function glang2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function dsd_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Fminvalue_Callback(hObject, eventdata, handles)
function xx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function rnvalue_Callback(hObject, eventdata, handles)
function ss_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gamamp1_Callback(hObject, eventdata, handles)
function gamamp1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gamang1_Callback(hObject, eventdata, handles)
function gamang1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Fvalue_Callback(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
set(hObject,'BackgroundColor','white');x = get(handles.Fvalue,'String');
 if isempty(x)
 fprintf('Error: Enter Text first\n');
 else
 end
end
function zz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Goptamp_Callback(hObject, eventdata, handles)
function az_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Goptamp_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Goptph_Callback(hObject, eventdata, handles)
function Goptph_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Gvalue_Callback(hObject, eventdata, handles)
function Gvalue_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function maggL_Callback(hObject, eventdata, handles)
function maggL_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function anggL_Callback(hObject, eventdata, handles)
function anggL_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function out_center_Callback(hObject, eventdata, handles)
function out_center_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function in_center_Callback(hObject, eventdata, handles)
function gGampf_Callback(hObject, eventdata, handles)
function gGampf_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gGanglef_Callback(hObject, eventdata, handles)
function gGanglef_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gLampf_Callback(hObject, eventdata, handles)
function gLampf_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gLanglef_Callback(hObject, eventdata, handles)
function gLanglef_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Gf_Callback(hObject, eventdata, handles)
function Gf_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function fmin_Callback(hObject, eventdata, handles)
function fmin_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function fmax_Callback(hObject, eventdata, handles)
function fmax_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function fstep_Callback(hObject, eventdata, handles)
function fstep_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function in_radius_Callback(hObject, eventdata, handles)
function in_radius_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function in_center_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function out_radius_Callback(hObject, eventdata, handles)
function out_radius_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function aaa_Callback(hObject, eventdata, handles)
function aaa_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zzz_Callback(hObject, eventdata, handles)
function zzz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%                %%%%%%%%%%%%%%      %%%%%%%%%%%%%%%%%%%%%%%            %%%%%%%%%%%%%%                
function RESET_Callback(hObject, eventdata, handles)
Ga= set(handles.Gavalue,'string',num2str(0));K= set(handles.Kvalue,'string',num2str(0));
D= set(handles.Dvalue,'string',num2str(0));Gopt= set(handles.Gopt,'string',num2str(0));
Phi2= set(handles.Phivalue,'string',num2str(0));Gmsg= set(handles.out_center,'string',num2str(0));
Gt= set(handles.in_center,'string',num2str(0));maggL= set(handles.maggL,'string',num2str(0));
anggL= set(handles.anggL,'string',num2str(0));amp1= set(handles.gamamp1,'string',num2str(0));
amp2= set(handles.gamamp2,'string',num2str(0));ang1= set(handles.gamang1,'string',num2str(0));
ang2= set(handles.gamang2,'string',num2str(0));amp1= set(handles.glam1,'string',num2str(0));
amp2= set(handles.glam2,'string',num2str(0));ang1= set(handles.glang1,'string',num2str(0));
ang2= set(handles.glang2,'string',num2str(0));Gamp1= set(handles.gGampf,'string',num2str(0));
Gang1= set(handles.gGanglef,'string',num2str(0));Gamp2= set(handles.gLampf,'string',num2str(0));
Gang2= set(handles.gLanglef,'string',num2str(0));Gmax= set(handles.Gf,'string',num2str(0));
L1= set(handles.Lin1,'string',num2str(0));C1= set(handles.Cin1,'string',num2str(0));
L2= set(handles.Lin2,'string',num2str(0));C2= set(handles.Cin2,'string',num2str(0));
L1= set(handles.Lout1,'string',num2str(0));C1= set(handles.Cout1,'string',num2str(0));
L2= set(handles.Lout2,'string',num2str(0));C2= set(handles.Cout2,'string',num2str(0));
ctype= set(handles.out2,'string',num2str([]));ltype= set(handles.out1,'string',num2str([]));
ctype= set(handles.out4,'string',num2str([]));ltype= set(handles.out3,'string',num2str([]));
ctype= set(handles.in2,'string',num2str([]));ltype= set(handles.in1,'string',num2str([]));
ctype= set(handles.in4,'string',num2str([]));ltype= set(handles.in3,'string',num2str([]));
rs= set(handles.in_radius,'string',num2str(0));rl= set(handles.out_radius,'string',num2str(0));
aaa= set(handles.aaa,'string',num2str(0));zzz= set(handles.zzz,'string',num2str(0));
clear

function Stability_Callback(hObject, eventdata, handles)
S11_MAG= str2double( get(handles.S11MAG,'string'));S12_MAG= str2double( get(handles.S12MAG,'string'));
S21_MAG= str2double( get(handles.S21MAG,'string'));S22_MAG= str2double( get(handles.S22MAG,'string'));
S11_PH= str2double( get(handles.S11PH,'string'));S12_PH= str2double( get(handles.S12PH,'string'));
S21_PH= str2double( get(handles.S21PH,'string'));S22_PH= str2double( get(handles.S22PH,'string'));
S=[ S11_MAG*exp(S11_PH*1i*pi/180) S12_MAG*exp(S12_PH*1i*pi/180); S21_MAG*exp(S21_PH*1i*pi/180) S22_MAG*exp(S22_PH*1i*pi/180)];
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);K= set(handles.Kvalue,'string',num2str(K));
D= set(handles.Dvalue,'string',num2str(D));[cs,rs] = sgcirc(S,'s');[cl,rl] = sgcirc(S,'l');
gGoptamp= str2double( get(handles.Goptamp,'string'));gGoptph= str2double( get(handles.Goptph,'string'));
gGopt=gGoptamp*exp(gGoptph*1i*pi/180);gl = conj(gout(S,gGopt));figure;hsm = smithplot;hold on
smithcir(cs,rs,10,3);smithcir(cl,rl,10,3);title('Stability circles');plot([gGopt,gl],'*');
legend('Input stability circle','output stability circle','Gamma_o_p_t')
rs= set(handles.in_radius,'string',num2str(rs));rl= set(handles.out_radius,'string',num2str(rl));
Rs=abs(cs);Rl=abs(cl);aaa=rad2deg(angle(cs));zzz=rad2deg(angle(cl));
cs= set(handles.in_center,'string',num2str(Rs));cl= set(handles.out_center,'string',num2str(Rl));
aaa= set(handles.aaa,'string',num2str(aaa));zzz= set(handles.zzz,'string',num2str(zzz));

function G_vs_PHI_Callback(hObject, eventdata, handles)
S11_MAG= str2double( get(handles.S11MAG,'string'));S11_PH= str2double( get(handles.S11PH,'string'));
S12_MAG= str2double( get(handles.S12MAG,'string'));S12_PH= str2double( get(handles.S12PH,'string'));
S21_MAG= str2double( get(handles.S21MAG,'string'));S21_PH= str2double( get(handles.S21PH,'string'));
S22_MAG= str2double( get(handles.S22MAG,'string'));S22_PH= str2double( get(handles.S22PH,'string'));
S=[ S11_MAG*exp(S11_PH*1i*pi/180) S12_MAG*exp(S12_PH*1i*pi/180); S21_MAG*exp(S21_PH*1i*pi/180) S22_MAG*exp(S22_PH*1i*pi/180)];
Fmin= str2double( get(handles.Fminvalue,'string'));gGoptamp= str2double( get(handles.Goptamp,'string'));
gGoptph= str2double( get(handles.Goptph,'string'));gGopt=gGoptamp*exp(gGoptph*1i*pi/180);
rn= str2double( get(handles.rnvalue,'string'));F= str2double( get(handles.Fvalue,'string'));
[Ga,~,phi2] = Phi(S,F,Fmin,rn,gGopt);Phi2= set(handles.Phivalue,'string',num2str(phi2));
Ga= set(handles.Gavalue,'string',num2str(Ga));

function Intersection_Callback(hObject, eventdata, handles)
S11_MAG= str2double( get(handles.S11MAG,'string'));S11_PH= str2double( get(handles.S11PH,'string'));
S12_MAG= str2double( get(handles.S12MAG,'string'));S12_PH= str2double( get(handles.S12PH,'string'));
S21_MAG= str2double( get(handles.S21MAG,'string'));S21_PH= str2double( get(handles.S21PH,'string'));
S22_MAG= str2double( get(handles.S22MAG,'string'));S22_PH= str2double( get(handles.S22PH,'string'));
S=[ S11_MAG*exp(S11_PH*1i*pi/180) S12_MAG*exp(S12_PH*1i*pi/180); S21_MAG*exp(S21_PH*1i*pi/180) S22_MAG*exp(S22_PH*1i*pi/180)];
Fmin= str2double( get(handles.Fminvalue,'string'));gGoptamp= str2double( get(handles.Goptamp,'string'));
gGoptph= str2double( get(handles.Goptph,'string'));gGopt=gGoptamp*exp(gGoptph*1i*pi/180);
rn= str2double( get(handles.rnvalue,'string'));
[filenameS1,pathS1]=uigetfile({'*.S2P;'},'D:\PFE\Matlab');
filepathS1=fullfile(pathS1,filenameS1);
unmatched_amp = read(rfckt.amplifier, filepathS1);
analyze(unmatched_amp, 1e9:100e6:3e9);fc = 2e9;F= str2double( get(handles.Fvalue,'string'));
[c,r] = nfcirc(F,Fmin,rn,gGopt);G_Desired= str2double( get(handles.Gvalue,'string'));
figure;hsm = smithplot;circle(unmatched_amp,fc,'Stab','In','Stab','Out','Ga',G_Desired,'NF',F,hsm);
legend('Input stability circle','output stability circle',['Gmax=' num2str(G_Desired) ' dB'],['Constant F=' num2str(F) ' dB'])
title('Intersection of Noise figure and Gain circles');legend('Location','SouthEast')
phi = linspace(0,2*pi,721);gG = c + r*exp(1i*phi);G = 10*log10(sgain(S,gG,'a'));[Gmax,i] = max(G);
gammaG = gG(i);gammaL = conj(gout(S,gammaG));Gmax= set(handles.Gf,'string',num2str(Gmax));
Gamp1=abs(gammaG);Gamp2=abs(gammaL);Gang1=rad2deg(angle(gammaG));Gang2=rad2deg(angle(gammaL));
Gamp1= set(handles.gGampf,'string',num2str(Gamp1));Gang1= set(handles.gGanglef,'string',num2str(Gang1));
Gamp2= set(handles.gLampf,'string',num2str(Gamp2));Gang2= set(handles.gLanglef,'string',num2str(Gang2));

function All_circles_Callback(hObject, eventdata, handles)%Plot global interface results
S11_MAG= str2double( get(handles.S11MAG,'string'));S11_PH= str2double( get(handles.S11PH,'string'));
S12_MAG= str2double( get(handles.S12MAG,'string'));S12_PH= str2double( get(handles.S12PH,'string'));
S21_MAG= str2double( get(handles.S21MAG,'string'));S21_PH= str2double( get(handles.S21PH,'string'));
S22_MAG= str2double( get(handles.S22MAG,'string'));S22_PH= str2double( get(handles.S22PH,'string'));
S=[ S11_MAG*exp(S11_PH*1i*pi/180) S12_MAG*exp(S12_PH*1i*pi/180); S21_MAG*exp(S21_PH*1i*pi/180) S22_MAG*exp(S22_PH*1i*pi/180)];
[K,mu,D,B1,B2,C1,C2,D1,D2] = sparam(S);Fmin= str2double( get(handles.Fminvalue,'string'));
gGoptamp= str2double( get(handles.Goptamp,'string'));gGoptph= str2double( get(handles.Goptph,'string'));
gGopt=gGoptamp*exp(gGoptph*1i*pi/180);rn= str2double( get(handles.rnvalue,'string'));
F= str2double( get(handles.Fvalue,'string'));G_Desired= str2double( get(handles.Gvalue,'string'));
[cs,rs] = sgcirc(S,'s');[cl,rl] = sgcirc(S,'l');gl = conj(gout(S,gGopt));Gopt=10*log10(sgain(S,gGopt,'a'));
[c,r] = nfcirc(F,Fmin,rn,gGopt);[ca,ra] = sgcirc(S,'a',Gopt);[ca0,ra0] = sgcirc(S,'a',G_Desired);
phi = linspace(0,2*pi,721);gG = c + r*exp(1i*phi);G = 10*log10(sgain(S,gG,'a'));[Gmax,i] = max(G);
gammaG = gG(i);gammaL = conj(gout(S,gammaG));figure;hsm = smithplot;hold on;
smithcir(c,r,10,3);smithcir(ca,ra,10,3);smithcir(ca0,ra0,10,3);smithcir(cs,rs,10,3);smithcir(cl,rl,10,3)
plot([gGopt,gl],'*');plot([gammaG,gammaL],'*');title('Stability, noise figure, and gain circles')
legend(['Constant F=' num2str(F) ' dB'],['G_o_p_t=' num2str(Gopt) ' dB'],['Maximum Available Gain=' num2str(G_Desired) ' dB'],'Input stability circle','Output stability circle','Gamma_o_p_t','Gamma_D_e_s_i_r_e_d')
Gmax= set(handles.Gf,'string',num2str(Gmax));
Gamp1=abs(gammaG);Gamp2=abs(gammaL);Gang1=rad2deg(angle(gammaG));Gang2=rad2deg(angle(gammaL));
Gamp1= set(handles.gGampf,'string',num2str(Gamp1));Gang1= set(handles.gGanglef,'string',num2str(Gang1));
Gamp2= set(handles.gLampf,'string',num2str(Gamp2));Gang2= set(handles.gLanglef,'string',num2str(Gang2));
K= set(handles.Kvalue,'string',num2str(K));D= set(handles.Dvalue,'string',num2str(D));
Gopt= set(handles.Gopt,'string',num2str(Gopt));
rs= set(handles.in_radius,'string',num2str(rs));rl= set(handles.out_radius,'string',num2str(rl));
Rs=abs(cs);Rl=abs(cl);aaa=rad2deg(angle(cs));zzz=rad2deg(angle(cl));
cs= set(handles.in_center,'string',num2str(Rs));cl= set(handles.out_center,'string',num2str(Rl));
aaa= set(handles.aaa,'string',num2str(aaa));zzz= set(handles.zzz,'string',num2str(zzz));
maggL=abs(gl);anggL=rad2deg(angle(gl));
maggL= set(handles.maggL,'string',num2str(maggL));anggL= set(handles.anggL,'string',num2str(anggL));
gs = circint(c,r,ca0,ra0);   %%%%%%%%           intercsection source gamma
amp1=abs(gs(1)); ang1=rad2deg(angle(gs(1)));amp2=abs(gs(2)); ang2=rad2deg(angle(gs(2)));
amp1= set(handles.gamamp1,'string',num2str(amp1));amp2= set(handles.gamamp2,'string',num2str(amp2));
ang1= set(handles.gamang1,'string',num2str(ang1));ang2= set(handles.gamang2,'string',num2str(ang2));
gl = conj(gout(S,gs));     %ששששששש         intercsection load gamma
amp1=abs(gl(1)); ang1=rad2deg(angle(gl(1)));amp2=abs(gl(2)); ang2=rad2deg(angle(gl(2)));
amp1= set(handles.glam1,'string',num2str(amp1));amp2= set(handles.glam2,'string',num2str(amp2));
ang1= set(handles.glang1,'string',num2str(ang1));ang2= set(handles.glang2,'string',num2str(ang2));
Z_G = gamma2z(gammaG);Z_L = gamma2z(gammaL);Z0=50;f0=2e9;ZL=conj(Z_G);RL=real(ZL);XL=imag(ZL);%INPUT MATCHING NETWORK
if abs(real(ZL/Z0))>=1 
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1   
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C1 ctype]=B2LC(B1,f0);[L1 ltype]=X2LC(X1,f0); ctype= set(handles.in2,'string',num2str(ctype));
ltype= set(handles.in1,'string',num2str(ltype));[L2 ctype]=B2LC(B2,f0);[C2 ltype]=X2LC(X2,f0);
ctype= set(handles.in3,'string',num2str(ctype));ltype= set(handles.in4,'string',num2str(ltype));
ZL=conj(Z_L);RL=real(ZL);XL=imag(ZL);%OUTPUT MATCHING NETWORK
if abs(real(ZL/Z0))>=1 
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);  B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1 
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C_1 ctype]=B2LC(B1,f0);[L_1 ltype]=X2LC(X1,f0);ctype= set(handles.out2,'string',num2str(ctype));
ltype= set(handles.out1,'string',num2str(ltype));[L_2 ctype]=B2LC(B2,f0);[C_2 ltype]=X2LC(X2,f0);
ctype= set(handles.out3,'string',num2str(ctype));ltype= set(handles.out4,'string',num2str(ltype));
l1= set(handles.Lin1,'string',num2str(L1));c1= set(handles.Cin1,'string',num2str(C1));
l2= set(handles.Lin2,'string',num2str(L2));c2= set(handles.Cin2,'string',num2str(C2));
l_1= set(handles.Lout1,'string',num2str(L_1));c_1= set(handles.Cout1,'string',num2str(C_1));
l_2= set(handles.Lout2,'string',num2str(L_2));c_2= set(handles.Cout2,'string',num2str(C_2));

function match_Callback(hObject, eventdata, handles)
S11_MAG= str2double( get(handles.S11MAG,'string'));S11_PH= str2double( get(handles.S11PH,'string'));
S12_MAG= str2double( get(handles.S12MAG,'string'));S12_PH= str2double( get(handles.S12PH,'string'));
S21_MAG= str2double( get(handles.S21MAG,'string'));S21_PH= str2double( get(handles.S21PH,'string'));
S22_MAG= str2double( get(handles.S22MAG,'string'));S22_PH= str2double( get(handles.S22PH,'string'));
S=[ S11_MAG*exp(S11_PH*1i*pi/180) S12_MAG*exp(S12_PH*1i*pi/180); S21_MAG*exp(S21_PH*1i*pi/180) S22_MAG*exp(S22_PH*1i*pi/180)];
f1= str2double( get(handles.fmin,'string'));f2= str2double( get(handles.fmax,'string'));
f3=str2double( get(handles.fstep,'string'));freq=10^9*[f1:f3:f2];
[filenameS1,pathS1]=uigetfile({'*.S2P;'},'D:\PFE\Matlab');
filepathS1=fullfile(pathS1,filenameS1);
%unmatched_amp = read(rfckt.amplifier, filepathS1);
Fmin= str2double( get(handles.Fminvalue,'string'));gGoptamp= str2double( get(handles.Goptamp,'string'));
gGoptph= str2double( get(handles.Goptph,'string'));gGopt=gGoptamp*exp(gGoptph*1i*pi/180);
rn= str2double( get(handles.rnvalue,'string'));F= str2double( get(handles.Fvalue,'string'));
[c,r] = nfcirc(F,Fmin,rn,gGopt);phi = linspace(0,2*pi,721);gG = c + r*exp(1i*phi);G = 10*log10(sgain(S,gG,'a'));[Gmax,i] = max(G);
gammaG = gG(i);gammaL = conj(gout(S,gammaG));Z_G = gamma2z(gammaG);Z_L = gamma2z(gammaL);Z0=50;f0=2e9;
Gmax= set(handles.Gf,'string',num2str(Gmax));Gamp1=abs(gammaG);Gamp2=abs(gammaL);
Gang1=rad2deg(angle(gammaG));Gang2=rad2deg(angle(gammaL));Gamp1= set(handles.gGampf,'string',num2str(Gamp1));
Gang1= set(handles.gGanglef,'string',num2str(Gang1));Gamp2= set(handles.gLampf,'string',num2str(Gamp2));
Gang2= set(handles.gLanglef,'string',num2str(Gang2));ZL=conj(Z_G);RL=real(ZL);XL=imag(ZL);%INPUT MATCHING NETWORK
if abs(real(ZL/Z0))>=1 
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1   
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C1 ctype]=B2LC(B1,f0);[L1 ltype]=X2LC(X1,f0); ctype= set(handles.in2,'string',num2str(ctype));
ltype= set(handles.in1,'string',num2str(ltype));[L2 ctype]=B2LC(B2,f0);[C2 ltype]=X2LC(X2,f0);
ctype= set(handles.in3,'string',num2str(ctype));ltype= set(handles.in4,'string',num2str(ltype));
ZL=conj(Z_L);RL=real(ZL);XL=imag(ZL);%OUTPUT MATCHING NETWORK
if abs(real(ZL/Z0))>=1 
B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5);X1=1/B1+XL*Z0/RL-Z0/(B1*RL);X2=1/B2+XL*Z0/RL-Z0/(B2*RL);
elseif abs(real(ZL/Z0))<=1 
X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL;B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5;
end
[C_1 ctype]=B2LC(B1,f0);[L_1 ltype]=X2LC(X1,f0);ctype= set(handles.out2,'string',num2str(ctype));
ltype= set(handles.out1,'string',num2str(ltype));[L_2 ctype]=B2LC(B2,f0);[C_2 ltype]=X2LC(X2,f0);
ctype= set(handles.out3,'string',num2str(ctype));ltype= set(handles.out4,'string',num2str(ltype));
l1= set(handles.Lin1,'string',num2str(L1));c1= set(handles.Cin1,'string',num2str(C1));
l2= set(handles.Lin2,'string',num2str(L2));c2= set(handles.Cin2,'string',num2str(C2));
l_1= set(handles.Lout1,'string',num2str(L_1));c_1= set(handles.Cout1,'string',num2str(C_1));
l_2= set(handles.Lout2,'string',num2str(L_2));c_2= set(handles.Cout2,'string',num2str(C_2));
unmatched_amp = read(rfckt.amplifier,filepathS1);analyze(unmatched_amp,freq);
In1 = rfckt.cascade('Ckts',{rfckt.shuntrlc('C',C1),rfckt.seriesrlc('L',L1)});
In2 = rfckt.cascade('Ckts',{rfckt.shuntrlc('L',L2),rfckt.seriesrlc('L',C2)});
Out2 = rfckt.cascade('Ckts',{rfckt.seriesrlc('C',C_2),rfckt.shuntrlc('L',L_2)});
Out1 = rfckt.cascade('Ckts',{rfckt.seriesrlc('L',L_1),rfckt.shuntrlc('C',C_1)});
Matched_Amp11 = rfckt.cascade('Ckts',{In1,unmatched_amp,Out1});analyze(Matched_Amp11,freq);
Matched_Amp12 = rfckt.cascade('Ckts',{In1,unmatched_amp,Out2});analyze(Matched_Amp12,freq);
Matched_Amp21 = rfckt.cascade('Ckts',{In2,unmatched_amp,Out1});analyze(Matched_Amp21,freq);
Matched_Amp22 = rfckt.cascade('Ckts',{In2,unmatched_amp,Out2});analyze(Matched_Amp22,freq);
figure;subplot(2,1,1);p=plot(unmatched_amp,'Gt');p.LineWidth = 2;p.Marker = '*';hold on;
p=plot(Matched_Amp11,'Gt');p.LineStyle = '-.';p.LineWidth = 3;p=plot(Matched_Amp12,'Gt');p.LineStyle = ':';p.LineWidth = 4;
p=plot(Matched_Amp21,'Gt');p.LineStyle = '-.';p.LineWidth = 3;p=plot(Matched_Amp22,'Gt');p.LineStyle = ':';p.LineWidth = 4;
p=plot(unmatched_amp,'Gmsg');p.LineWidth = 4;%Maximum stable gain
xlabel('Frequency (GHz)');ylabel('Available gain (dB)');title('Available gains G_a of all configurations')
legend('G_a - Unmatched','G_a - Matched (IN1 & Out1)','G_a - Matched (IN1 & Out2)','G_a - Matched (IN2 & Out1)','G_a - Matched (IN2 & Out2)','G_m_s_g Maximum stable gain')
subplot(2,1,2);p=plot(unmatched_amp,'NF');p.LineWidth = 2;p.Marker = '*';hold on;p=plot(Matched_Amp11,'NF');p.LineWidth = 3;p.LineStyle = '-.';
p=plot(Matched_Amp12,'NF');p.LineWidth = 4;p.LineStyle = ':';p=plot(Matched_Amp21,'NF');p.LineWidth = 3;p.LineStyle = '-.';
p=plot(Matched_Amp22,'NF');p.LineWidth = 4;p.LineStyle = ':';p=plot(unmatched_amp,'Fmin');p.LineWidth = 2;p.Marker = 's';
xlabel('Frequency (GHz)');ylabel('Noise figure (dB)');title('Noise figure F of all configurations')
legend('F - Unmatched','F - Matched  (IN1 & Out1)','F - Matched  (IN1 & Out2)','F - Matched  (IN2 & Out1)','F - Matched  (IN2 & Out2)','Fmin')
figure;subplot(2,2,1);[hAx,hLine1,hLine2] = plotyy(Matched_Amp11,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)');
title('Configuration 1 (IN1 & Out1)')
subplot(2,2,2);[hAx,hLine1,hLine2] = plotyy(Matched_Amp12,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 2 (IN1 & Out2)')
subplot(2,2,3);[hAx,hLine1,hLine2] = plotyy(Matched_Amp21,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 3 (IN2 & Out1)')
subplot(2,2,4);[hAx,hLine1,hLine2] = plotyy(Matched_Amp22,'Gt','dB','NF','dB');
xlabel('Frequency (GHz)');ylabel(hAx(1),'Available gain (dB)');ylabel(hAx(2),'Noise figure (dB)')
title('Configuration 4 (IN2 & Out2)')
