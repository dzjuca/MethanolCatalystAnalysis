function pd_dz = pressureFcn(Global, u)
%--------------------------------------------------------------------------
    R   = Global.R_1;%                                       [m3.bar/mol.K]
    T   = Global.T;
    r_p = Global.r_p;
    E_t = Global.E_t;
    mu  = Global.mu;
%--------------------------------------------------------------------------
    FCO2   = u(1);
    FH2    = u(2);
    FCH3OH = u(3);
    FCO    = u(4);
    FH2O   = u(5);
    FN2    = u(6);
    P      = u(7);
%--------------------------------------------------------------------------
    F_total = FCO2 + FH2 + FCH3OH + FCO + FH2O + FN2;
%--------------------------------------------------------------------------
    v       = F_total*R*T/P;
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
    pd_dz = (150/(4*r_p^2))*(((1 - E_t)/(E_t))^2)*(mu*v)*1e-5;
%--------------------------------------------------------------------------
end