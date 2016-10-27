# psf-to-matrix

This is a matlab function to get a system matrix from 3D system function. Let, A be a volume and B be another volume which represents the system. We want to calculate convolution of A and B. In matlab we can do this by using "convn" function. But , we cannot vectorized as we can do with 2D system function in matlab. psf2mtx function is going to do that for us. 

So, lets , C = convn(A,B,'valid') 
Using psf2mtx function we can vectorized this equation. So, 

y=psf2mtx(B,length(A))*A(:) 

And we will see y=c(:)

Remember, this version only works on qubic A and B.

