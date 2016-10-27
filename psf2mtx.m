function A=psf2mtx(h3,length)


l1=length;
l2=length;
l3=length;
[m n p]=size(h3);


foul=convmtx2(h3(:,:,1),[l1-m+1 l2-n+1]);
foul=foul';
[foul1 foul2]=size(foul);
size(foul);



H=zeros(foul1,foul2,p);



for i=1:p
    ha=convmtx2(h3(:,:,i),[l1-m+1 l2-n+1]);
    H(:,:,i)=ha';
end
O=zeros(size(H(:,:,1)));
size(O);



HHF=zeros((l1-m+1)*(l2-n+1),l1*l2*l3,(l3-p+1));
size(HHF)
for j=1:(l3-p+1)
    HH=[];
    for jj=1:l3
        if(jj<j)
            
    HH=[HH O];
        elseif (j<=jj && jj<j+p)
             
            HH=[HH H(:,:,(jj-j+1))];
           
        else
            HH=[HH O];
        end
    end
    size(HH);
 HHF(:,:,j)=HH;   
end

A=[];
for an=1:(l3-p+1)
    A=[A
        HHF(:,:,an)];
end
   A=(A);



end



