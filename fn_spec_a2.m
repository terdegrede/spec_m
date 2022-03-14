function P = fn_spec_a1(M, N, B, mu, T, dS, dB)
% This function allows to compute -and save data from- the model considering 
% assortativity by mating traits. 
%
% Inputs:
%           M : Numer of genomes
%           N : Number of genes per genome
%           B : Mating trait length
%           T : Number of generations 
%           mu: Mutation rate
%           dS: Genetic distance treshold for mating with full genome
%           dB: Genetic distance treshold for mating with traits
%
% Outputs:
%           P : Final population
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
% P = fn_spec_a1(M, N, B, mu, T, dS, dB);


%% Genetic distance for mating
G = dB;

% %% Calculations
% q0 = 1/(1+ 4*mu*M); % Full genome mean overlap
% % q_min = 1-2*G/N;    % Full genome similarity treshold (qmin>= q0)%
% q_min = 1-2*dS/N;    % Full genome similarity treshold (qmin>= q0)%
% qb_min = 1-2*G/B;   % Mating trait similarity treshold


%% Allocation
P = zeros(M, N);
Pn = zeros(M, N);

%% Main loop
for t = 0: T
    % disp(t(mod(t, 50)==0)) % Print generation
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
            % List of compatible individuals
%             PC = [al; P(vc, :)];      % 
%             PCA = PC(:, B+1:end);   % 
%             
%             DCA = diag(nan*ones(1, size(PCA, 1))) +...
%                 pdist2(PCA, PCA, 'hamming')*(N - B);
%             
%             bt = PC(find(DCA(1, :) == min(DCA(1, :)), 1), :);

            PC = P(vc, :);  % List of B-compatible individuals
            PCA = PC(:, B+1:end);
            DCA = pdist2(al(B+1:end), PCA, 'hamming')*(N- B); % A-distances
            
            DCAu = unique(DCA); % A-distances without repeating values
            DCAu_prob = (N - B - DCAu)/sum(N - B - DCAu); % Prop prob

            if length(DCAu_prob)>1
                rsDCAu = randsample(DCAu, 1, true, DCAu_prob); % Random sample
            else
                rsDCAu = DCAu;
            end
            bt = PC(find(DCA == rsDCAu, 1), :);
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
    save_parfor(M, N, B, t, mu, P)
    % Saving for each generation
    t
    
end