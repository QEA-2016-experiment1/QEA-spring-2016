function explicit_2d()

    function res = circle(x)
        res = [sqrt(1 - x.^2); -sqrt(1 - x.^2)]; % the eqn for a circle has
                                                 % the form
                                                 % y = +- sqrt(a^2 - x^2)
    end

    function res = parabola(x)
        res = x.^2 - 1;
    end

    function res = hyperbola(x)
        res = 1 ./ x;
    end

    X = linspace(-1, 1);
%     X = linspace(-5, 5); % for the hyperbola

    Y = circle(X);
%     Y = parabola(X);
%     Y = sin(X);
%     Y = hyperbola(X);

    plt_title = 'Plot of Circle';
%     plt_title = 'Plot of Parabola';
%     plt_title = 'Plot of Sin(x)';
%     plt_title = 'Plot of Hyperbola';
       
    plot(X, Y, 'Color', 'b');
    axis equal;
    xlabel('X');
    ylabel('Y');
    
    % Because hyperbolas have an asymptote (y = +-infinity) around x=0, it
    % screws with the axis limits, so here I'm just fixing the limits for
    % the hyperbola.
%     xlim([-5, 5])
    
    title(plt_title);

end

