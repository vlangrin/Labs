a = -1.25;
d = 2.5;
i = 5;
c = 0.05;
x = 1.35;

f = (sqrt((abs(c-d))+pow2((a+c),2)))/(sin(2*i));
g = pow2(10,-3)*exp(i*x);
k = (abs(c-d)+a*a)/(pow2((pow2(a+c,2)), 1/3));
y = f+g-k

mas = [a,d,i,c,x];
b = find(mas <0);
mas(b) = [];
newmas = length(mas);
mas2 = [newmas mas]
