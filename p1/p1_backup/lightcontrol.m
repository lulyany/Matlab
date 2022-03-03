function lightcontrol(w,g,o,r)
    timecycle=g+o+r+o;
    for time=0:1:timecycle
        if time<=r
            status(1,w,g,o,r,time);
        elseif time<=(r+o) & time>r
            status(2,w,g,o,r,time);
        elseif time<=(r+o+g) & time>r+o
            status(3,w,g,o,r,time);
        elseif time<=(r+o+g+o) & time>r+o+g
            status(2,w,g,o,r,time);
        else time=0;
        end
        pause(1);
    end
end
            
        