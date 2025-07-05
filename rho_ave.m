function out = rho_ave(rho11,rho12,rho13,rho22,rho23,rho33)
n11=length(rho11);
n12=length(rho12);
n13=length(rho13);
n22=length(rho22);
n23=length(rho23);
n33=length(rho33);
for i=1:n11

A=[rho11(i) rho12(i) rho13(i);
   rho12(i) rho22(i) rho23(i);
   rho13(i) rho23(i) rho33(i)];
[~,D]=eig(A);
out(i)=1/3*(D(1,1)+D(2,2)+D(3,3));
end
end