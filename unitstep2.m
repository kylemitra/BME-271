function f = unitstep2(t_offset,T)
    y = zeros(1,length(T));
    
    for n = 1:length(T)
        if T(n)>=-1*t_offset
            y(n)=1;
        end
    end
end
