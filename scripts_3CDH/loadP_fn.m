function [P, dF, dA, dC, dN] = loadP_fn(M, F, C, A, T, mu, g, mm)
% [P, dF, dA, dC, dN] = loadP_fn(M, F, C, A, T, mu, g, mm)
% This function allows to load data saved using "saveP_fn".
% Outputs:
%           P : Population at generation T
%           dF: Distance matrix of P
%           dC: Distance matrix of PC
%           dA: Distance matrix of PA

load(['../data_3CDH/M_' num2str(M) '_F_' num2str(F) '_C_' num2str(C)... 
    '_A_' num2str(A) '_T_' num2str(T) '_mu_' num2str(mu) ...
    '_mm_' num2str(mm) '.mat'], 'dC', 'dF', 'dA', 'dN', 'P');
end