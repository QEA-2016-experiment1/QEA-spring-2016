function explicit_3d()
    
    % equation for a hyperbolic paraboloid
    function Z = hyp_parab(x, y)
        Z = (x.^2 / 5 - y.^2 / 5) .* 5;
    end

    % equation for a unit cone
    function Z = cone(x, y)
        Z = sqrt(x.^2 + y.^2);
    end

    % equation for an elliptic paraboloid
    function Z = el_parab(x, y)
        Z = -5 * (x.^2 / 5 + y.^2 / 5);
    end

    X = linspace(-1, 1);
    Y = linspace(-1, 1);
    [X, Y] = meshgrid(X, Y);
    
    Z = hyp_parab(X, Y);
%     Z = cone(X, Y);
%     Z = el_parab(X, Y);
    
    plt_title = 'Surface for a hyperbolic paraboloid';
%     plt_title = 'Surface for a unit cone';
%     plt_title = 'Surface for a elliptic paraboloid';
   
    surf(X, Y, Z);
    shading interp;
    
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title(plt_title);

end

