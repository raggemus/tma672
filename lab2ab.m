function main=lab2ab(mdimension,npunkt)
x0 = 0;
A = [];
b = [];
Aeq = [];
beq = [];
lb = -1;
ub = 1;
OPT = optimoptions('fmincon','Algorithm','Interior-point');
x = zeros(npunkt,mdimension)

X = fmincon(@(x)distans,x0,A,b,Aeq,beq,lb,ub,@(x)biv,OPT);

end




%% comments 
% %objectfunktion = summan av alla avst�nd mellan punkterna (det vi ska
% %maximera)
% %bivfunfunillkor = punkter m�ste ligga p� randen till sf�ren
% % n= 6;
% % m = 3;
% % for i=1:n
% %     M = zeros(n,m);
% %     point(i) = normrnd(0,1,[1 n]);
% %     point(i)/norm(point(i))
% %     M(i,:) = point(i);
% %     for k=1:n
% %         distance(k) = norm(M(i,:) - M(k,:));
% %     
% %     end
% %     
% %     
% % end
% % sum(distance);
% 
% 
% f = @(x,y,z)(x.^2+y.^2+z.^2); %def fun
% FUN = @(X)f(X(1),X(2),X(3)); %funktion som ska maximeras
% X0 = zeros(3,6)%[0,0,0]; %start
% A = []; B = []; Aeq = []; Beq= []; %linj�rt
% LB = -1; %enhetssf�r
% UB = 1;
% NONLCON = @(X) deal([],X(1).^2+X(2).^2+X(3).^2-1);
% OPTIONS = optimoptions('fmincon','Algorithm','Interior-point');
% dist = zeros(6);
% % for i=1:6
% %     
% % dist(i) =sum( fmincon(FUN,X0,A,B,Aeq,Beq,LB,UB,NONLCON,OPTIONS));
% % end
% 
% 
% 
% 
% 
% 
% 



