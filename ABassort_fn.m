function P = ABassort_fn(M, N, A, B, mu, T, dS, dB, mm)
% This function allows to compute -and save data from- the model
% considering controlled A (assortativity) and B (similarity) lengths.
%
% Inputs:
%           M : Numer of genomes
%           N : Number of genes per genome
%           B : Mating trait length
%           A : Assortativity trait length
%           T : Number of generations 
%           mu: Mutation rate
%           dS: Genetic distance treshold for mating with full genome
%           dB: Genetic distance treshold for mating with traits
%           mm: Numer of run. Parameter used for several executions.
%
% Outputs:
%           P : Final population
% Data storage:
%           Saves de number of genomes(M), the number of genes per genome
%           (N), the mating trait length(B), the mutation rate(mu), and the 
%           population(P) at each generation(t).
%
%
% ** Example **
%
% M = 500;            % Numer of individuals
% N = 1000;           % Genes per individual
% B = 200;            % Mating segment
% mu = 0.001;         % Mutation rate
% T = 100;            % Numer of generations
%
% dB = 0.05*B;        % Treshold for reproductive isolation
% dS = dB*N/B;        % Treshold for genetic distance
%
% P = ABassort_fn(M, N, A,B, mu, T, dS, dB);


%% Genetic distance for mating
G = dB;

%% Allocation
P = zeros(M, N);
Pn = zeros(M, N);

%% Main loop
for t = 0: T
    PB = P(:, 1:B); % Set of mating segments  (full genome or mating trait) for comparison

    % Hamming distances of mating segment (full genome or mating trait)
    D = diag(nan*ones(1, M)) + pdist2(PB, PB, 'hamming')*B;
    
    m = 1;
    while m <= M
        
        % 1st indiv
        ix_al = randi([1, M]);
        al = P(ix_al, :);
        
        if isempty(find(D(ix_al, :) <= G, 1)) == 0 % are there individuals close enough?
 
            % 2nd indiv
            vc = find(D(ix_al, :) <= G); % List of indexes  
            
            % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
            PC = P(vc, :);
            PCA = PC(:, end-A+1:end);
            DCA = pdist2(al(end-A+1:end), PCA, 'hamming')*(A);
            bt = PC(find(DCA == min(DCA), 1), :);
            % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
            
            % -
            tmp = round(rand(size(al)));
            rm = tmp.*al + (1-tmp).*bt;
            for n = 1: N
                % Offspring               
                % Mutation
    
                rm(n) = (rm(n)-(rand < mu))^2;
            end
            Pn(m, :) = rm;
            m = m+ 1;
        end
        %disp(m)
    end
    P = Pn;
    
    % Saving data: 
    save_parfor(M, N, A, B, t, mu, P, mm)
    
end