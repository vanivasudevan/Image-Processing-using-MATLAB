% mesh in 3d view
A = zeros(32);
A(14:16,14:16) = ones(3);
F=abs(fft2(A));
mesh(F)

