% Scripts for MM runs.
% -------------------------------------------------------------------------
% ------------------------ A - D H 2 C ------------------------------------
% -------------------------(A = N - B)-------------------------------------
% 3333333333333333333333333333333333333333333333333333333333333333333333333


% % % % N =2500, B = 400, A = 2100 -----------------------------------------------
% % % % DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 2500;           % Genes per individual
    B = 400;            % Mating segment
    A = 2100;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% -------------------------------------------------------------------------
% ------------------------ A - D H 2 C ------------------------------------
% -------------------------------------------------------------------------
% 3333333333333333333333333333333333333333333333333333333333333333333333333

% % % % N =10000, B = 3000, A = 100 -----------------------------------------------
% % % % DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 3000;            % Mating segment
    A = 100;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% N =10000, B = 4000, A = 100 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 4000;            % Mating segment
    A = 100;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% % % % N =10000, B = 6000, A = 100 -----------------------------------------------
% % % % DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 6000;            % Mating segment
    A = 100;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end


% N =10000, B = 8000, A = 100 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 8000;            % Mating segment
    A = 100;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end


% -------------------------------------------------------------------------
% ------------------------ A - D H 2 C ------------------------------------
% -------------------------(A = N - B)-------------------------------------
% 3333333333333333333333333333333333333333333333333333333333333333333333333
% N =10000, B = 9000, A = 1000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 9000;            % Mating segment
    A = 1000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end
% % % 
% N =10000, B = 7000, A = 3000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 7000;            % Mating segment
    A = 3000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% N =10000, B = 6000, A = 4000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 6000;            % Mating segment
    A = 4000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% N =10000, B = 5000, A = 5000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 5000;            % Mating segment
    A = 5000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% N =10000, B = 4000, A = 6000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 4000;            % Mating segment
    A = 6000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end

% N =10000, B = 3000, A = 7000 -----------------------------------------------
% DO
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 3000;            % Mating segment
    A = 7000;

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = ABassort_fn(M, N, A,B, mu, T, dS, dB, mm);
end



% -------------------------------------------------------------------------
% -------------------------- D H 2 C --------------------------------------
% -------------------------------------------------------------------------
% 3333333333333333333333333333333333333333333333333333333333333333333333333

% DH2C N = 10000 N =10000, B = 9000 --------------------------------------------------
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 9000;            % Mating segment

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = fn_spec(M, N, B, mu, T, dS, dB, mm);
end



% DH2C N = 10000 N =10000, B = 7000 --------------------------------------------------
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 7000;            % Mating segment

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = fn_spec(M, N, B, mu, T, dS, dB, mm);
end


% DH2C N = 10000 N =10000, B = 5000 --------------------------------------------------
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 5000;            % Mating segment

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = fn_spec(M, N, B, mu, T, dS, dB, mm);
end

% DH2C N = 10000 N =10000, B = 4000 --------------------------------------------------
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 4000;            % Mating segment

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = fn_spec(M, N, B, mu, T, dS, dB, mm);
end

% DH2C N = 10000 N =10000, B = 3000 --------------------------------------------------
clc, clearvars, close all
MM = 100; 
parfor mm = 1:MM

    M = 500;            % Numer of individuals
    N = 10000;           % Genes per individual
    B = 3000;            % Mating segment

    mu = 0.001;         % Mutation rate
    T = 200;            % Numer of generations

    dB = 0.05*B;        % Treshold for reproductive isolation
    dS = dB*N/B;        % Treshold for genetic distance

    P = fn_spec(M, N, B, mu, T, dS, dB, mm);
end


