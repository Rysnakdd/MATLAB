clear
clc

A=genArray('A');
p=0;
m=0;
for i = 1 : length(A)
      if A(i)==0
             fprintf('A[%d] = 0\n\n',i);
         elseif A(i)<0
             m=(m+1);
         else 
             p=(p+1);
      end
end
if m<=p
    disp('1');
else
    disp ('0');
end
function array = genArray(x)

   fprintf('Потрібно створити масив A:\n');
    n = input('Вкажість розмір масива = ');
    fprintf('Задайте елементи масива A:\n');
    array = zeros(1,n);
   for i = 1 : n
      array(i) = input(sprintf('A[%d] = ', i));
    
   end
   disp('Отримано такий масив:');
   fprintf('%s = \n\n',x);
   disp(array);
end
    
