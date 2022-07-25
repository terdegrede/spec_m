function  P = sex_fn(M, F, mu, T, GF, mm)
% P = sex_fn(M, F, mu, T, GF, mm)
% This function allows to compute the DH model for sexual reproduction.
% Both cases: [homogeneous population model] and [HPM with threshold]
% Inputs:
%           - M  (1x1): Number of individuals
%           - F  (1xF): Number of genes per individual
%           - mu (1x1): Mutation rate
%           - T  (1x1): Number of generations
%           - GF (1x1): Threshold for selection of mating partner
%           - mm (1x1): Number of run
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
    saveP_fn(M, F, 0, 0, t, mu, P, dF, 0, 0, 0, GF, mm)

    m = 1;
    while m <= M

        % 1st individual
        ix_al = randi([1, M]);
        al = P(ix_al, :);

        if isempty(find(dF(ix_al, :) <= GF, 1)) == 0 % are there individuals close enough?
            % 2nd individual
            vc = find(dF(ix_al, :) <= GF);
            bt = P(vc(randi([1, length(vc)])), :);

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