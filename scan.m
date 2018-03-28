function [frame,character]=scan(start,vs,centers,r,t)
    if(dotcheck(start(1)-vs,start(2)+vs,r,centers))
      %   display('right column');
         a=0;
         b=1;
         c=1;
         d=dotcheck(start(1),start(2)+vs,r,centers);
         e=dotcheck(start(1)-vs,start(2)+2*vs,r,centers);
         f=dotcheck(start(1),start(2)+2*vs,r,centers);
        dot(1,:)=dotcode(a,b,c,d,e,f);
    v1=start(1)-vs;
    v2=start(1);
    h1=start(2);
    h2=start(2)+2*vs;
        character=getchar(dot);
%         text_2_speech(character)
        %array=strcat(array,character)
        %display(character);
     else
     %    display('left column');
         a=1;
         b=dotcheck(start(1)+vs,start(2),r,centers);
         c=dotcheck(start(1),start(2)+vs,r,centers);
         d=dotcheck(start(1)+vs,start(2)+vs,r,centers);
         e=dotcheck(start(1),start(2)+2*vs,r,centers);
         f=dotcheck(start(1)+vs,start(2)+2*vs,r,centers);
         dot(1,:)=dotcode(a,b,c,d,e,f);
    v1=start(1);
    v2=start(1)+vs;
    h1=start(2);
    h2=start(2)+2*vs;
      character= getchar(dot);
      %array=strcat(array,character)
      %text_2_speech(character)
   
    end

  dim=[v1-r*t h1-r*t v2-v1+2*r*t 2*(v2-v1+2*r*t-4*t)];
%dim=[v1-r*t h1-r*t v2-v1+2*r*t 2*(h2-h1+2*r*t)];

rectangle('Position',dim);
   frame=[h1 h2 v1 v2];
end