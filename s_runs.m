% Scripts for MM runs.
%% N =2500, B = 1000, A = 500
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 1000;            % Mating segment
    A = 500;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

%% N =2500, B = 1000, A = 150 -
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM
    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 1000;            % Mating segment
    A = 150;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);

end

%% N =2500, B = 500, A = 500
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM
    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 500;            % Mating segment
    A = 500;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);

end

%% N =2500, B = 500, A = 150
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM
    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 500;            % Mating segment
    A = 150;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);

end

%% N =2500, B = 20, A = 20
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM
    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 20;            % Mating segment
    A = 20;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);

end

