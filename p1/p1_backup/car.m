function car(direction,w,time)
    hold on;
    if direction == 'levelup'
        x=5*w;y=w/4;wide=w;high=w/2;
        if (x-time*(2*w))>=(-5*w)
            rectangle('Position',[(x-time*(2*w)),y,wide,high,],'FaceColor','red');    
        end
    end
end