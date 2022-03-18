function h = deg_cls2(M, N, mu, B, Trng)
% This function allows to plot the degree and clusters behavior through the
% generations.
dB = 0.05*B;        % Treshold for reproductive isolation
dS = dB*N/B;        % Treshold for genetic distanced


% Allocation
dv1 = zeros(1, length(Trng));      % Alloc degree vector FG
dv2 = zeros(1, length(Trng));      % Alloc degree vector MS
dnoc1 = zeros(1, length(Trng));    % Alloc NOC vector FG
dnoc2 = zeros(1, length(Trng));    % Alloc NOC vector MS

parfor n = 1: length(Trng)   
    tmp= Trng(n);
    % Loading saved data
    P = load_parfor(M, N, B, mu, tmp);

    % Computing --
        % Adjacency matrices
        DR = pdist2(P, P, 'hamming')*size(P,2); % Full genome
        DR(DR<=dS) = 1;
        DR(DR>dS) = 0;
        
    
        PB = P(:, end-B+1:end);             % AM for mating segments
        DRB = pdist2(PB, PB, 'hamming')*B;  % Mating trait
        DRB(DRB<=dB) = 1;
        DRB(DRB>dB) = 0;

        % Graphs--
        Gr = graph(DR,'upper');
        GrB = graph(DRB,'upper');

    % Degree vector
    dv1(n) = mean(sum(DR, 2)- 1);       %FG
    dv2(n) = mean(sum(DRB, 2)- 1);      %MS
    % Number of clusters vector
    [~, CC] = conncomp(Gr);
    [~, CCB] = conncomp(GrB);
    dnoc1(n) = length(CC);       %FG
    dnoc2(n) = length(CCB);      %MS

    disp(tmp)
end     
    figure('WindowState','maximized', 'Visible','on');
    axes('Position',[-0.20 0.05 0.9 0.9]);   
    plot(Trng, dv1,'bo')
    hold on
    plot(Trng, dv2,'r*')
    axis([Trng(1) Trng(end) 0 M])
    axis square

    axes('Position',[0.3 0.05 0.9 0.9]);
    plot(Trng, dnoc1,'bo')
    hold on
    plot(Trng, dnoc2,'r*')
    axis([Trng(1) Trng(end) 0 40])
    axis square

    % save_pic(B, N, Trng(end))
    % save_dat(B, N, Trng(end), dv1, dv2, dnoc1, dnoc2)
    close all