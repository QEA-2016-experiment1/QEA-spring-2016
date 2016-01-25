function implicit_2d()

    function res = implicit_func(x, y)
       
        res = x.^2 + x.*y + y.^2 - x - y - 1;
        
    end
    
    ezplot(@implicit_func);
    axis equal;

end

