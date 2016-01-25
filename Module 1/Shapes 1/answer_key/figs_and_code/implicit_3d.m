function implicit_3d()
    
    % equation for an elliptical paraboloid
    function zero = el_parab(x, y, z)
        zero = x.^2 + y.^2 + z - 1;
    end

    % equation for a hyperboloid
    function zero = hyp_1(x, y, z)
        zero = x.^2 + y.^2 - z.^2 -1;
    end

    % equation for a hyperboloid
    function zero = hyp_2(x, y, z)
        zero = -x.^2 - y.^2 + z.^2 -1;
    end

    X = linspace(-2, 2, 20);
    Y = linspace(-2, 2, 20);
    Z = linspace(-2, 2, 20);
    [Y, X, Z] = ndgrid(Y, X, Z);
    
    V = el_parab(X, Y, Z);
    V = hyp_1(X, Y, Z);
    V = hyp_2(X, Y, Z);
    
    plt_title = 'Implicit 3D surface plot of elliptical paraboloid';
    plt_title = 'Implicit 3D surface plot of hyperboloid 1';
    plt_title = 'Implicit 3D surface plot of hyperboloid 2';
    
    p = patch(isosurface(X, Y, Z, V, 0));
    isonormals(X, Y, Z, V, p);
    
    set(p,'FaceColor','b','EdgeColor','k','FaceAlpha',0.1); % ou 'EdgeColor','none'
    daspect([1 1 1])
    axis square;
    grid on;
    camlight;
    lighting gouraud;
    
    view(-19, 18);
    
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title(plt_title);

end

