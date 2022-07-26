function [xdata, ydata, NOC] =...
    netwk_fn(M, F, C, A, T, mu, G, mm, c, lstyle, ecolor, xinput, yinput)
% netwk_fn(M, F, C, A, T, mu, G, mm, c, lstyle, ecolor, xinput, yinput)
%
% Inputs:
%        - c (scalar) :
%                      1 ) dF
%                      2 ) dC
%                      3 ) dA
%                      4 ) dN
%       - xinput & yinput : Predefined positions for each node.
%       - style : Color and type of line
%
% Outputs:
%       - xdata & ydata : Positions of each node in the output network.
%
[~, dF, dA, dC, dN] = loadP_fn(M, F, C, A, T, mu, G, mm);
if c == 1
    DR = dF;
elseif c == 2
    DR = dC;
elseif c == 3
    DR = dA;
elseif c == 4
    DR = dN;

end

figure('WindowState','maximized', 'Visible','off');
DR(DR <= G) = 1;
DR(DR > G) = 0;
GR = graph(DR, 'upper' ,'omitselfloops');
GR_h = plot(GR);
axis square

GR_h.NodeLabel = {};
GR_h.EdgeAlpha = 1;
GR_h.EdgeColor = [0 0 1];
xdata = GR_h.XData;
ydata = GR_h.YData;
GR_h.LineStyle = lstyle;
GR_h.EdgeColor = ecolor;

if yinput ~=0
    GR_h.XData = xinput;
    GR_h.YData = yinput;
end

% Number of clusters
[~, CGR] = conncomp(GR);
NOC = length(CGR);
end



