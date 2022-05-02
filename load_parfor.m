function P = load_parfor(M, N, B, mu, tmp)
    
load(['data_fn/M_' num2str(M) '_N_' num2str(N) '_A_' num2str(A)...
    '_B_' num2str(B) '_T_' num2str(tmp) '_mu_' num2str(mu) '.mat']...
     ,'P')

end