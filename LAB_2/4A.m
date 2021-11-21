clear
clc

A=genArray('A');
p=0;
d=1;
num = 1;

%Знаходимо кількість додатных чисел
for i = 1 : length(A)
      if A(i)>0
           p=(p+1);
      end
end

%Знаходимо найменше за модулем число
for i = 2 : length(A)
    if abs(A(i)) < abs(A(num))
        num = i;
    end
end
%Знаходимо добуток елементів до мінімального за модулем числа
for i=1 : num-1
    d=d*A(i);
end


fprintf('Кількість додатніх елементів - %d\n',p);
fprintf('Добуток елементів масиву розташованих до мінімального за модулем числа  = %d\n',d);

function array = genArray(x)

   fprintf('Потрібно створити масив A:\n');
    n = input('Вкажість розмір масива = ');
    fprintf('Задайте елементи масива A:\n');
    array = zeros(1,n);
   for i = 1 : n
      array(i) = input(sprintf('A[%d] = ', i));
    
   end
    fprintf('Отримано такий масив:\n\n%s = ',x);
   disp(array);
end
    