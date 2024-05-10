function image=average_custom(img)
image=zeros(480,640);
    for i=2:479
        for j=2:639
            if(img(i,j)==0)
                if(img(i,j+1)~=0 && img(i,j-1)~=0 && img(i-1,j)~=0 && img(i+1,j)~=0);
                    image(i,j)=(img(i,j+1)+img(i,j-1)+img(i-1,j)+img(i+1,j))/4;
                end
            end
        end
    end
end