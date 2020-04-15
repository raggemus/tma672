function bivfunillkor = biv(x)
c = [];
[~,n] = size(x);
ceq = zeros(1,n);
for i=1:n
    ceq(i) = norm(x(i,:))-1;
    %bivfunvillkor(i) = ceq;
end
%bivfunillkor = ceq;
%bivfunillkor = ceq;
end


