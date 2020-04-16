function points = distans(x)
totdist = 0;
[n,~]=size(x);
for i =1:n
    for k=1:n
        totdist = totdist + norm(x(i,:)-x(k,:));
        
    end
end
points = -totdist;
end

