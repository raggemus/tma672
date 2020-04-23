X = lab2ab(3,6);
A = X'*X;
a = zeros(1,size(A,2)); %temp
b = zeros(1,size(A,2)); %alp
for i = 1:size(A,2)
    for j = 1:size(A,2)
        if i ~= j
             a(i) = a(i) + abs(A(i,j));
        end
        b(i) = (abs(A(i,i))-a(i))/abs(A(i,i));
    end
end
alpha =  min(b);
%e
I = eye(size(X,2));
y = X(1,:);
z = [1 0 0];
v = zeros(1,3);
v = (y-z)/alpha;
v = v/norm(v);
H = I - 2*v'*v;
Anew = X*H;
p1 = Anew(5,:);
p2 = [0 0 1];
theta = atan2d(norm(cross(p1,p2)),dot(p1,p2));
rot = rotx(-theta); 
Anew1 = Anew*rot


