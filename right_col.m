function [dot]= right_col()
     a=0;
     b=1;
     c=1;
     d=dotcheck(start(1),start(2)+vs,r,centers);
     e=dotcheck(start(1)-vs,start(2)+2*vs,r,centers);
     f=dotcheck(start(1),start(2)+2*vs,r,centers);
    dot(1,:)=dotcode(a,b,c,d,e,f);
end