function [dot]= dotcheck(x,y,r,centers)
n=size(centers,1);
xx=repmat(centers(:,1)',n,1);
yy=repmat(centers(:,2)',n,1);
xx1=xx';
yy1=yy';
xx=x;
yy=y;
dist=sqrt((xx-xx1).^2+(yy-yy1).^2);
dist(~dist)=nan;
dot=false;
    for (ii=1:size(dist))
        if(dist(ii)<=r*1.5)dot=true;
        end
    end

end