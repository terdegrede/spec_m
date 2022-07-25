function  P = assor_fn(M, F, C, A, mu, T, GC, mm)
% P = assor_fn(M, F, C, A, mu, T, GC, mm)
% This function allows to compute the 3CDH model for sexual reproduction
% with assortativity.
% Inputs:
%           - M  (1x1): Number of individuals
%           - F  (1xF): Number of genes per individual
%           - C  (1x1): Number of genes in compatibility segment
%           - A  (1x1): Number of genes in assortativity segment
%           - mu (1x1): Mutation rate
%           - T  (1x1): Number of generations
%           - GC (1x1): Threshold for selection of mating partner (Compatibility)
%           - mm (1x1): Number of run
% Outputs:
%           - P (MxF): Population of M individuals with genomes of size F
%                      after T generations.

%% Allocation
P = -1*ones(M, F);
Pn = P;

%% Main loop
for t = 0: T
    
    % Full
    dF = diag(nan*ones(1, M)) + pdist2(P, P, 'hamming')*F;

    % Hamming distances -compatibility- "all genomes against all genomes" 
    dC = diag(nan*ones(1, M)) + pdist2(P(:, 1:C), P(:, 1:C), 'hamming')*C;
    
    % Assortativity
    dA = diag(nan*ones(1, M)) + ...
        pdist2(P(:, end-A+1: end), P(:, end-A+1: end), 'hamming')*A;

    % Neutral
    dN = diag(nan*ones(1, M)) + ...
        pdist2(P(:, C+1: end-A), P(:, C+1: end-A), 'hamming')*(F - (A + C));

    % Saving data in genertion 
    saveP_fn(M, F, C, A, t, mu, P, dF, dC, dA, dN, GC, mm)
    m = 1;
    while m <= M

        % 1st individual
        ix_al = randi([1, M]);
        al = P(ix_al, :);

        if isempty(find(dC(ix_al, :) <= GC, 1)) == 0 % are there individuals close enough?
            % 2nd individual // Finding considering only B
            vc = dC(ix_al, :) <= GC; % List of indexes
                
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            PC = P(vc, :);              % Set of compatible genomes
            PCA = PC(:, end-A+1: end);  % Set of assortativity comp. segments
            dCAal = pdist2(al(end-A+1:end), PCA, 'hamming')*A;
            bt = PC(find(dCAal == min(dCAal), 1), :);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            % Recombination
            tmp = round(rand(size(al)));
            rm = tmp.*al + (1-tmp).*bt;

            % Mutation
            for n = 1: F
                rm(n) = rm(n)*(1 - 2*(rand < mu));
            end
            Pn(m, :) = rm;
            m = m+ 1;
        end
    end
    P = Pn;
end
end
