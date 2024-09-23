function [S,I,R] = sir(r,a,S0,I0,T,dt)
    S = zeros(1,T/dt);
    S(1) = S0;
    I = zeros(1,T/dt);
    I(1) = I0;
    R = zeros(1,T/dt);
    for tt = 1:(T/dt)
        dS = (-r*S(tt)*I(tt)) * dt;
        dI = (r*S(tt)*I(tt) - a*I(tt)) * dt;
        dR = (a*I(tt)) * dt;
        S(tt+1) = S(tt) + dS;
        I(tt+1) = I(tt) + dI;
        R(tt+1) = R(tt) + dR;
    end
end
