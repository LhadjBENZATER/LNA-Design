function [LC char1]=B2LC(B_,f1)
% B2LC translates shunt reactance to capacitive or inductive impedance
% depending upon the sign of the input reactance
% POZAR pg232 uses normalised B and X

if B_>=0
    LC=B_/(2*pi*f1);
    char1='C [Farad]';
end

if B_<0
    LC=1/(abs(B_)*(2*pi*f1));
    char1='L [Henry]';
end

end
