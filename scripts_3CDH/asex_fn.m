function  P = asex_fn(M, F, mu, T, mm)
% P = asex_fn(M, F, mu, T, mm)
% This function allows to compute the DH model for asexual reproduction.
% Each inidivual genome is a string of +1s and -1s
%
% Inputs:
%           - M  (1x1): Number of individuals
%           - F  (1xF): Number of genes per individual
%           - mu (1x1): Mutation rate
%           - T  (1x1): Number of generations
%           - mm (1x1): Number of run
%
% Outputs:
%           - P (MxF): Population of M individuals with genomes of size F
%                      after T generations.

%% Allocation
P = -1*ones(M, F);
Pn = P;


%% Main loop
for t = 0: T
    
    % Hamming distances "all genomes against all genomes"
    dF = diag(nan*ones(1, M)) + pdist2(P, P, 'hamming')*F;
    
    % Saving data in genertion t
    saveP_fn(M, F, 0, 0, t, mu, P, dF, 0, 0, 0, 0, mm) 

    m = 1;
    while m <= M
        
        % 1st individual
        ix_al = randi([1, M]);
        al = P(ix_al, :);

        % Mutation
        for n = 1: F            
            al(n) = al(n)*(1 - 2*(rand < mu));
        end
        Pn(m, :) = al;
        m = m+ 1;

    end
    P = Pn;
end
end