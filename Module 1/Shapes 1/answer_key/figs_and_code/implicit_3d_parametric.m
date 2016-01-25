% For our implicit 3d graph, we will plot a hyperboloid of one sheet,
% exactly the same as the second shape we did in implicit_3d.m. It is
% defined by the equation x^2 + y^2 - z^2 = 1. It can be shown that this
% shape can be parameterized as x = sqrt(1 + s^2) * cos(t)
% y = sqrt(1 + s^2) * sin(t), z = u.
function implicit_3d_parametric()
    
    % parametric eqns for a hyperboloid
    syms s t
    x = sqrt(1 + s^2) * cos(t);
    y = sqrt(1 + s^2) * sin(t);
    z = s;
    
    ezsurf(x, y, z, [-1, 1, 0, 2*pi]);
    
    shading interp;
    
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Hyperboloid graphed parametrically');

end

