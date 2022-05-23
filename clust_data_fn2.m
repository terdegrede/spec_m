function clust_data_fn2(A, B, M, N, mu, Trng, mm, dA)
% This function allows to generate data from a population which evolves
% along a given number of generations. Only works for DH2C
%
% Inputs
%       M : Number of individuals
%       N : Full genome length
%       mu: Mutation rate
%       A : Assortativity trait length
%       B : Affinity trait length
%       dA: Treshold to form clusters considering only the A segment
%
% Data storage:
%       Storages a vector with the number of clusters(species) in each
%       generation for the full genome, the B segment and A (if specified).
%
% Example:
%
% clc, clearvars
%
%

% Closeness treshold
dB = 0.05*B;        % Treshold for reproductive isolation
dS = dB*N/B;        % Treshold for genetic distanced
% dA = 0.05*A;
% Allocation
NOC_N = zeros(1, length(Trng));    % Number of clusters - Full genome
NOC_B = NOC_N;                     % Number of clusters - B segment
NOC_A = NOC_B;
parfor n = 1:length(Trng)
    tmp= Trng(n);
    
    % Loading saved data
    P = load_parfor(M, N, A, B, tmp, mu, mm);
    PB = P(:, 1:B);             % 

    % Computing --
        % Adjacency matrices
        DR = diag(nan*ones(1, M)) + pdist2(P, P, 'hamming')*size(P,2); % FG
        DR(DR<=dS) = 1;
        DR(DR>dS) = 0;
        
        DRB = diag(nan*ones(1, M)) + pdist2(PB, PB, 'hamming')*B; % B
        % DRB = pdist2(PB, PB, 'hamming')*B;  % Mating trait
        DRB(DRB<=dB) = 1;
        DRB(DRB>dB) = 0;


        % Graphs--
        Gr = graph(DR,'upper');
        GrB = graph(DRB,'upper');


   
    % Number of clusters vector
    [~, CC] = conncomp(Gr);
    [~, CCB] = conncomp(GrB);

    NOC_N(n) = length(CC);       %FG
    NOC_B(n) = length(CCB);      %MS

    % disp(tmp)
end

save_NOC(M, N, A, B, Trng(end), mu, NOC_A, NOC_B, NOC_N, mm)