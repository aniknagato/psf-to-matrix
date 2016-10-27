%this is simple matlab program demostrating the use of psf2mtx function.

%system is a 3X3 matrix
system(:,:,1)=eye(3);
system(:,:,2)=eye(3);
system(:,:,3)=eye(3);

%signal is a 5X5 matrix
signal(:,:,1)=eye(5);
signal(:,:,2)=eye(5);
signal(:,:,3)=eye(5);
signal(:,:,4)=eye(5);
signal(:,:,5)=eye(5);


%as the length of signal matrix is 5
sys_matrix=psf2mtx(system,5);

x=signal(:);

y=sys_matrix*x;

y2=convn(signal,system,'valid');
ylist=y2(:);

% this will produce a column matrix of zeros.
y-ylist
