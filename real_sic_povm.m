function mat =  real_sic_povm(dim)
    i_matrix = ones(dim,dim);
    angle = acos(sqrt(1/(dim+1)));
    for x = 1:dim;
        i_matrix(x,x) = 0;
    end
     % constructing the linearly indep. lines
    
    for y = 2:dim;      
        for z = 1:y-1;
            tmp = grSc(i_matrix(z,:),i_matrix(y,:),angle);
            i_matrix(z,:) = tmp(1,:);
            i_matrix(y,:) = tmp(2,:);
        end 
    end
    mat = i_matrix;
end