clear
clc

A= genMat('A');
B= genMat('B');

C = [1 4 1 1; 2 6 1 7; 2 8 3 6; 1 4 1 2];

disp('Матриці A, B та С мають такий вигляд:');
A
B
C
fprintf('Визначник A: %g\n', det(A));
fprintf('Визначник B: %g\n', det(B));
fprintf('Визначник C: %g\n', det(C));

%Функція для створення матриць
function mat = genMat(x)

            fprintf('Потрібно створити матрицю %s:\n', x);
            n = input('Вкажість розмір матриці = ');

            fprintf('Задайте елементи матриці %s:\n', x);
            mat = zeros(n);
            for i = 1 : n
                for j = 1 : n
                            mat(i,j) = input(sprintf('%s[%d][%d] = ', x, i,j));
                end
            end
            
            disp('Отримано таку матрицю:');
            fprintf('%s = \n\n',x);
            disp(mat);
end
