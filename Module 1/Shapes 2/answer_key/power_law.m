function power_law()
    
    d = logspace(-2, 4);
    figure;
    
    for n=[1, 10, 100]
        area = nthroot(d, n) .* (d - d / (n + 1));
        loglog(d, area);
        hold on;
    end
    
    legend('n=1', 'n=10', 'n=100')
    xlabel('d');
    ylabel('area');

end

