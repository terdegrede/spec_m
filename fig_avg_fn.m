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

%
f1 = figure('Visible','off');
plot(avg_N, 'r', 'LineWidth', 4)
hold on
plot(avg_B, 'b--', 'LineWidth', 4)
plot(avg_A, 'k', 'LineWidth', 4)
legend('Full genome', 'B segment', 'A segment','FontSize', 24)
axis([0 200 0 25])
grid minor
set(gca,'FontSize',24)
saveas(f1, ['fig_M_' num2str(M) '_N_' num2str(N) '_A_' num2str(A)... 
    '_B_' num2str(B) '_T_' num2str(T) '_mu_' num2str(mu)], 'fig')