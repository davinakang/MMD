function [ randomposition] = position(w,r)
%RANDOM WALKS  
%   RANDOM WALKS
randomposition=zeros(w,(r+1));
for i=1:w,
    for j=2:(r+1),
        x=randi([0:1]);
        if x==0,
            temp=randomposition(i,j-1)-1;
        else
            temp=randomposition(i,j-1)+1;
        end;
        randomposition(i,j)=temp;
    end;
end;