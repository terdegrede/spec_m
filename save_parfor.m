function save_parfor(M, N, B, T, mu, P)
    
save(['data_fn/M_' num2str(M) '_N_' num2str(N) '_B_' num2str(B)...
             '_T_' num2str(T) '_mu_' num2str(mu) '.mat']...
            ,'P', 'T', 'mu')
end