function [algorithm, algo_info] = load_algorithms()
    algorithm = struct('name',{},'source', {},'func',{});
    % func : set all func as res = func(data, para);

    
    algorithm(1).name = 'KM';
    algorithm(1).source = 'MATLAB';
    algorithm(1).func = 'script_k_means';

    algorithm(2).name = 'KMD';
    algorithm(2).source = 'MATLAB';
    algorithm(2).func = 'script_k_meadois';

    algorithm(3).name = 'HC';
    algorithm(3).source = 'MATLAB';
    algorithm(3).func = 'script_hierarchical_clustering';
    
    algorithm(4).name = 'GMM';
    algorithm(4).source = 'MATLAB';
    algorithm(4).func = 'script_gmm';
    
    algorithm(5).name = 'DBSCAN';
    algorithm(5).source = 'MATLAB';
    algorithm(5).func = 'script_dbscan';
    
    algorithm(6).name = 'SC';
    algorithm(6).source = 'Mine';
    algorithm(6).func = 'script_spectral_clustering';
    
    Algorithm = {algorithm.name}';
    source = char({algorithm.source}');
    algo_info = table(Algorithm, source);

end