function fig_avg_fn(M, N, B, A, mu, T)
% alloc
NOC_N = zeros(200, 100);
NOC_A = NOC_N;
NOC_B = NOC_N;

for mm = 1: 100
[NOC_N(:, mm), NOC_A(:, mm), NOC_B(:, mm)] = load_NOC(M, N, A, B, T, mu, mm);

end

avg_N = mean(NOC_N, 2);
avg_A = mean(NOC_A, 2);
avg_B = mean(NOC_B, 2);

f1 = figure('Visible','off');
scatter(1:200, NOC_N, 'k', 'filled', 'MarkerFaceAlpha',.005)
hold on
plot(avg_N, 'r', 'LineWidth', 4)
axis([0 200 0 25])


%
f2 = figure('Visible','off');
scatter(1:200, NOC_B, 'k', 'filled', 'MarkerFaceAlpha',.005)
hold on
plot(avg_N, 'b--', 'LineWidth', 4)
axis([0 200 0 25])

%
f3 = figure('Visible','off');
scatter(1:200, NOC_A, 'k', 'filled', 'MarkerFaceAlpha',.005)
hold on
plot(avg_N, 'g', 'LineWidth', 4)
axis([0 200 0 25])

%
f4 = figure('Visible','off');
plot(avg_N, 'r', 'LineWidth', 4)
hold on
plot(avg_B, 'b--', 'LineWidth', 4)
plot(avg_A, 'g', 'LineWidth', 4)
legend('Full genome', 'B segment', 'A segment','FontSize', 24)
axis([0 200 0 25])
grid minor
set(gca,'FontSize',24)

% Saving
fig_name1 = strcat('fig_avgN_M_', num2str(M), '_N_', num2str(N), '_A_',...
    num2str(A), '_B_', num2str(B), '_T_', num2str(T),...
    '_mu_', num2str(mu));
savefig(f1, [fig_name1 '.fig'])
%
fig_name2 = strcat('fig_avgB_M_', num2str(M), '_N_', num2str(N), '_A_',...
    num2str(A), '_B_', num2str(B), '_T_', num2str(T),...
    '_mu_', num2str(mu));
savefig(f2, [fig_name2 '.fig'])
%
fig_name3 = strcat('fig_avgA_M_', num2str(M), '_N_', num2str(N), '_A_',...
    num2str(A), '_B_', num2str(B), '_T_', num2str(T),...
    '_mu_', num2str(mu));
savefig(f3, [fig_name3 '.fig'])
%
fig_name4 = strcat('fig_avg3_M_', num2str(M), '_N_', num2str(N), '_A_',...
    num2str(A), '_B_', num2str(B), '_T_', num2str(T),...
    '_mu_', num2str(mu));
savefig(f4, [fig_name4 '.fig'])