%1 ex.
x = -2*pi:0.1*pi:2*pi;
f1 = sin(x)+exp(x);
f2 = sin(x)+pow2(x,2);
f3 = sin(x)+x;
plot(x,f1,x,f2,x,f3);

%2 ex.
x = -5:0.01:5;
f = ((3*x.*x)/(1+x.*x)).*(x<=0);
b = sqrt(1+(2*x/(exp(0.5*x)+x.*x))).*(x>0);
y = f+b;
figure
subplot(2,1,1)
plot(x,y,'-m.');
%for
for i = 1:length(x)
if (x<=0)
   f = ((3.*x.*x)/(1+x.*x));
else   
   b = sqrt(1+(2.*x/(exp(0.5.*x)+x.*x)));
end
end
subplot(2,1,2)
plot(x,f+b,'-b.');
