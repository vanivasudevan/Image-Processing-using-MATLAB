% factorial of a number
clear
close all
n = input("Enter a number to find its factorial");
fn = fact(n);
fprintf('Factorial of %d is %d\n',n,fn);

function fn = fact(n)
f=1;
for i= 1 : n
	f=f*i;
end
fn = f;
end