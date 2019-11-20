%1
str4 = 'Time= 0.0 0.1 0.2 0.3 0.4 0.5 0.6';
str22 = '10 20 40 50 12 19 21 32 44';
str33 = '-1 -2 -3 -4 32';
str444 = '10';

str2 = strrep(str4,' ','');
e = length(str2)

%2
strnew1 = [str4(31:33), str4(6:30), str4(1:5)]

%3
str = strrep(str4,'1','один');
str = strrep(str,'2','два');
str = strrep(str,'3','три');
str = strrep(str,'4','четыре');
str = strrep(str,'5','пять');
str = strrep(str,'6','шесть');
str = strrep(str,'7','семь');
str = strrep(str,'8','восемь');
str = strrep(str,'9','девять');
str = strrep(str,'0','ноль')

%4
exp = regexp(str4,'[0-9]');
mas = str2num(str4(exp)')'

%5
f=fopen('C:\Users\vlangrin\Desktop\in4v.txt', 'wt');
fprintf(f,[str4 '\n']);
fprintf(f,[str22 '\n']);
fprintf(f,[str33 '\n']);
fprintf(f,[str444 '\n']);
fclose(f);

%6
f = fopen('C:\Users\vlangrin\Desktop\in4v.txt');
S = fscanf(f,'%s',[1,8])
D = fscanf(f,'%d',[1,9])
K = fscanf(f,'%d',[1,5])
Q = fscanf(f,'%d',[1,1])
fclose(f);

%7
clear
close all
clc

tic 

File1NameExp='lab3_4';
PictHigh1='200'; 
DirName1=['C:/' File1NameExp];

if ~exist(DirName1)
 mkdir(DirName1);
end;
cd(DirName1);

FileHtml=fopen('C:/lab3_4.html','wt');

 fprintf(FileHtml,['<HTML>\n']);
 fprintf(FileHtml,['<head>\n']);
 fprintf(FileHtml,['<title>Отчет по лабораторной работе \n']);
 fprintf(FileHtml,['</title>\n']);
 fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n']); 
 fprintf(FileHtml,['</head>\n']);
 fprintf(FileHtml,['<body>\n']);

 fprintf(FileHtml,['<center><H3>Отчёт<br>по лабораторной работе</h3><center>\n']); 

 n1=1;
 n2=2;
 fprintf(FileHtml,['<h3>Исходные данные</h3>\n']);
 fprintf(FileHtml,'<br>%-5.0f%-5.0f\n',n1,n2);

h1=figure('Name','Модельное изображение (исходное Image0) im3d'); 
hold on 
x=1:0.01:5; 
for beta=-0.5:0.01:0.5 
y=sin(3*x); 
plot(x,y) 
end 
hold off 

FileName000=[File1NameExp '_1.jpg'];
saveas(h1,FileName000);

 fprintf(FileHtml,['<br><br> Графики \n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['</a>\n']);
 fprintf(FileHtml,['</body>\n']);
 fprintf(FileHtml,['</HTML>\n']);
 fclose(FileHtml);
disp('Вычисления завершены');
toc 
