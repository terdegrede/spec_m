function save_grph(B,N,T)

saveas(gcf,['figs_fn/nwork_B_' num2str(B) '_N_' num2str(N) '_T_' num2str(T)...
    '.fig']);
saveas(gcf,['figs_fn/nwork_B_' num2str(B) '_N_' num2str(N) '_T_' num2str(T)...
    '.eps']);

end