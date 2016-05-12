function out = area_th(y,th,dx,alp)
n=length(y);
sp=zeros(n,1);
sn=zeros(n,1);
ip=find(y>th);
sp(ip)=exp(alp*abs(y(ip)))-exp(alp*abs(th));
area_p=sum(sp)*dx;
in=find(y<-th);
sn(in)=exp(alp*abs(y(in)))-exp(alp*abs(th));
area_n=sum(sn)*dx;
out =(area_p - area_n);