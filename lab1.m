%% 1a

T=[3000,4000,5000];
for k = 1:3
    newfun = @(lambda)-planck(lambda,T(k));
    maximum(k)=fminbnd(newfun,0,6000,optimset('TolX',1e-10));
    b(k) = maximum(k)*T(k);
end

%% 1b
t = linspace(0,100);
fun = @(x)(5-x)*exp(x)-5;
%fplot(fun);
%solution will be around 5
fprime = @(x)-exp(x)*(x-4);
x = 5;
for k = 1:10
    x = x - fun(x)/fprime(x);
    
end
T = [3000,4000,5000];
h=6.6256e-34;
c=2.9979e8;
k=1.3805e-23;
lambda = (h*c)/(x*k*T(1));
lambda * T(1);

%% 1c
tic
x1 = 4e-7;
x2 = 7e-7;
sigma = 5,67e-8;

for T=100:10000
    newfun = @(lambda)planck(lambda,T);
    MS = integral(newfun,x1,x2);
    ME = sigma * T.^4;
    kvot(T) = MS./ME;
    
end
t = (100:10000);
kvot = kvot(100:10000);
plot(t,kvot);
A = max(kvot);
a= find(kvot == max(kvot(:)));
toc
%% 1d
sigma = 5.67e-8;
lowlim = 4e-7;
uplim = 7e-7;

for T = 100:10000
    newfun = @(lambda)planck(lambda,T);
    MS = integral(newfun,x1,x2);
    ME = sigma * T.^4;
    odefun = @(x,MS)planck(x,T);
    [x,y] = ode45(odefun,[lowlim uplim],0);
    final = y(end);
    kvot1d(T) = final./ME;
    
end
comp = linspace(100,10000,10000);
plot(comp,kvot1d)





