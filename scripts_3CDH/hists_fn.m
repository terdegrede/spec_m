function h = hists_fn(M, F, C, A, T, mu, g, mm, ax, type, adds)
% h = hists_fn(M, F, C, A, T, mu, g, mm, type)
% Creates a histogram at a specific generation
%
% Inputs:
%         - type (string) : Select between showing overlap/hamming distrib
%                           'hamming'
%                           'overlap'
%         - adds (string) : Lines in x axis
%                           'asex' : no line
%                           'homo' : q0 for homogeneous
%                           'DH': q0, qF for sexual DH
%

% Load distance matrix
[~, dF, ~, ~, ~] = loadP_fn(M, F, C, A, T, mu, g, mm);

% Compute q0 and equivalence
q0 = 1/(1+4*mu*M);
qg = 1-2*g/F;

if type == 'overlap'
    q = 1-2*dF/F;
    iq_wd = (tril(ones(size(q)), -1) == 1);
    h = histogram(q(iq_wd),'Normalization','probability','FaceColor',...
        '#da9100','EdgeColor','#da9100','FaceAlpha',1);

    if adds == 'asex'
    elseif adds == 'homo'
        xline(q0, 'LineWidth', 2,'Color', 'k')

    elseif adds == 'sexu'
        xline(q0, 'LineWidth', 2,'Color', 'k')
        xline(qg, 'LineWidth', 2,'Color', '#014421')
    end
    title('Homogeneous - Overlap Distribution')
    text(0.2, 0.2, ['T = ',num2str(T)])
    axis(ax)

elseif type == 'hamming'
    dF = 2*dF/F;
    iDP_wd = (tril(ones(size(dF)), -1) == 1);
    h = histogram(dF(iDP_wd),'Normalization','probability','FaceColor',...
        '#da9100','EdgeColor','#da9100','FaceAlpha',1);
    if adds == 'asex'
    elseif adds == 'homo'
        xline(1- q0, 'LineWidth', 2,'Color', 'k')

    elseif adds == 'sexu'
        xline(1- q0, 'LineWidth', 2,'Color', 'k')
        xline(1- qg, 'LineWidth', 2,'Color', '#014421')
    end
    title('Homogeneous - Normalized Hamming Distribution')
    text(0.2, 0.2, ['T = ',num2str(T)])
    axis([0 1 0 0.25])

end

end