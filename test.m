close all;
clear all;
clc;

t=1.4;%tolerance
sentence='';
rgb = imread('demo.png');
figure
hold on;
gray_image = rgb2gray(rgb);
imshow(gray_image);

[centers, radii] = imfindcircles(rgb,[4 12],'ObjectPolarity','dark','Sensitivity',0.9);
r=mean(radii);
h = viscircles(centers,radii);

n=size(centers,1);%number of circles
xx=repmat(centers(:,1)',n,1);
yy=repmat(centers(:,2)',n,1);
xx1=xx';
yy1=yy';
dist=sqrt((xx-xx1).^2+(yy-yy1).^2);

dist(~dist)=nan;
vs=min(min(dist));



rowend=0;
Centers=sort(centers);
while rowend<Centers(n,2)*0.95
%for zz=1:4 
%     display(rowend);
for ii=1:n
    if(Centers(ii,2)>rowend)
        ymin=Centers(ii,2);
%         display(ymin);
        break;
    end;
end


 row=[];
for(ii=1:n)   
    if( abs(centers(ii,2)-ymin)<=r/2 )
        row = [ row; centers(ii,:) ];
    end
end

row=sort(row);
start=[row(1,1) row(1,2)]; %first dot
[frame,character]=scan(start,vs,centers,r,t);
prev= [0 0 0 0];

for k=2:size(row,1)
     %display(prev);
     if(row(k,1)>prev(1,4)+r+t)    
        [prev,alphabet]= scan(row(k,:),vs,centers,r,t);
        character = strcat(character,alphabet);
     end
 end
%  display(character);
 sentence = strcat(sentence,character);
 
 rowend=frame(2)*t;
end
text_2_speech(sentence);
disp(sentence)