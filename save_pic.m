function save_pic(B, N, T)
saveas(gcf,['figs_fn/trans_B_' num2str(B) '_N_' num2str(N) '_T_' num2str(T)...
    '.fig']);

saveas(gcf,['figs_fn/trans_B_' num2str(B) '_N_' num2str(N) '_T_' num2str(T)...
    '.eps']);
end