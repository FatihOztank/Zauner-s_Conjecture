function test(q)
    % test method takes a matrix as set of vectors and returns a
    % matrix which has inner products between all pairs of vectors inside
    % ex. tmp(1,2) = inner product between first and second vector.
    tmp = zeros(size(q));
    for i = 1:length(q(1,:));
        for j = 1:length(q(1,:));
            tmp(i,j) = dot(q(i,:),q(j,:))/(norm(q(i,:))*norm(q(j,:)));
        end
    end
    tmp
end