function [LC char1]=X2LC(X_,f1)
% B2LC translates shunt reactance to capacitive or inductive impedance
% depending upon the sign of the input reactance

if X_>=0
    LC=X_/(2*pi*f1);
    char1='L [Henry]';
end

if X_<0
    LC=1/(abs(X_)*2*pi*f1);
    char1='C [Farad]';
end

end
