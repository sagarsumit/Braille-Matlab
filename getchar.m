function [character]=getchar(dot)

if (dot==[1 0 0 0 0 0]) character='A';
elseif (dot==[1 0 1 0 0 0]) character='B';
elseif (dot==[1 1 0 0 0 0]) character='C';
elseif (dot==[1 1 0 1 0 0]) character='D';
elseif (dot==[1 0 0 1 0 0]) character='E';
elseif (dot==[1 1 1 0 0 0]) character='F';
elseif (dot==[1 1 1 1 0 0]) character='G';
elseif (dot==[1 0 1 1 0 0]) character='H';
elseif (dot==[0 1 1 0 0 0]) [character]='I';
elseif (dot==[0 1 1 1 0 0]) character='J';
elseif (dot==[1 0 0 0 1 0]) [character]='K';
elseif (dot==[1 0 1 0 1 0]) character='L';
elseif (dot==[1 1 0 0 1 0]) character='M';
elseif (dot==[1 1 0 1 1 0]) character='N';
elseif (dot==[1 0 0 1 1 0]) character='O';
elseif (dot==[1 1 1 0 1 0]) character='P';
elseif (dot==[1 1 1 1 1 0]) character='Q';
elseif (dot==[1 0 1 1 1 0]) character='R';
elseif (dot==[0 1 1 0 1 0]) character='S';
elseif (dot==[0 1 1 1 1 0]) character='T';
elseif (dot==[1 0 0 0 1 1 ]) character='U';
elseif (dot==[1 0 1 0 1 1]) character='V';
elseif (dot==[0 1 1 1 0 1]) character='W';
elseif (dot==[1 1 0 0 1 1]) character='X';
elseif (dot==[1 1 0 1 1 1]) character='Y';
elseif (dot==[1 0 0 1 1 1]) character='Z';
else character=' ';
end