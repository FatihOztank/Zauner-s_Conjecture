function mat = grSc(vector1, vector2, angle)
    mat = zeros(2,length(vector1)); 
    u_1 = vector1/norm(vector1);
    y_2 = vector2 - dot(vector2,u_1)*u_1 + norm(cot(angle)*(vector2 - dot(vector2,u_1)*u_1))*u_1;
    mat(1,:) = u_1;
    mat(2,:) = y_2/norm(y_2);
end
