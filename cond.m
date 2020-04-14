function bivillkor = cond(x)
c = [];
%[~,n] = size(x);
ceq = zeros(1,n);
for i=1:n
    ceq(i) = norm(x(:,i))-1;
end
end


