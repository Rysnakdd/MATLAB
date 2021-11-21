clear
clc

a=input('Введіть перше число:');
b=input('Введіть друге число:');

d1=a+b;
d2=floor(a/b);
d3=a-b;

fprintf('Сума чисел = %d\n',d1);
fprintf('Ціла частина ділення 1-го на 2-е = %d\n',d2);
fprintf('Різниця чисел = %d\n',d3);
