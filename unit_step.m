clc;
clear all;
close all;

%x = 1:10;
%y = 2*x;
%stem(x,y,'r');

function ustep(n)

for j = 1:(n*2)
    x(j) = 0;
end
for k = 1:(n*2)
    y(k) = 0;
end

j = 1;
k = 1;

for i =-n:1:n
    x(j) = i;
    if(i >= 0)
       y(k) = 1;
    end
    %stem(x(j),y(k),'r');
    j = j + 1;
    k = k + 1;
end
stem(x,y,'r');
  
endfunction

samples = input('Enter the number of required samples: ');
ustep(samples);
