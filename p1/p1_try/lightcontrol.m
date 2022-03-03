function lightcontrol()
    global w g r o s time;
    timecycle=g+o+r+o;
    time=0;
    while (time>=0)&(time<=2*timecycle)
        if time<=r
            s=1;status();
        elseif time<=(r+o) & time>r
            s=2;status();
        elseif time<=(r+o+g) & time>r+o
            s=3;status();
        elseif time<=(r+o+g+o) & time>r+o+g
            s=2;status();
        else time=0;
        end
        time=time+1;
    end
end
            
        